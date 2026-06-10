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
| Skills.sh (Vercel) | https://www.skills.sh/ | Indexed from public GitHub repos with `skills/*/SKILL.md`; installs counted via `npx skills add openapi/openapi-skills`. Verify the repo appears in search | todo | | Leaderboard ranks by real installs — drive installs from our own docs/blog |
| SkillX | https://github.com/nextlevelbuilder/skillx | Marketplace with semantic search/ratings; submit per their CLI/registry flow | todo | | |
| Skills Directory | https://www.skillsdirectory.com/ | Submission with security scan (malware/prompt injection review) | todo | | Security-vetted listing is good trust signal for a B2B brand |
| MCP Market — Skills section | https://mcpmarket.com/tools/skills | Submit skill/tool via their form | todo | | Same site can also list the Openapi MCP server |
| Claude Skills Hub | https://claudeskills.info/ | Submission/indexing of SKILL.md repos | todo | | 658+ skills indexed, 13 categories |
| AwesomeSkills.dev | https://www.awesomeskills.dev/en | Directory for cross-tool skills (14+ agents) | todo | | |
| LLMBase skills directory | https://llmbase.ai/skills/ | Submission form | todo | | |

## 2. Official Anthropic channels

| Channel | URL | How to get listed | Status | Date | Notes |
|---|---|---|---|---|---|
| Claude Code official plugin marketplace | https://github.com/anthropics/claude-plugins-official | Package the repo as a plugin (`.claude-plugin/plugin.json` + `skills/`) and use the plugin directory submission form (see https://code.claude.com/docs/en/plugins) | todo | | Requires plugin packaging — quality/security review by Anthropic |
| anthropics/skills (official examples repo) | https://github.com/anthropics/skills | PR if/where third-party skills are accepted | todo | | Check current contribution policy first |

## 3. Awesome lists (GitHub PRs)

Fork → add entry in the right section → PR. One PR per list, link `https://github.com/openapi/openapi-skills`.

| List | URL | Status | Date | Notes |
|---|---|---|---|---|
| VoltAgent/awesome-agent-skills | https://github.com/VoltAgent/awesome-agent-skills | todo | | Largest community list (1000+ skills) |
| heilcheng/awesome-agent-skills | https://github.com/heilcheng/awesome-agent-skills | todo | | Focus on skills used by real engineering teams |
| ComposioHQ/awesome-claude-skills | https://github.com/ComposioHQ/awesome-claude-skills | todo | | |
| travisvn/awesome-claude-skills | https://github.com/travisvn/awesome-claude-skills | todo | | |
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
| Add repo topics: `agent-skills`, `claude-skills`, `claude-code`, `skill-md`, `openapi`, `api` | todo | | Settings → Topics |
| Set repo description + website (https://openapi.com) | todo | | |
| Tag a release (`v0.1.0`) | todo | | Registries often index releases |
| Pin the repo on the `openapi` org profile | todo | | |

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
