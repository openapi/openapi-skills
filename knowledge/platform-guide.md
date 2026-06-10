# Platform guide: authentication, scopes, billing, sandbox

How the Openapi platform works across all services. Distilled from the OAuth v2 spec ([oas/oauthv2.openapi.json](oas/oauthv2.openapi.json)) and the console FAQ ([faq.md](faq.md)).

## Authentication model

Two layers:

1. **API key (Basic auth)** — your account credentials: username = account email, password = API key. Used **only** against `oauth.openapi.com` to create and manage tokens.
2. **Bearer token** — created via OAuth v2 with a set of scopes; sent as `Authorization: Bearer <token>` to every service API (`company.openapi.com`, `risk.openapi.com`, …).

### Creating a token

```
POST https://oauth.openapi.com/tokens
Authorization: Basic base64(email:apikey)
Content-Type: application/json

{
  "scopes": ["GET:company.openapi.com/IT-start", "POST:sms.openapi.com/messages"],
  "name": "My integration token",
  "ttl": 2592000,              // seconds, max 1 year
  "limits": { ... }            // optional usage limits
}
```

- **Scope format**: `METHOD:host/path-prefix`, e.g. `GET:company.openapi.com/IT-full`. List all available scopes with `GET /scopes`.
- Tokens can also be created from the console UI: Authentication → "+New Token".
- A **refresh token** can be used as Bearer on `PATCH /tokens/{id}` to renew a token without the access token.

### Other OAuth v2 endpoints

- `GET /tokens`, `GET/PATCH/DELETE /tokens/{token}` — token lifecycle
- `GET /scopes`, `GET /scopes/{id}` — available scopes
- `GET /wallet`, `GET /wallet/transactions` — credit balance and history
- `GET /subscriptions`, `GET /subscriptions/{id}` — active plans
- `GET /stats`, `GET /stats/apis`, `GET /stats/apis/{domain}`, `GET /stats/ips` — usage analytics
- `GET /errors`, `GET /callbacks` — error logs and callback monitoring

OAuth v1 (`oauth.openapi.it`) is deprecated; use OAuth v2.

## Billing

- **Pay per request (wallet/"purse")**: each call is charged against your credit. Top up via console (PayPal, credit card, bank transfer); Auto-Recharge available with credit card.
- **Subscriptions**: monthly (30 days, no rollover) or annual (365 days, requests usable at any pace net of instalment limits) per API; cheaper per request.
- Both models can coexist — payment mode is chosen per API; keep wallet credit as fallback when subscription requests run out.
- Some APIs include **free tiers** (daily/monthly free requests) — see the Price section of each API.

## Sandbox

- Test environment with free requests; requires enabling "sandbox credit" in the console first.
- Responses are illustrative and may be incomplete; some APIs publish test VAT numbers/plates (e.g. https://docs.openapi.it/imprese-sandbox-examples.html).

## Async request pattern

Many document/report services (DocuEngine, Visure Camerali, Visengine, Risk, Company advanced) are **asynchronous**:

1. `POST` the request → returns a request `id` and state (e.g. `RICHIESTA`/`EVASA`).
2. Optionally pass a `callback` URL to be notified on completion.
3. Poll the status endpoint with the `id` until the document/report is ready.
4. Download the result (often a PDF, sometimes base64 or a document URL).

## Compliance notes

- Some services (typically risk/investigative data) are subject to the Italian **TULPS** regulation (Art. 6 license) and require uploading an identity document of the legal representative or a delegate before activation.
- Rate limits, when present, are stated in each API's description.
- System status: https://openapi-com.statuspage.io