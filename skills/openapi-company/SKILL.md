---
name: openapi-company
description: Look up company/business data through Openapi - Italian companies by VAT/tax code or name, European and worldwide company search, legal forms, company credit scores. Use for questions like "find data about company X", "who owns VAT number Y", "search companies in France/EU/worldwide".
---

# Openapi Company data

Base URL: `https://company.openapi.com` — company master data from official registers (Chamber of Commerce, CRIF, INPS and more).

Authentication: Bearer token with `company.openapi.com` scopes — see the `openapi-auth` skill.

## Choosing the right endpoint

| Need | Endpoint |
|---|---|
| Quick Italian company lookup (cheap) | `GET /IT-start/{vat_or_taxcode}` |
| Full Italian company report | `GET /IT-full/{vat_or_taxcode}` |
| Advanced Italian data (async) | `GET /IT-advanced/{id}` after starting a request |
| Search Italian companies by name/filters | `GET /IT-search` |
| Italian legal forms list | `GET /IT-legalforms` |
| French companies | `GET /FR-search` |
| Other EU countries (async start/advanced) | `EU-start` → `EU-advanced` |
| Worldwide (async) | `WW-start` → `WW-advanced`; quick top-level: `WW-top` |
| Credit score (top-level) | see `risk` service (`openapi-risk` skill) |

The async pattern (start → poll advanced with the returned `id`, or pass a `callback` URL) is described in the [platform guide](../../knowledge/platform-guide.md#async-request-pattern).

## Example

```bash
curl -s https://company.openapi.com/IT-start/12485671007 \
  -H "Authorization: Bearer $OPENAPI_TOKEN"
```

## Notes

- The legacy `imprese.openapi.it` API offers similar Italian lookups; prefer `company.openapi.com`. Sandbox test VAT numbers: https://docs.openapi.it/imprese-sandbox-examples.html
- Full spec: [knowledge/oas/company.openapi.json](../../knowledge/oas/company.openapi.json) · endpoints: [knowledge/services/company.md](../../knowledge/services/company.md) · legacy: [knowledge/services/imprese.md](../../knowledge/services/imprese.md)