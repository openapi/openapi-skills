<!-- Draft for dev.to (publish from Francesco's/Openapi's account).
     Suggested tags: ai, claudecode, api, agentskills -->

# We measured what agent skills actually do: same task, half the time, half the cost

At [Openapi](https://openapi.com) we publish 400+ APIs (company data, KYC, e-invoicing, e-signatures…). Like everyone this year, we watched coding agents start consuming APIs directly. So we packaged our platform knowledge as **agent skills** — plain `SKILL.md` files — and, before announcing anything, we asked the obvious question: *do skills actually help, or does a good model figure it out anyway?*

## The experiment

Same prompt, two headless Claude Code agents:

> "All we know about a supplier is its VAT number: 12485671007. Find the company name, whether it's active, the registered office, and the province/region of its ZIP code. Credentials are in the environment. Be frugal: paid requests cost wallet credit."

- Agent **A** ran in an empty workspace.
- Agent **B** had our skills installed in `.claude/skills/`.

Both solved it. The difference was *how*:

| | time | turns | cost | paid API calls |
|---|---|---|---|---|
| without skills | 108.5s | 13 | $0.75 | 2 |
| **with skills** | **45.3s** | **9** | **$0.38** | **1** |

The bare agent had to discover our auth model (Basic auth mints scoped Bearer tokens) by trial and error. The skilled agent read the auth skill, minted a 1-hour token scoped to exactly two endpoints — and then did something we didn't script: it noticed in the company skill that the cheap `IT-start` endpoint already includes province and region, so it **skipped the second API call entirely**. The skill didn't just guide it; it let the agent be smarter about cost than our own demo script was.

The harness is in the repo (`test/run_comparison.sh`) — you can reproduce the comparison with your own account.

## What's inside

11 skills, one per domain: auth/tokens, company data (IT/EU/worldwide), official business documents, risk/KYC, data verification, geo/cadastre, SMS/PEC/postal mail, eIDAS e-signatures, e-invoicing via SDI, automotive, utilities. Each `SKILL.md` is self-contained: endpoints, async patterns, billing caveats, compliance warnings.

```bash
npx skills add openapi/openapi-skills
```

Works with Claude Code, Codex, Cursor, Gemini CLI and any SKILL.md-compatible agent. Also installable as a Claude Code plugin: `/plugin marketplace add openapi/openapi-skills`.

Repo: https://github.com/openapi/openapi-skills — feedback and issues welcome.
