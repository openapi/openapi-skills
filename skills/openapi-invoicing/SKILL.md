---
name: openapi-invoicing
description: Italian electronic invoicing and payments through Openapi - send/receive electronic invoices via SDI (Sistema di Interscambio), digital receipts, legal storage, and bill payments (MAV, RAV, PagoPA, car tax). Use for fatturazione elettronica and bill payment tasks.
---

# Openapi invoicing & payments

Bearer token required (see the `openapi-auth` skill). Sending invoices to the Revenue Agency and paying bills are **irreversible fiscal/financial actions — always confirm with the user first**.

| Service | Base URL | Use for |
|---|---|---|
| Invoice (preferred) | `https://invoice.openapi.com` | Active/passive electronic invoices, digital receipts, SDI transmission, digital signature, legal storage |
| SDI | `https://sdi.openapi.it` | Lower-level interaction with the Sistema di Interscambio |
| Paying Bills | `https://ws.pagasubito.it` | Pay bollettini, MAV, RAV, PagoPA, car tax (bollo auto) |

## Key facts

- **Receiving supplier invoices** requires registering Openapi's Recipient Code (Codice Destinatario) on the Revenue Agency website — the SDI spec description contains the step-by-step guide.
- Invoices are FatturaPA XML; the Invoice API handles signing, transmission and status monitoring (delivery receipts, rejections) and can forward to legal storage (`api_configuration`).
- Status updates can be pushed to a `callback` URL.

## References

Specs: [invoice](../../knowledge/oas/invoice.openapi.json) · [sdi](../../knowledge/oas/sdi.openapi.json) · [bollettini](../../knowledge/oas/bollettini.openapi.json) — endpoint lists in [knowledge/services/](../../knowledge/services/).