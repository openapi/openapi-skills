---
name: openapi-messaging
description: Send communications through Openapi - SMS with custom sender (SMS v2), Italian certified e-mail (PEC/Legalmail), bulk certified mail (Massive REM), and physical mail via Poste Italiane (registered letters, telegrams, priority mail). Use when the user wants to send a message, letter or certified communication.
---

# Openapi messaging & communications

All services use a Bearer token (see the `openapi-auth` skill). **Every send is an outward-facing, paid action: always confirm recipient, content and cost with the user before sending.**

| Service | Base URL | Use for |
|---|---|---|
| SMS v2 | `https://sms.openapi.com` | SMS with custom sender, delivery reports; IT/ES dedicated endpoints + worldwide |
| PEC | `https://pec.openapi.it` | Activate and manage Legalmail certified e-mail boxes |
| Massive REM | `https://ws.pecmassiva.com` | Bulk certified e-mail with delivery/receipt verification |
| Postal Service | `https://ws.ufficiopostale.com` | Raccomandate, telegrams, priority mail via Poste Italiane |

## SMS v2

```bash
curl -s -X POST https://sms.openapi.com/messages \
  -H "Authorization: Bearer $OPENAPI_TOKEN" \
  -H 'Content-Type: application/json' \
  -d '{"sender": "MyBrand", "body": "Hello!", "recipients": ["+39333…"]}'
```

SMS v1 (`ws.messaggisms.com`) is **deprecated** — use SMS v2.

## Postal Service workflow

1. `POST` a new mail item (recipient, document).
2. Check the returned prices and confirm with a `PATCH` (or pass `autoconfirm: true`).
3. Receive status updates via the `callback` URL you provide.

## References

Specs: [smsv2](../../knowledge/oas/smsv2.openapi.json) · [pec](../../knowledge/oas/pec.openapi.json) · [pecmassiva](../../knowledge/oas/pecmassiva.openapi.json) · [ufficiopostale](../../knowledge/oas/ufficiopostale.openapi.json) — endpoint lists in [knowledge/services/](../../knowledge/services/).