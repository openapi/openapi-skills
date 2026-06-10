---
name: openapi-risk
description: Assess the reliability of Italian/worldwide companies and individuals through Openapi Risk - credit scores, CRIF reports, KYC checks, negative events, protests, personal/economic data. Use for due diligence, creditworthiness, AML/KYC questions.
---

# Openapi Risk

Base URL: `https://risk.openapi.com` — reports and scores on natural and legal persons, sourced from CRIF, the Protest Register and other official registers.

Authentication: Bearer token — see the `openapi-auth` skill.

## Main capabilities (56 endpoints — see reference for the full list)

- **Credit score**: `GET /IT-creditscore-top/{vat_or_taxcode}` for a quick Italian company score; deeper CRIF-based reports via async endpoints.
- **KYC**: `POST /WW-kyc-full` for worldwide know-your-customer checks.
- **Negative events**: protests, prejudicial acts, bankruptcies on companies and individuals.
- **Person data**: personal data, phones, economic indicators of natural/legal persons.

Most heavy reports follow the async pattern (start → poll with `id` or `callback`) described in the [platform guide](../../knowledge/platform-guide.md#async-request-pattern).

## Compliance

- Several Risk services fall under the Italian **TULPS** regulation: the account must have completed identity-document verification in the console before activation ([FAQ](../../knowledge/faq.md)).
- Reports are paid per request and can be expensive — check wallet credit and confirm with the user before launching them.
- Personal data returned is subject to GDPR: use it only for the stated, legitimate purpose; do not store it in the repo.

## References

Full spec: [knowledge/oas/risk.openapi.json](../../knowledge/oas/risk.openapi.json) · endpoint list: [knowledge/services/risk.md](../../knowledge/services/risk.md)