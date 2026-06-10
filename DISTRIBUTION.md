# Distribution

Tracking document for the distribution of this skills repository across the web: skill registries, marketplaces, awesome lists, directories and announcement channels.

**Install command to promote everywhere:**

```bash
npx skills add openapi/openapi-skills
```

**Status legend:** `todo` (not yet submitted) · `submitted` (PR/form sent, awaiting review) · `listed` (live) · `rejected` (refused, see notes) · `n/a` (decided to skip)

---

## 1. Skill registries & install ecosystems

The highest-value targets: users install directly from here.

| Channel | URL | How to get listed | Status | Date | Notes |
|---|---|---|---|---|---|
| Skills.sh (Vercel) | https://www.skills.sh/ | Indexed from public GitHub repos with `skills/*/SKILL.md`; installs counted via `npx skills add openapi/openapi-skills`. Verify the repo appears in search | submitted | 2026-06-10 | Install command verified working (11 skills detected, installs to 19+ agents); first install registered. Re-check search indexing in a few days |
| SkillX | https://github.com/nextlevelbuilder/skillx | Marketplace with semantic search/ratings; submit per their CLI/registry flow | todo | | |
| Skills Directory | https://www.skillsdirectory.com/ | **Manual web form** at https://www.skillsdirectory.com/submit (reviewed before publishing) | todo | | Security-vetted listing is good trust signal for a B2B brand. Form is client-side — needs a human, ~2 min |
| MCP Market — Skills section | https://mcpmarket.com/tools/skills | Submit skill/tool via their form | todo | | Same site can also list the Openapi MCP server |
| Claude Skills Hub | https://claudeskills.info/ | Submission/indexing of SKILL.md repos | todo | | 658+ skills indexed; site blocks automated fetch (403) — check submission path manually |
| AwesomeSkills.dev | https://www.awesomeskills.dev/en | **Manual web form** at https://www.awesomeskills.dev/en/submit — paste the GitHub URL, auto-detects everything, live instantly (no moderation) | todo | | Client-side React form, no public API — needs a human, ~30 s |
| LLMBase skills directory | https://llmbase.ai/skills/ | Submission form | todo | | |

## 2. Official Anthropic channels

| Channel | URL | How to get listed | Status | Date | Notes |
|---|---|---|---|---|---|
| Claude Code official plugin marketplace | https://github.com/anthropics/claude-plugins-official | Package the repo as a plugin (`.claude-plugin/plugin.json` + `skills/`) and use the plugin directory submission form (see https://code.claude.com/docs/en/plugins) | todo | 2026-06-10 | **Packaging done**: `.claude-plugin/plugin.json` + `marketplace.json`, `claude plugin validate` passes. Repo now works with `/plugin marketplace add openapi/openapi-skills`. Next: submission form |
| anthropics/skills (official examples repo) | https://github.com/anthropics/skills | PR if/where third-party skills are accepted | todo | | Check current contribution policy first |

## 3. Awesome lists (GitHub PRs)

Fork → add entry in the right section → PR. One PR per list, link `https://github.com/openapi/openapi-skills`.

| List | URL | Status | Date | Notes |
|---|---|---|---|---|
| VoltAgent/awesome-agent-skills | https://github.com/VoltAgent/awesome-agent-skills | todo | | **Deferred**: their CONTRIBUTING requires real community usage — "brand new skills are not accepted". Re-try once installs/stars accrue (≥1–2 months) |
| heilcheng/awesome-agent-skills | https://github.com/heilcheng/awesome-agent-skills | submitted | 2026-06-10 | PR [#276](https://github.com/heilcheng/awesome-agent-skills/pull/276): "Skills by Openapi" block under Business, Productivity & Marketing, with team-affiliation disclosure |
| ComposioHQ/awesome-claude-skills | https://github.com/ComposioHQ/awesome-claude-skills | n/a | 2026-06-10 | Hosts skills *inside* its own repo (folders, not links) — not a fit for linking an external collection |
| travisvn/awesome-claude-skills | https://github.com/travisvn/awesome-claude-skills | todo | | **At-risk**: strict "no SaaS wrappers / no promotion" policy for skills requiring the submitter's paid platform. If submitted, be transparent and target the "Collections & Libraries" section |
| hesreallyhim/awesome-claude-code | https://github.com/hesreallyhim/awesome-claude-code | todo | | General Claude Code list — skills section |
| ComposioHQ/awesome-claude-plugins | https://github.com/ComposioHQ/awesome-claude-plugins | todo | | If/when packaged as plugin |
| Chat2AnyLLM/awesome-claude-plugins | https://github.com/Chat2AnyLLM/awesome-claude-plugins | todo | | If/when packaged as plugin |

## 4. Plugin marketplaces & directories

