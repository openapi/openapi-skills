 # openapi-skills

Agent skills for using and integrating the services of the [Openapi](https://openapi.com) API marketplace — the largest certified API marketplace in Europe.

## Repository layout

| Folder | Purpose |
|---|---|
| [`knowledge/`](knowledge/) | Curated knowledge base: company profile, services catalog, platform guide (auth, billing, sandbox), FAQ, references, per-service endpoint docs and vendored OpenAPI specs |
| [`skills/`](skills/) | The agent skills, one folder per domain, each with a `SKILL.md` |

## Skills

| Skill | Covers |
|---|---|
| [openapi-auth](skills/openapi-auth/SKILL.md) | OAuth v2 token lifecycle, scopes, wallet, usage stats (required by all others) |
| [openapi-company](skills/openapi-company/SKILL.md) | Company data: Italy, EU, worldwide |
| [openapi-documents](skills/openapi-documents/SKILL.md) | Official documents: visure camerali, balance sheets, DURC, protests (DocuEngine, Visure Camerali, Visengine) |
| [openapi-risk](skills/openapi-risk/SKILL.md) | Credit scores, CRIF reports, KYC, negative events |
| [openapi-trust](skills/openapi-trust/SKILL.md) | Validation of emails, phones, IPs, URLs, PEC, fiscal codes, plates |
| [openapi-geo](skills/openapi-geo/SKILL.md) | Geocoding, zip codes, Italian cadastre, real estate valuations |
| [openapi-messaging](skills/openapi-messaging/SKILL.md) | SMS v2, PEC, Massive REM, postal mail via Poste Italiane |
| [openapi-esignature](skills/openapi-esignature/SKILL.md) | eIDAS e-signatures and qualified time stamping |
| [openapi-invoicing](skills/openapi-invoicing/SKILL.md) | Electronic invoicing (Invoice, SDI) and bill payments |
| [openapi-automotive](skills/openapi-automotive/SKILL.md) | Vehicle data by license plate |
| [openapi-utilities](skills/openapi-utilities/SKILL.md) | Exchange rates, HTML-to-PDF, .it domains, managed RAG |

## Credentials

Skills expect `OPENAPI_EMAIL` and `OPENAPI_API_KEY` (account credentials for `oauth.openapi.com`) and/or a ready-made `OPENAPI_TOKEN` Bearer token in the environment. See [knowledge/platform-guide.md](knowledge/platform-guide.md).