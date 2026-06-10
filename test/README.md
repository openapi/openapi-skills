# Test environment

A minimal environment proving that the **skills are usable by an agent** — not that the Openapi APIs work. The core test is an A/B comparison: the same prompt run by an agent *without* the skills and by an agent *with* them, so the difference the skills make is directly observable.

## 1. A/B usability comparison — `run_comparison.sh`

**Problem given to both agents** ([prompt.txt](prompt.txt)): "All we know about a supplier is its VAT number 12485671007 — find the company name, status, registered office, and the province/region of its ZIP, using the Openapi platform with the credentials in the environment."

The harness:

1. creates two throwaway workspaces under `test/results/<timestamp>/`:
   - **bare** — empty folder, no skills
   - **skilled** — identical, but with `skills/` installed as project skills (`.claude/skills/`)
2. runs `claude -p` headless with the same prompt and the same allowed tools in both
3. saves both transcripts and prints a comparison table: wall time, turns, cost, and whether a `SOLUTION` block was produced

```bash
export OPENAPI_EMAIL=you@example.com
export OPENAPI_KEY=...
bash test/run_comparison.sh
```

What to look for in the transcripts: the *bare* agent has to discover authentication (Basic vs Bearer, the scope format `METHOD:host/path`), guess endpoint names, and typically burns turns on 401/404s. The *skilled* agent reads `openapi-auth`, `openapi-company`, `openapi-geo` and goes straight to: scoped token → `IT-start/{vat}` → `cap/{zip}` → solution.

Notes: both agents make real (cheap, but paid) API calls; results land in `test/results/` which is git-ignored.

## 2. Static validation — `validate_skills.sh`

Sanity lint for every `skills/*/SKILL.md` — no credentials needed, exits non-zero on violations:

- frontmatter present with `name` (matching the folder) and `description` (≤ 1024 chars)
- no references to `knowledge/` (skills must be self-contained — see repo README)
- mentions `openapi-auth` for authentication

```bash
bash test/validate_skills.sh
```
