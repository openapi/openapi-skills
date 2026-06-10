# Distribution

Tracking document for the distribution of this skills repository across the web: skill registries, marketplaces, awesome lists, directories and announcement channels.

**Install command to promote everywhere:**

```bash
npx skills add openapi/openapi-skills
```

**Status legend:** `todo` (not yet submitted) · `submitted` (PR/form sent, awaiting review) · `listed` (live) · `rejected` (refused, see notes) · `n/a` (decided to skip)

---

## ⚡ Pending manual actions (human required)

These cannot be automated (login, CAPTCHA, personal accounts). Ordered by value; tick and date them when done.

- [ ] **Anthropic community marketplace** — submit the plugin at https://claude.ai/settings/plugins/submit (or https://platform.claude.com/plugins/submit). Requires a Claude account; packaging is already validated (`claude plugin validate` ✓). ~5 min — *the highest-value listing*
- [ ] **awesomeskills.dev** — paste `https://github.com/openapi/openapi-skills` into https://www.awesomeskills.dev/en/submit. Instant listing, no moderation. ~30 s
- [ ] **skillsdirectory.com** — submit at https://www.skillsdirectory.com/submit (reviewed, includes security scan — good trust signal). ~2 min
- [ ] **Publish the announcements** from [`.github/distribution/announcements/`](.github/distribution/announcements/): dev.to/Openapi blog first, then Show HN and Reddit (not on the same day), LinkedIn anytime. ~15 min total — *this is what drives the installs that skills.sh ranks by*
- [ ] **Pin the repo** on the `openapi` org profile (github.com/openapi → Customize pins, needs org admin). ~30 s
- [ ] **MCP Market** (https://mcpmarket.com) and **LLMBase** (https://llmbase.ai/skills/) — both block automated access (429/403); submit manually if deemed relevant. ~5 min
- [ ] **awesome-claude-code recommendation** — fill the [web issue form](https://github.com/hesreallyhim/awesome-claude-code/issues/new?template=recommend-resource.yml) (human-only by their policy, CLI submissions banned). Tips: recommend a focused subset (e.g. `openapi-company` + the A/B harness as evidence), disclose affiliation, state clearly that skills call openapi.com network endpoints. ~10 min
- [ ] *(Optional)* Ping the maintainer of [heilcheng/awesome-agent-skills#276](https://github.com/heilcheng/awesome-agent-skills/pull/276) if the review stalls

---

## 1. Skill registries & install ecosystems

The highest-value targets: users install directly from here.

| Channel | URL | How to get listed | Status | Date | Notes |
|---|---|---|---|---|---|
| Skills.sh (Vercel) | https://www.skills.sh/ | Indexed from public GitHub repos with `skills/*/SKILL.md`; installs counted via `npx skills add openapi/openapi-skills`. Verify the repo appears in search | submitted | 2026-06-10 | Install command verified working (11 skills detected, installs to 19+ agents); first install registered. Re-check search indexing in a few days |
| SkillX | https://github.com/nextlevelbuilder/skillx | Unclear: the `skillx` npm CLI is a local skill-script runner, not a registry publisher; no submit path found in the repo | todo | 2026-06-10 | Low priority — revisit if the marketplace materializes |
| Skills Directory | https://www.skillsdirectory.com/ | **Manual web form** at https://www.skillsdirectory.com/submit (reviewed before publishing) | todo | | Security-vetted listing is good trust signal for a B2B brand. Form is client-side — needs a human, ~2 min |
| MCP Market — Skills section | https://mcpmarket.com/tools/skills | Submit skill/tool via their form | todo | 2026-06-10 | Rate-limits automated access (429) — manual submission needed |
| Claude Skills Hub | https://claudeskills.info/ | Submission/indexing of SKILL.md repos | todo | | 658+ skills indexed; site blocks automated fetch (403) — check submission path manually |
| AwesomeSkills.dev | https://www.awesomeskills.dev/en | **Manual web form** at https://www.awesomeskills.dev/en/submit — paste the GitHub URL, auto-detects everything, live instantly (no moderation) | todo | | Client-side React form, no public API — needs a human, ~30 s |
| LLMBase skills directory | https://llmbase.ai/skills/ | Submission form | todo | 2026-06-10 | Blocks automated access (403) — manual check needed |
| SkillsMP | https://skillsmp.com/ | **Passive**: auto-indexes public GitHub repos with SKILL.md (1.6M+ skills) — no submission form by design | submitted | 2026-06-10 | Nothing to do; repo is public with 11 SKILL.md files. Not indexed yet — re-check in 1–2 weeks |

## 2. Official Anthropic channels

| Channel | URL | How to get listed | Status | Date | Notes |
|---|---|---|---|---|---|
| Claude Code **community** marketplace | https://github.com/anthropics/claude-plugins-community | **Manual in-app form (login required)**: https://claude.ai/settings/plugins/submit or https://platform.claude.com/plugins/submit — review + automated safety screening; approved plugins pinned by commit SHA, catalog syncs nightly | todo | 2026-06-10 | **Packaging done & validated** (`claude plugin validate` ✓); repo already works with `/plugin marketplace add openapi/openapi-skills`. The form needs a human with a Claude account |
| Claude Code official plugin marketplace | https://github.com/anthropics/claude-plugins-official | Curated by Anthropic at its discretion — **no application process** (the submission form feeds the community marketplace only) | n/a | 2026-06-10 | Best path: get traction in the community marketplace first |
| anthropics/skills (official examples repo) | https://github.com/anthropics/skills | No CONTRIBUTING.md and no third-party contribution path in the README — it's Anthropic's own examples repo | n/a | 2026-06-10 | The community marketplace (row above) is the intended third-party channel |

## 3. Awesome lists (GitHub PRs)

Fork → add entry in the right section → PR. One PR per list, link `https://github.com/openapi/openapi-skills`.

| List | URL | Status | Date | Notes |
|---|---|---|---|---|
| VoltAgent/awesome-agent-skills | https://github.com/VoltAgent/awesome-agent-skills | todo | | **Deferred**: their CONTRIBUTING requires real community usage — "brand new skills are not accepted". Re-try once installs/stars accrue (≥1–2 months) |
| heilcheng/awesome-agent-skills | https://github.com/heilcheng/awesome-agent-skills | submitted | 2026-06-10 | PR [#276](https://github.com/heilcheng/awesome-agent-skills/pull/276): "Skills by Openapi" block under Business, Productivity & Marketing, with team-affiliation disclosure |
| ComposioHQ/awesome-claude-skills | https://github.com/ComposioHQ/awesome-claude-skills | n/a | 2026-06-10 | Hosts skills *inside* its own repo (folders, not links) — not a fit for linking an external collection |
| travisvn/awesome-claude-skills | https://github.com/travisvn/awesome-claude-skills | todo | | **At-risk**: strict "no SaaS wrappers / no promotion" policy for skills requiring the submitter's paid platform. If submitted, be transparent and target the "Collections & Libraries" section |
| hesreallyhim/awesome-claude-code | https://github.com/hesreallyhim/awesome-claude-code | todo | 2026-06-10 | **Human-only**: submissions exclusively via the [web issue form](https://github.com/hesreallyhim/awesome-claude-code/issues/new?template=recommend-resource.yml) — CLI/PR submissions are banned. They want evidence-based claims: link the A/B harness (`test/run_comparison.sh`) as reproducible proof, and per their guidelines recommend a *focused subset* (e.g. openapi-company), not the whole marketplace |
| ComposioHQ/awesome-claude-plugins | https://github.com/ComposioHQ/awesome-claude-plugins | todo | | If/when packaged as plugin |
| Chat2AnyLLM/awesome-claude-plugins | https://github.com/Chat2AnyLLM/awesome-claude-plugins | submitted | 2026-06-10 | PR [Chat2AnyLLM/awesome-repo-configs#51](https://github.com/Chat2AnyLLM/awesome-repo-configs/pull/51): added to both `skill_repos.json` and `plugin_repos.json` (their README auto-generates from these configs); their 3 validation tests pass |

## 4. Plugin marketplaces & directories

| Channel | URL | How to get listed | Status | Date | Notes |
|---|---|---|---|---|---|
| claudemarketplaces.com | https://claudemarketplaces.com/ | Auto-indexes GitHub marketplaces/plugins; no public submission mechanism found — contact maintainer [@mertduzgun](https://x.com/mertduzgun) if not picked up | todo | 2026-06-10 | Searched: not indexed yet; our `.claude-plugin/marketplace.json` (added today) is what their crawler looks for — re-check in ~1 week |
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
| mcp.so | https://mcp.so/ | todo | 2026-06-10 | Blocks automated access (403) — manual check/submission needed |
| Glama | https://glama.ai/mcp/servers | todo | 2026-06-10 | Checked: no official Openapi server listed (only third-party "openapi-spec" tools, different thing). Listing/claiming requires the mcp-server repo owner via their platform |
| PulseMCP | https://www.pulsemcp.com/ | todo | 2026-06-10 | Checked: no official Openapi server listed. They have a submit form on the site and also discover servers from public sources — action for the mcp-server owner |
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

Ready-to-publish drafts live in [`.github/distribution/announcements/`](.github/distribution/announcements/) — they must be posted by a human from a personal/company account (stealth or automated posting would backfire on these platforms).

| Channel | URL | Status | Date | Notes |
|---|---|---|---|---|
| Reddit r/ClaudeAI | https://www.reddit.com/r/ClaudeAI/ | todo | 2026-06-10 | Draft ready: [reddit-claudeai.md](.github/distribution/announcements/reddit-claudeai.md) — affiliation disclosed, A/B data as the hook |
| Reddit r/ClaudeCode | https://www.reddit.com/r/ClaudeCode/ | todo | 2026-06-10 | Same draft, adapt the title; don't post to both the same day |
| Hacker News (Show HN) | https://news.ycombinator.com/ | todo | 2026-06-10 | Draft ready: [show-hn.md](.github/distribution/announcements/show-hn.md) — submit + first comment; pair with the dev.to/blog post live |
| dev.to / Hashnode | https://dev.to/ | todo | 2026-06-10 | Draft ready: [dev-to-article.md](.github/distribution/announcements/dev-to-article.md) — also reusable for the Openapi blog |
| LinkedIn (company + personal) | https://www.linkedin.com/company/openapi-com | todo | 2026-06-10 | Draft ready (IT + EN): [linkedin.md](.github/distribution/announcements/linkedin.md) |
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
| 2026-06-10 | Topics rebalanced with Francesco to final 18 (removed http-client/italy/kyc, added claude, llm, developer-tools) |
| 2026-06-10 | Round 3 checks: PR #276 still open (only Vercel deploy bot comment); skills.sh still not indexing the repo (page 404) — added the official skills.sh badge to the README, which may trigger their crawler |
| 2026-06-10 | Clarified Anthropic marketplace path: official is invite-only/curated (no application); submissions go to the **community marketplace** via in-app form (claude.ai/settings/plugins/submit, login required — human step). `claude plugin validate` passes, ready to submit |
| 2026-06-10 | README badges: license badge switched to static shields.io image (no GitHub-API computation), skills.sh badge added |
| 2026-06-10 | Round 4 (heterogeneous): release badge made static too (bump manually on new releases); SkillX investigated (npm CLI is a script runner, no registry submit — deprioritized); aitmpl contribution path identified (in-repo component PR with attribution, heavier — future option); LLMBase 403 / MCP Market 429 to automation — manual forms; 4 announcement drafts written in `.github/distribution/announcements/` (dev.to, Reddit, Show HN, LinkedIn IT+EN) ready for human posting |
| 2026-06-10 | Round 5: PR [#51](https://github.com/Chat2AnyLLM/awesome-repo-configs/pull/51) to Chat2AnyLLM's config repo (feeds their auto-generated plugin/skill index) — added to both skill_repos.json and plugin_repos.json with their schema, validation tests green. Re-checks: PR #276 still open, skills.sh page still 404 |
| 2026-06-10 | File renamed DISTRIBUTION.md → DISTRIBUTING.md; added "Pending manual actions" checklist at the top |
| 2026-06-10 | Round 6: awesome-claude-code investigated — submissions are **human-only via web issue form** (CLI banned by policy); added to the manual checklist with evidence-based tips. Glama checked: no official Openapi MCP server listed (only unrelated third-party openapi-spec tools) — claiming requires the mcp-server owner |
| 2026-06-10 | Round 7: SkillsMP discovered and added (passive GitHub auto-indexing, 1.6M+ skills — nothing to submit, awaiting their crawler); anthropics/skills marked n/a (no third-party contribution path — community marketplace is the channel); PulseMCP checked (no Openapi server, submit form available for mcp-server owner); mcp.so blocks automation (403); claudemarketplaces.com still hasn't indexed us |
