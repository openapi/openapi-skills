<!-- Draft for r/ClaudeAI or r/ClaudeCode (post from Francesco's personal account;
     flair: Productivity / Showcase. Disclose affiliation — Reddit hates stealth marketing. -->

**Title:** We A/B tested our agent skills: same prompt with and without them — half the time, half the cost, and the skilled agent made one less paid API call

**Body:**

I work at Openapi (Italian API marketplace) and we just published our services as agent skills. Before announcing, we wanted proof they actually matter, so we built a small harness: the same prompt ("here's a VAT number, find who the company is and where it's based, credentials in env, be frugal") run by two headless Claude Code agents — one bare, one with the skills installed.

Results: bare = 108s / 13 turns / $0.75 / 2 paid calls. Skilled = 45s / 9 turns / $0.38 / 1 paid call.

The part that surprised us: the skilled agent read in the skill that the cheapest endpoint already includes the geographic data, and skipped the second API call on its own. Our own demo script wasn't that frugal.

The comparison harness is in the repo (`test/run_comparison.sh`) if you want to run the same experiment on your own skills — I'd honestly love to see numbers from other domains.

Repo: https://github.com/openapi/openapi-skills (install: `npx skills add openapi/openapi-skills`)

Disclosure: I'm on the Openapi team. The skills require an Openapi account; the test harness and the skill-writing patterns are MIT and useful regardless.
