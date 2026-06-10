#!/usr/bin/env bash
# A/B usability test for the skills.
#
# The same prompt (prompt.txt) is given to two headless Claude Code agents:
#   A. "bare"    — empty workspace, NO skills installed
#   B. "skilled" — identical workspace WITH skills/ installed as project skills
#
# What is being tested is NOT the Openapi APIs, but whether the skills let an
# agent attack the problem and drive it straight to the solution: compare the
# two transcripts (number of calls, wrong turns, time, correctness).
#
# Requirements: claude CLI, OPENAPI_EMAIL + OPENAPI_KEY in the environment.
set -u

TEST_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_DIR="$(dirname "$TEST_DIR")"
RUN_DIR="$TEST_DIR/results/$(date +%Y%m%d-%H%M%S)"
PROMPT="$(cat "$TEST_DIR/prompt.txt")"

command -v claude >/dev/null || { echo "ERROR: claude CLI not found"; exit 1; }
[ -n "${OPENAPI_EMAIL:-}" ] && [ -n "${OPENAPI_KEY:-${OPENAPI_API_KEY:-}}" ] \
    || { echo "ERROR: OPENAPI_EMAIL and OPENAPI_KEY must be set"; exit 1; }

mkdir -p "$RUN_DIR/bare" "$RUN_DIR/skilled/.claude"
cp -r "$REPO_DIR/skills" "$RUN_DIR/skilled/.claude/skills"

run_agent() { # $1 = variant dir name
    local variant="$1"
    echo "=== Running '$variant' agent (this may take a few minutes)..."
    ( cd "$RUN_DIR/$variant" && \
      /usr/bin/time -o ../"$variant".time -f '%e' \
      claude -p "$PROMPT" \
          --allowedTools "Bash,Read,Glob,Grep" \
          --output-format json \
          > ../"$variant".json 2> ../"$variant".err )
    jq -r '.result // "NO RESULT"' "$RUN_DIR/$variant.json" > "$RUN_DIR/$variant.answer.md"
}

run_agent bare
run_agent skilled

# ------------------------------------------------------------------ report
report() { # $1 = variant
    local v="$1" j="$RUN_DIR/$1.json"
    printf '%-10s | %8ss | %5s turns | $%-7s | solution: %s\n' \
        "$v" \
        "$(cat "$RUN_DIR/$v.time" 2>/dev/null || echo '?')" \
        "$(jq -r '.num_turns // "?"' "$j")" \
        "$(jq -r '.total_cost_usd // "?" | if type=="number" then (.*10000|round)/10000 else . end' "$j")" \
        "$(grep -q 'SOLUTION' "$RUN_DIR/$v.answer.md" && echo yes || echo NO)"
}

echo
echo "==================== COMPARISON ===================="
report bare
report skilled
echo "====================================================="
echo
echo "Full answers:"
echo "  $RUN_DIR/bare.answer.md"
echo "  $RUN_DIR/skilled.answer.md"
echo
echo "Compare them side by side, e.g.:"
echo "  diff -y --width 160 $RUN_DIR/bare.answer.md $RUN_DIR/skilled.answer.md"
