---
name: openapi-company
description: Look up company/business data through Openapi - Italian companies by VAT/tax code or name, European and worldwide company search, shareholders, UBO, AML, PEC/SDI codes, company monitoring. Use for questions like "find data about company X", "who owns VAT number Y", "search companies in France/EU/worldwide".
---

# Openapi Company data

Base URL: `https://company.openapi.com` — company master data from official registers (Chamber of Commerce, CRIF, INPS and more).

Authentication: `Authorization: Bearer <token>` with `company.openapi.com` scopes — see the `openapi-auth` skill.

## Italian companies (by VAT or tax code)

| Endpoint | Returns |
|---|---|
| `GET /IT-start/{vatCode_taxCode_or_id}` | Basic data (cheap, start here) |
| `GET /IT-advanced/{vatCode_taxCode_or_id}` | Advanced data |
| `GET /IT-full/{vatCode_or_taxCode}` | Everything (most expensive) |
| `GET /IT-search` | Search by name/filters |
| `GET /IT-shareholders/…` / `GET /IT-ubo/…` | Shareholders / ultimate beneficial owners |
| `GET /IT-aml/…` | Anti-money-laundering data |
| `GET /IT-pec/…` / `GET /IT-sdicode/…` | Certified e-mail / SDI invoicing code |
| `GET /IT-address/…`, `/IT-name/…`, `/IT-closed/…`, `/IT-vatgroup/…`, `/IT-splitpayment/…`, `/IT-pa/…` | Address, name, activity cessation, VAT group, split payment, public administration |
| `GET /IT-legalforms` | Italian legal forms list |
| `GET /IT-check_id/{id}` | Status of an async request |

POST variants of `/IT-full`, `/IT-aml`, `/IT-marketing`, `/IT-stakeholders` run asynchronously: pass a `callback` URL or poll `GET /IT-check_id/{id}`.

## Other countries

- Dedicated start/advanced pairs: `FR` (also `/FR-search`), `DE`, `ES`, `PT`, `GB`, `BE`, `AT`, `CH`, `PL` — e.g. `GET /FR-start/{siret_siren_or_vat}`.
- Worldwide: `GET /WW-start/{country}/{id}`, `GET /WW-advanced/{country}/{id}`, `GET /WW-top/{country}/{id}`.

## Monitoring

`POST /monitor` registers a company for change notifications; `GET /monitor`, `GET/DELETE /monitor/{id}` manage registrations.

## Example

```bash
curl -s https://company.openapi.com/IT-start/12485671007 \
  -H "Authorization: Bearer $OPENAPI_TOKEN"
```

## Notes

- Sandbox test companies: https://docs.openapi.it/company-sandbox-examples.html
- The legacy `imprese.openapi.it` API offers similar Italian lookups; prefer `company.openapi.com`.
- Full spec: https://console.openapi.com/oas/en/company.openapi.json