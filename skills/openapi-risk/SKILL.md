---
name: openapi-risk
description: Assess the reliability of companies and individuals through Openapi Risk - credit scores, CRIF reports, patrimonial reports, negative events, heirs reports, worldwide KYC (PEP, sanction lists, adverse media). Use for due diligence, creditworthiness, AML/KYC questions.
---

# Openapi Risk

Base URL: `https://risk.openapi.com` — reports and scores on natural and legal persons, sourced from CRIF, the Protest Register and other official registers.

Authentication: Bearer token — see the `openapi-auth` skill.

## Credit score (synchronous, start here)

- `GET /IT-creditscore-top/{vatCode_taxCode_or_id}` — top-level score for an Italian company
- `GET /IT-creditscore-start/…` / `GET /IT-creditscore-advanced/…` — lighter/deeper variants
- `GET /IT-verifica_cf/{codice_fiscale}` — fiscal code check

## Reports (async: `POST /<type>` → `GET /<type>/{id}` → `GET /<type>/{id}/download` for the PDF)

| Resource | Subject |
|---|---|
| `IT-report-persona`, `IT-report-persona-top` | Natural person report |
| `IT-patrimoniale-persona`, `IT-patrimoniale-persona-top` | Patrimonial (assets) report |
| `IT-report-azienda`, `IT-report-azienda-top` | Company report |
| `IT-crif-persona`, `IT-crif-azienda` | CRIF search (requires a signed delegation: upload via `PATCH /{id}`, template via `GET /{id}/delega`) |
| `IT-eredi-con-accettazione`, `IT-eredi-senza-accettazione` | Heirs reports |
| `IT-negativita` (+ `GET /IT-negativita/{id}/dettaglio`) | Negative events |
| `IT-richiesta` | Generic request listing/status/download |

## Worldwide KYC

- `POST /WW-kyc-full` — full check; targeted: `/WW-kyc-pep`, `/WW-kyc-sanction_list`, `/WW-kyc-adverse_media`
- `GET /WW-kyc-evidences`, `GET /WW-kyc-evidences/{id}`, `GET /WW-kyc-evidences/{id}/{entity_id}` — results and evidences
- `POST|GET|DELETE /WW-kyc-full-monitor` — continuous KYC monitoring

## Compliance

- Several Risk services fall under the Italian **TULPS** regulation (Art. 6 license): the account must have completed identity-document verification in the console before activation.
- Reports are paid and can be expensive — check wallet credit and confirm with the user before launching them.
- Returned personal data is subject to GDPR: use only for the stated purpose, never store it in the repo.

Full spec: https://console.openapi.com/oas/en/risk.openapi.json