| Channel | URL | How to get listed | Status | Date | Notes |
|---|---|---|---|---|---|
| claudemarketplaces.com | https://claudemarketplaces.com/ | Auto-indexes GitHub marketplaces/plugins; verify presence, submit if missing | todo | | |
| aitmpl.com (Claude Code Templates) | https://www.aitmpl.com/plugins/ | Contribution via their GitHub repo | todo | | |

## 5. GitHub discoverability

Free, do first — improves indexing by every crawler-based directory above.

| Action | Status | Date | Notes |
|---|---|---|---|
| Add repo topics (18: agent-skills, claude-skills, claude-code, skills, skill-md, openapi, api, rest-api, http-client, certified-api, api-marketplace, ai-agents, company-data, kyc, e-invoicing, digital-signature, geocoding, italy) | listed | 2026-06-10 | Done via `gh repo edit`, extended together with Francesco |
| Set repo description + website (https://openapi.com) | listed | 2026-06-10 | Done via `gh repo edit` |
| Tag a release (`v0.1.0`) | listed | 2026-06-10 | https://github.com/openapi/openapi-skills/releases/tag/v0.1.0 |
| Pin the repo on the `openapi` org profile | todo | | Needs org admin via web UI |

## 6. Adjacent: MCP registries (for openapi/mcp-server)

Not this repo, but the same audience: each MCP listing should cross-link the skills repo and vice versa.

| Channel | URL | Status | Date | Notes |
|---|---|---|---|---|
| Smithery | https://smithery.ai/ | todo | | |
| mcp.so | https://mcp.so/ | todo | | |
| Glama | https://glama.ai/mcp/servers | todo | | |
| PulseMCP | https://www.pulsemcp.com/ | todo | | |
| MCP Market | https://mcpmarket.com/ | todo | | Same site as the skills section above |

## 7. Openapi's own channels

| Channel | Action | Status | Date | Notes |
|---|---|---|---|---|
| openapi.com/blog | Announcement post with install instructions | todo | | Blog already covers MCP/AI topics |
| docs.openapi.com | "Agent skills" page linking the repo | todo | | |
| Console news sidebar (Flash news) | Announce skills availability | todo | | |
| Postman public workspace | Link the repo from the workspace overview | todo | | https://www.postman.com/openapi-com |
| YouTube (@openapi-com) | Short demo video (the A/B test in `test/` is a ready-made script) | todo | | |
| LinkedIn / Instagram / Facebook | Launch posts | todo | | |

## 8. Community announcements (one-shot)

| Channel | URL | Status | Date | Notes |
|---|---|---|---|---|
| Reddit r/ClaudeAI | https://www.reddit.com/r/ClaudeAI/ | todo | | |
| Reddit r/ClaudeCode | https://www.reddit.com/r/ClaudeCode/ | todo | | |
| Hacker News (Show HN) | https://news.ycombinator.com/ | todo | | Best paired with the blog post |
| dev.to / Hashnode | https://dev.to/ | todo | | Tutorial-style article |
| Product Hunt | https://www.producthunt.com/ | todo | | Optional, needs preparation |

---

## Maintenance

- When a submission is made, update its row: status, date, and the PR/listing URL in Notes.
- Re-check `listed` channels quarterly — directories prune dead or stale entries.
- New registries appear frequently in this ecosystem: when one is found, add a row here before submitting.

## Activity log

| Date | Action |
|---|---|
| 2026-06-10 | Repo metadata set: description, homepage, 7 topics (`gh repo edit`) |
| 2026-06-10 | Release v0.1.0 published with install instructions |
| 2026-06-10 | Verified `npx skills add openapi/openapi-skills`: 11 skills detected and installed correctly; first install registered with skills.sh telemetry (repo not yet in their search — re-check in a few days) |
| 2026-06-10 | Reviewed contribution policies of the 4 main awesome lists: VoltAgent deferred (maturity requirement), ComposioHQ n/a (in-repo skills), travisvn at-risk (no-promotion policy) |
| 2026-06-10 | PR [#276](https://github.com/heilcheng/awesome-agent-skills/pull/276) opened on heilcheng/awesome-agent-skills ("Skills by Openapi", 11 entries, affiliation disclosed) |
| 2026-06-10 | Repo polish: branded README header, Skills CI workflow (lint + zip bundles + release assets) — first run green |
| 2026-06-10 | Plugin packaging: `.claude-plugin/plugin.json` + `marketplace.json` added and validated (`claude plugin validate`) — repo installable via `/plugin marketplace add openapi/openapi-skills`; prerequisite for the official Anthropic marketplace done |
| 2026-06-10 | Probed submission paths: awesomeskills.dev (manual form, instant listing) and skillsdirectory.com (manual form, reviewed) — both client-side forms, flagged for 2-minute human submission; claudeskills.info blocks automated access (403) |
| 2026-06-10 | Topics extended to 18 (added skill-md, api-marketplace, kyc, company-data, e-invoicing, digital-signature, geocoding, italy) |
