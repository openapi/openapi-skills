---
name: openapi-invoicing
description: Italian electronic invoicing and payments through Openapi - send/receive electronic invoices via SDI (Sistema di Interscambio), digital receipts (scontrino elettronico), legal storage, and bill payments (MAV, RAV, PagoPA, car tax). Use for fatturazione elettronica and bill payment tasks.
---

# Openapi invoicing & payments

Bearer token required (see the `openapi-auth` skill). Sending invoices/receipts to the Revenue Agency and paying bills are **irreversible fiscal/financial actions — always confirm with the user first**.

## Invoice (preferred) — `https://invoice.openapi.com`

Full management of Italian electronic invoices (FatturaPA XML) and digital receipts.

- `POST /IT-invoices` — create/send an invoice to the SDI; `GET /IT-invoices`, `GET /IT-invoices/{id}` — list and monitor states (delivery, rejection)
- `POST /IT-invoices_import` — import externally created invoices
- `POST|GET|PATCH|DELETE /IT-configurations[/{fiscal_id}]` — per-company configuration (signature, legal storage, `receipts_authentication`)
- `POST /IT-receipts` — send a digital receipt; `GET|PATCH|DELETE /IT-receipts/{id}` (PATCH returns items from a receipt)

Key constraints:

- **Receiving supplier invoices** requires registering Openapi's Recipient Code on the Revenue Agency website: code **PIC7CPS** (Invoice API).
- Receipts cannot be sent 23:55–00:00 Italian time (queued to the next day); the receipt service requires enabling third-party credentials on the Agenzia delle Entrate portal (guide: https://docs.openapi.it/Procedura-manuale-per-incarico.pdf). Freelancers/sole proprietorships cannot delegate and must use their own credentials.

## SDI (lower-level) — `https://sdi.openapi.it`

1. `POST /business_registry_configurations` (fiscal_id + email; legal-storage registration email follows)
2. `POST /api_configurations` — set callbacks for notifications
3. `POST /invoices` — send XML invoice; variants `/invoices_signature`, `/invoices_legal_storage`, `/invoices_signature_legal_storage`
4. `GET /invoices/{uuid}`, `GET /invoices_download/{uuid}`, `GET /invoices_notifications/{uuid}`
5. Imports: `POST /customer_invoice_imports`, `POST /supplier_invoice_imports` (+ `_legal_storage` variants); test with `POST /simulate/{type}`

Recipient Code for SDI API: **JKKZDGR**. If the wallet runs dry the configuration is suspended — reactivate with `PATCH /business_registry_configurations/{fiscal_id}/activate` after recharging. PA invoices are auto-detected and signed.

## Paying Bills — `https://ws.pagasubito.it`

Pay bollettini, MAV, RAV, PagoPA and car tax (bollo auto) via API in real time.

Full specs: https://console.openapi.com/oas/en/invoice.openapi.json · …/sdi.openapi.json · …/bollettini.openapi.json