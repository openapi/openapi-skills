---
name: openapi-documents
description: Obtain official Italian documents through Openapi - chamber of commerce reports (visure camerali), financial statements/balance sheets, company files (fascicoli), bylaws, DURC, protest reports. Use when the user needs an official PDF document about an Italian company or person.
---

# Openapi official documents

Two main services deliver official documents; both are **asynchronous** (request → poll → download PDF) and **paid per document** — check wallet credit (`openapi-auth` skill) and confirm with the user before bulk requests.

## DocuEngine (preferred) — `https://docuengine.openapi.com`

Official documents from the Business Register, Revenue Agency, Municipalities and INPS, behind one uniform API:

1. `GET /documents` — list available document services (codes, prices).
2. `POST /requests` — create a request with the service code and subject (VAT/tax code); optionally pass a `callback` URL.
3. `GET /requests/{id}` — poll until the request state is fulfilled (`EVASA`).
4. `GET /requests/{id}/documents` — download the resulting documents.
5. `PATCH /requests/{id}` — update a request when the service asks for it (e.g. optical balance-sheet processing).

Document families: visura camerale (ordinaria/storica, per company type, also in English), fascicolo società (current/historical), bilancio (XBRL, ottico, riclassificato), statuto, certificato di iscrizione, certificato artigiano, DURC online, visura protesti and pregiudizievoli (companies and natural persons), cariche/quote/soci attivi, eventi negativi, atto ottico.

## Visure Camerali — `https://visurecamerali.openapi.it`

Direct chamber-of-commerce endpoints, one resource per document type, all with the same pattern `POST /<type>` → `GET /<type>/{id}` → `GET /<type>/{id}/allegati` (download):

- `ordinaria-impresa-individuale`, `storica-impresa-individuale`
- `ordinaria-societa-capitale`, `storica-societa-capitale`
- `ordinaria-societa-persone`, `storica-societa-persone`
- `bilancio-ottico`, `certificato-iscrizione`, `certificato-iscrizione-vigenza`, …
- Company search first: `GET /impresa?...` or `GET /impresa/{cf_piva_id}` to identify the subject.

Visengine (`https://visengine2.altravia.com`) is the older engine for the same families — prefer DocuEngine for new work.

## Notes

- Sandbox responses are illustrative; enable sandbox credit in the console first.
- Full specs: https://console.openapi.com/oas/en/docuengine.openapi.json · https://console.openapi.com/oas/en/visurecamerali.openapi.json · https://console.openapi.com/oas/en/visengine.openapi.json