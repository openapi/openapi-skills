---
name: openapi-trust
description: Verify data validity through Openapi Trust - email deliverability, mobile number HLR checks, IP reputation, URL safety scans, document-based identity verification (IDV). Use for anti-fraud validation of user-provided contact data and identities.
---

# Openapi Trust

Base URL: `https://trust.openapi.com` — validity and trustworthiness checks to prevent fraud and bad data on your platform.

Authentication: Bearer token — see the `openapi-auth` skill.

All checks are **async**: `POST` creates the request (returns an `id`), `GET /<type>/{id}` retrieves the result. A `callback` URL can be supplied instead of polling.

## Data checks

| Check | Create | Retrieve |
|---|---|---|
| Email (basic) | `POST /email-start/{email}` | `GET /email-start/{id}` |
| Email (advanced) | `POST /email-advanced/{email}` | `GET /email-advanced/{id}` |
| Mobile HLR (basic) | `POST /mobile-start/{number}` | `GET /mobile-start/{id}` |
| Mobile (advanced) | `POST /mobile-advanced/{number}` | `GET /mobile-advanced/{id}` |
| IP analysis | `POST /ip-advanced/{ip}` | `GET /ip-advanced/{id}` |
| URL scan | `POST /url-advanced/{url}` | `GET /url-advanced/{id}` |

## Identity verification (IDV)

Three levels, each `POST` to create and `GET /{id}` to retrieve: `idv-flash-start`, `idv-flash-advanced`, `idv-expert`. Captured artifacts are downloadable per request: `GET /<level>/{id}/front`, `/back`, and (advanced/expert) `/face`.

IDV processes personal identity documents — handle results under GDPR, never store them in the repo.

## Example

```bash
curl -s -X POST "https://trust.openapi.com/email-start/someone@example.com" \
  -H "Authorization: Bearer $OPENAPI_TOKEN"
```

Full spec: https://console.openapi.com/oas/en/trust.openapi.json