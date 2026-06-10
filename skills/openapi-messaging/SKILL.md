---
name: openapi-messaging
description: Send communications through Openapi - SMS with custom sender and OTP (SMS v2), Italian certified e-mail (PEC/Legalmail), bulk certified mail (Massive REM), and physical mail via Poste Italiane (registered letters, telegrams, judicial acts). Use when the user wants to send a message, letter or certified communication.
---

# Openapi messaging & communications

All services use a Bearer token (see the `openapi-auth` skill). **Every send is an outward-facing, paid action: always confirm recipient, content and cost with the user before sending.**

## SMS v2 — `https://sms.openapi.com`

- `POST /IT-messages` (Italy), `POST /ES-messages` (Spain), `POST /WW-messages` (worldwide)
- `POST /otp` — OTP verification messages
- `GET /messages`, `GET /messages/{id}` — sent messages and delivery status

Features: custom sender, E.164 validation, GSM-7/UCS-2 detection with automatic segmentation, **`dry_run` for free testing**, webhook delivery callbacks. Messages expire after 48h (status `EXPIRED`). Worldwide pricing is computed post-sending and requires a minimum credit balance. SMS v1 (`ws.messaggisms.com`) is **deprecated**.

```bash
curl -s -X POST https://sms.openapi.com/IT-messages \
  -H "Authorization: Bearer $OPENAPI_TOKEN" \
  -H 'Content-Type: application/json' \
  -d '{"sender": "MyBrand", "body": "Hello!", "recipients": ["+39333…"], "options": {"dry_run": true}}'
```

## PEC (certified e-mail) — `https://pec.openapi.it`

Activate and manage Legalmail certified e-mail boxes (creation, renewal, configuration).

## Massive REM — `https://ws.pecmassiva.com`

Bulk certified e-mail sending; check delivery-verification and receipt-verification status per message.

## Postal Service — `https://ws.ufficiopostale.com`

Physical mail via Poste Italiane. Same pattern per product: `POST /<product>/` (create, returns prices) → `PATCH /<product>/{id}` (confirm, or pass `autoconfirm: true`) → status callbacks to your `callback` URL → `GET /<product>/{id}/accettazione` (acceptance receipt).

Products: `raccomandate` and `raccomandate_smart` (registered mail), `telegrammi`, `ordinarie`, `prioritarie`, `posta_massiva`, `posta_massiva_top`, `atti_giudiziari` (judicial acts, with digital return receipt). Helpers: `GET /pricing/`, `GET /nazioni/`, `GET /covers/`, `GET /dug/`. Error responses include `data.wrong_fields[]` pinpointing invalid fields.

Full specs: https://console.openapi.com/oas/en/smsv2.openapi.json · …/pec.openapi.json · …/pecmassiva.openapi.json · …/ufficiopostale.openapi.json