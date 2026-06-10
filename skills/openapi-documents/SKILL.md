---
name: openapi-documents
description: Obtain official Italian documents through Openapi - chamber of commerce reports (visure camerali), financial statements/balance sheets, company files (fascicoli), bylaws, DURC, protest reports, cadastral documents. Use when the user needs an official PDF document about an Italian company or person.
---

# Openapi official documents

Three services deliver official documents; all are **asynchronous** (request → poll → download PDF).

| Service | Base URL | Use for |
|---|---|---|
| DocuEngine (preferred) | `https://docuengine.openapi.com` | All documents: Business Register, Revenue Agency, Municipalities, INPS (DURC), protests, balance sheets |
| Visure Camerali | `https://visurecamerali.openapi.it` | Chamber of commerce registrations and financial statements |
| Visengine (legacy) | `https://visengine2.altravia.com` | Older engine for the same document families |

Authentication: Bearer token — see the `openapi-auth` skill.

## DocuEngine workflow

1. `GET /services` — discover available document types and prices.
2. `POST /documents` with the service code and subject (VAT/tax code) — returns a request `id`. Optionally pass a `callback` URL.
3. `GET /documents/{id}` — poll status until the document is ready.
4. Download the PDF from the returned URL/payload.

Document families include: visura camerale (ordinaria/storica, by company type), fascicolo (company file, current/historical), bilancio (XBRL, ottico, riclassificato), statuto (bylaws), certificato di iscrizione, DURC online, protesti and pregiudizievoli (companies and persons), cariche/quote/soci (offices, shares, shareholders), eventi negativi.

## Notes

- These calls are **paid per document** — check wallet credit first (`openapi-auth`) and confirm with the user before bulk requests.
- Sandbox responses are illustrative; enable sandbox credit first.
- Specs: [docuengine](../../knowledge/oas/docuengine.openapi.json) · [visurecamerali](../../knowledge/oas/visurecamerali.openapi.json) · [visengine](../../knowledge/oas/visengine.openapi.json) — endpoint lists in [knowledge/services/](../../knowledge/services/).