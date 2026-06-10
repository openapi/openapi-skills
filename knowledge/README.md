# Knowledge base

Everything needed to build and maintain the agent skills for interacting with the [Openapi](https://openapi.com) API marketplace.

## Contents

| File / folder | What it contains |
|---|---|
| [company-profile.md](company-profile.md) | Who Openapi is: company facts, history, offering, certifications, data sources |
| [services-catalog.md](services-catalog.md) | Catalog of all 28 APIs with base URLs, categories, and deprecation status |
| [platform-guide.md](platform-guide.md) | Cross-cutting platform knowledge: OAuth v2 authentication, scopes, billing, sandbox, async patterns |
| [faq.md](faq.md) | Console FAQ (account, API usage, payments and subscriptions) |
| [references.md](references.md) | External references: websites, GitHub repos (SDKs, CLI, MCP server), Postman, status page |
| [services/](services/) | Per-service endpoint references (generated from the OAS specs) |
| [oas/](oas/) | Snapshot of the official OpenAPI 3 specs from [openapi/openapi-cli](https://github.com/openapi/openapi-cli/tree/main/oas) |

## Keeping it up to date

- Canonical spec URLs: `https://console.openapi.com/oas/en/<service>.openapi.json` (full list in [oas/00-list.txt](oas/00-list.txt)). Re-download into `oas/` and regenerate `services/` when specs change.
- The API Library at https://console.openapi.com/apis is the source of truth for which APIs are active or deprecated.