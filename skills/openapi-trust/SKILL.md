---
name: openapi-trust
description: Verify data validity through Openapi Trust - email deliverability, mobile number checks, IP reputation, URL safety, PEC validation, Italian fiscal code checks, license plate checks. Use for anti-fraud validation of user-provided contact data.
---

# Openapi Trust

Base URL: `https://trust.openapi.com` — validity and trustworthiness checks to prevent fraud and bad data on your platform.

Authentication: Bearer token — see the `openapi-auth` skill.

## Checks available

| Data | Pattern |
|---|---|
| Email | simple check, or advanced: `POST` start → poll advanced result |
| Mobile number | simple check, or advanced start/poll |
| IP address | `check IP advanced` (reputation, geolocation, proxy/VPN signals) |
| URL | `check URL advanced` (safety/reputation) |
| PEC address | verify a certified e-mail address is valid/active |
| Italian fiscal code | formal validity and consistency with personal data |
| License plate | plate validity check |

Advanced checks are async: start the check, then poll the status endpoint with the returned `id` (see [platform guide](../../knowledge/platform-guide.md#async-request-pattern)).

## Example

```bash
curl -s -X POST https://trust.openapi.com/email \
  -H "Authorization: Bearer $OPENAPI_TOKEN" \
  -H 'Content-Type: application/json' \
  -d '{"email": "someone@example.com"}'
```

## References

Full spec: [knowledge/oas/trust.openapi.json](../../knowledge/oas/trust.openapi.json) · endpoint list: [knowledge/services/trust.md](../../knowledge/services/trust.md)