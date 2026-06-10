---
name: openapi-esignature
description: Digital signatures and time stamps through Openapi - eIDAS-compliant electronic signature workflows (eSignature) and qualified time stamping of documents (Marche Temporali). Use when the user needs a document signed electronically or time-stamped with legal validity.
---

# Openapi eSignature & time stamping

Bearer token required (see the `openapi-auth` skill). Signing and stamping are paid, legally binding actions — confirm with the user before submitting documents.

| Service | Base URL | Use for |
|---|---|---|
| eSignature | `https://esignature.openapi.com` | eIDAS-compliant signature processes (simple to qualified), signer invitations, signed-document retrieval |
| Time Stamping | `https://ws.marchetemporali.com` | Purchase qualified timestamps and apply them to documents |

## eSignature workflow (typical)

1. Create a signature process/envelope with the document (PDF) and signer details.
2. Signers receive an invitation and sign according to the configured signature level.
3. Track process status (webhooks/polling) and download the signed document when complete.

Legacy **Digital Signature** (`ws.firmadigitale.com` — Infocert/Aruba kits, digital identities) is **deprecated**; use eSignature for new integrations.

## References

Specs: [esignature](../../knowledge/oas/esignature.openapi.json) · [marchetemporali](../../knowledge/oas/marchetemporali.openapi.json) · legacy [firmadigitale](../../knowledge/oas/firmadigitale.openapi.json) — endpoint lists in [knowledge/services/](../../knowledge/services/).