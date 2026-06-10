# Imprese

- **Base URL**: `https://imprese.openapi.it`
- **OAS file**: [`knowledge/oas/imprese.openapi.json`](../oas/imprese.openapi.json)
- **Version**: 1.0.0

## Description

This service provides REST calls to extract information on businesses and companies from simple parameters such as denomination or VAT number.

At this <a href='https://docs.openapi.it/imprese-sandbox-examples.html' target='_blank'>link</a> you can find a list of companies that allow you to try the service in a sandbox environment.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/base/{piva_cf_or_id}` | Basic data |
| GET | `/advance` | Advanced search and data |
| GET | `/advance/{piva_cf_or_id}` | Advanced search and data |
| GET | `/closed/{piva_cf_or_id}` | Cessation of activity |
| GET | `/gruppoiva/{piva_or_cf}` | Membership of a VAT group |
| GET | `/pec/{piva_cf_or_id}` | Certified e-mail |
| GET | `/autocomplete/{query}` | Search by name |
| GET | `/forma_giuridica` | All legal forms |
| GET | `/forma_giuridica/{codice_natura_giuridica}` | Specific legal form |
| GET | `/updates` | A list of updated companies |
| GET | `/updates/{timestamp}` | A list of updated companies |
| GET | `/soci/{piva_cf_or_id}` | Shareholders of a company |
| GET | `/codice_destinatario/{piva_cf_or_id}` | SDI code of a company |
