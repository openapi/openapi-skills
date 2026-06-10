---
name: openapi-auth
description: Authenticate with the Openapi marketplace (oauth.openapi.com). Use when you need to create, inspect, renew or delete Bearer tokens, list available scopes, check wallet credit, subscriptions, or API usage stats. Required by every other openapi-* skill.
---

# Openapi authentication (OAuth v2)

All Openapi services require a Bearer token created through OAuth v2. This skill manages that token lifecycle.

## Credentials

Two layers — never confuse them:

1. **Account credentials** (email + API key) → used only against `https://oauth.openapi.com`, as HTTP Basic auth (`username = email`, `password = API key`).
2. **Bearer token** (created here, with scopes) → used against every service API as `Authorization: Bearer <token>`.

Expect credentials in the environment as `OPENAPI_EMAIL`, `OPENAPI_API_KEY` (and optionally a ready-made `OPENAPI_TOKEN`). Never print or commit them.

## Create a token

```bash
curl -s -u "$OPENAPI_EMAIL:$OPENAPI_API_KEY" https://oauth.openapi.com/tokens \
  -H 'Content-Type: application/json' \
  -d '{
    "scopes": ["GET:company.openapi.com/IT-start"],
    "name": "agent token",
    "ttl": 86400
  }'
```

- Scope format: `METHOD:host/path-prefix` (e.g. `POST:sms.openapi.com/IT-messages`). Request only the scopes the task needs, with a short `ttl` (max 1 year).
- Discover valid scopes: `GET https://oauth.openapi.com/scopes` (Basic auth).
- Optional `limits` object restricts token usage further.
- A refresh token can renew a token: `PATCH /tokens/{id}` with the refresh token as Bearer.
- Tokens can also be created from the console UI (Authentication → "+New Token") at https://console.openapi.com.

## Management endpoints (Basic auth)

| Endpoint | Purpose |
|---|---|
| `GET /tokens`, `GET\|PATCH\|DELETE /tokens/{token}` | Token lifecycle |
| `GET /scopes`, `GET /scopes/{id}` | Available scopes |
| `GET /wallet`, `GET /wallet/transactions` | Credit balance — check before expensive paid calls |
| `GET /subscriptions`, `GET /subscriptions/{id}` | Active plans and remaining requests |
| `GET /stats`, `GET /stats/apis`, `GET /stats/apis/{domain}`, `GET /stats/ips` | Usage analytics |
| `GET /errors`, `GET /callbacks` | Error log and callback monitoring |

## Billing model (affects every service)

- Requests are paid from the **wallet** (per request) or from a **subscription** (monthly: 30 days no rollover; annual: 365 days, any pace). Both can coexist; the wallet is the fallback when subscription requests run out.
- Some APIs have free daily/monthly tiers; rate limits, when present, are stated in each API's description.
- **Sandbox**: free test requests, but "sandbox credit" must be enabled in the console first; responses are illustrative.

## Notes

- OAuth v1 (`oauth.openapi.it`) is deprecated — always use `oauth.openapi.com`.
- Service health: https://openapi-com.statuspage.io
- Full spec: https://console.openapi.com/oas/en/oauthv2.openapi.json