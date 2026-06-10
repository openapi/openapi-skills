#!/usr/bin/env bash
# Static validation: every skill is well-formed and respects the
# knowledge/skills separation rule documented in the repo README.
set -u

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SKILLS_DIR="$REPO_DIR/skills"
errors=0

fail() { echo "  FAIL: $1"; errors=$((errors + 1)); }

for skill_md in "$SKILLS_DIR"/*/SKILL.md; do
    dir_name="$(basename "$(dirname "$skill_md")")"
    echo "Checking $dir_name"

    head -1 "$skill_md" | grep -q '^---$' || fail "file must start with '---' (YAML frontmatter)"

    frontmatter="$(awk '/^---$/{n++; next} n==1{print} n>1{exit}' "$skill_md")"

    name="$(echo "$frontmatter" | sed -n 's/^name:[[:space:]]*//p')"
    [ -n "$name" ] || fail "frontmatter is missing 'name'"
    [ "$name" = "$dir_name" ] || fail "frontmatter name '$name' does not match folder '$dir_name'"

    description="$(echo "$frontmatter" | sed -n 's/^description:[[:space:]]*//p')"
    [ -n "$description" ] || fail "frontmatter is missing 'description'"
    [ "${#description}" -le 1024 ] || fail "description exceeds 1024 characters"

    if grep -qn 'knowledge/' "$skill_md"; then
        fail "skill references knowledge/ — skills must be self-contained (see README)"
    fi

    grep -q 'openapi-auth' "$skill_md" || [ "$dir_name" = "openapi-auth" ] \
        || fail "skill does not mention the openapi-auth skill for authentication"
done

echo
if [ "$errors" -eq 0 ]; then
    echo "OK: all skills are valid."
else
    echo "$errors problem(s) found."
    exit 1
fi