---
name: openapi-esignature
description: Digital signatures and time stamps through Openapi - eIDAS-compliant electronic signatures (SES with OTP, qualified QES, e-seals, massive automatic signing) and qualified time stamping of documents. Use when the user needs a document signed electronically or time-stamped with legal validity.
---

# Openapi eSignature & time stamping

Bearer token required (see the `openapi-auth` skill). Signing and stamping are paid, legally binding actions — confirm with the user before submitting documents.

## eSignature — `https://esignature.openapi.com`

eIDAS-compliant signatures with European legal validity.

### Signature types

- `POST /EU-SES` — Simple Electronic Signature for one or more signers, secured via OTP
- `POST /EU-QES_otp` — Qualified Electronic Signature with remote OTP certificate
- `POST /EU-QES_automatic` — massive automatic QES (high volume)
- `POST /EU-QES_eseal` — qualified electronic seal (legal-entity seal)
- `POST /verify` — verify an existing signature

### Certificates and results

- `POST /certificates/namirial-otp` / `POST /certificates/namirial-automatic` — purchase signing certificates
- `GET /certificates`, `GET /certificates/{id}` — list/inspect certificates
- `GET /signatures` — list signature processes
- `GET /signatures/{id}/{actionType}` — download the signed document, details, audit trail, or validated document
- `DELETE /signatures/{id}` — delete signature artifacts

Typical flow: ensure a certificate exists → create the signature request with the PDF and signer details → signers complete via OTP where applicable → download the signed document and audit trail.

## Time Stamping (Marche Temporali) — `https://ws.marchetemporali.com`

Purchase qualified timestamps and apply them to documents (buy batches, stamp a document, verify stamps).

Legacy **Digital Signature** (`ws.firmadigitale.com` — Infocert/Aruba kits) is **deprecated**; use eSignature for new integrations.

Full specs: https://console.openapi.com/oas/en/esignature.openapi.json · https://console.openapi.com/oas/en/marchetemporali.openapi.json