<!-- Draft for Hacker News Show HN (submit from Francesco's account).
     Best paired with the dev.to/blog post already live. Keep the first comment ready. -->

**Title:** Show HN: We A/B tested agent skills – same prompt, with and without them

**URL:** https://github.com/openapi/openapi-skills

**First comment (post immediately after submitting):**

Hi HN, I work at Openapi, an Italian API marketplace (company registries, KYC, e-invoicing, e-signatures).

We packaged our platform knowledge as agent skills (the SKILL.md format that Claude Code, Codex and Cursor all read now). The interesting part isn't the skills themselves — it's the test harness we built to justify them. It runs the same prompt through two headless agents, one bare and one with skills installed, and diffs the outcome: 108s/13 turns/$0.75/2 paid API calls without skills vs 45s/9 turns/$0.38/1 paid call with them.

The skilled agent actually outperformed our own demo script: the skill mentions that the cheapest endpoint already returns province/region, so the agent skipped a second paid call we had assumed was needed.

Everything is MIT: the 11 skills, the knowledge base they're generated from (vendored OpenAPI specs + a distillation pipeline), and the A/B harness (test/run_comparison.sh) — the harness works for any skills repo, not just ours.

Happy to answer questions about the format, what we got wrong on the first iteration (skills that linked to internal docs instead of being self-contained), or the economics of agents consuming metered APIs.
