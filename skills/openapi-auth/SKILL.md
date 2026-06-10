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

- Scope format: `METHOD:host/path-prefix` (e.g. `POST:sms.openapi.com/messages`). Request only the scopes the task needs, with a short `ttl`.
- Discover valid scopes: `GET https://oauth.openapi.com/scopes` (Basic auth).
- A refresh token can renew an expired token: `PATCH /tokens/{id}` with the refresh token as Bearer.

## Useful management endpoints (Basic auth)

- `GET /tokens`, `GET|PATCH|DELETE /tokens/{token}` — token lifecycle
- `GET /wallet`, `GET /wallet/transactions` — credit balance (check before expensive paid calls)
- `GET /subscriptions` — active plans and remaining requests
- `GET /stats`, `GET /stats/apis/{domain}` — usage analytics
- `GET /errors`, `GET /callbacks` — error log and callback monitoring

## Notes

- OAuth v1 (`oauth.openapi.it`) is deprecated — always use `oauth.openapi.com`.
- Sandbox testing requires enabling "sandbox credit" in the console first; see [platform guide](../../knowledge/platform-guide.md).
- Full spec: [knowledge/oas/oauthv2.openapi.json](../../knowledge/oas/oauthv2.openapi.json) · endpoint list: [knowledge/services/oauthv2.md](../../knowledge/services/oauthv2.md)