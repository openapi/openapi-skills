# Company

- **Base URL**: `https://company.openapi.com`
- **OAS file**: [`knowledge/oas/company.openapi.json`](../oas/company.openapi.json)
- **Version**: 1.0.0

## Description

This service provides REST calls to extract information on businesses and companies from VAT or TAX code (or other identifiers especially for non-European countries).

Beyond Italy, there are endpoints targeting individual European countries like France, Germany, Spain, or the United Kingdom (and many others), or three endpoints that encompass a search for every country in the world.

In addition to synchronous information, there is also the ability to intercept any changes that occur within a company through the new monitoring section.

At this <a href='https://docs.openapi.it/company-sandbox-examples.html' target='_blank'>link</a> you can find a list of companies that allow you to try the service in a sandbox environment.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/IT-aml/{vatCode_or_taxCode}` | Anti Money Laundering |
| POST | `/IT-aml/{vatCode_or_taxCode}` | Aml |
| GET | `/IT-marketing/{vatCode_or_taxCode}` | Marketing |
| POST | `/IT-marketing/{vatCode_or_taxCode}` | Marketing |
| GET | `/IT-stakeholders/{vatCode_or_taxCode}` | Stakeholders |
| POST | `/IT-stakeholders/{vatCode_or_taxCode}` | Stakeholders |
| GET | `/IT-full/{vatCode_or_taxCode}` | All the data |
| POST | `/IT-full/{vatCode_or_taxCode}` | Full |
| GET | `/IT-check_id/{id}` | Check request |
| GET | `/IT-start/{vatCode_taxCode_or_id}` | Basic data |
| GET | `/IT-advanced/{vatCode_taxCode_or_id}` | Advanced data |
| GET | `/IT-search` | Advanced search and data |
| GET | `/IT-shareholders/{vatCode_taxCode_or_id}` | Shareholders of a company |
| GET | `/IT-address/{vatCode_taxCode_or_id}` | Company address |
| GET | `/IT-pec/{vatCode_taxCode_or_id}` | Certified e-mail |
| GET | `/IT-closed/{vatCode_taxCode_or_id}` | Cessation of activity |
| GET | `/IT-vatgroup/{vatCode_or_id}` | Membership of a VAT group |
| GET | `/IT-sdicode/{vatCode_taxCode_or_id}` | SDI code of a company |
| GET | `/IT-legalforms` | All legal forms |
| GET | `/IT-legalforms/{code}` | Specific legal form |
| GET | `/EU-start/{vatCode_taxCode}` | Basic data |
| GET | `/IT-splitpayment/{taxCode_vatCode}` | A specific split-payment company |
| GET | `/IT-pa/{taxCode_vatCode}` | A specific public administration company |
| GET | `/IT-name/{vatCode_taxCode_or_id}` | Basic data |
| GET | `/IT-ubo/{vatCode_taxCode_or_id}` | Company's Ubo |
| GET | `/FR-start/{siretCode_sirenCode_vatCode_or_id}` | Basic data |
| GET | `/FR-advanced/{siretCode_sirenCode_vatCode_or_id}` | Advanced data |
| GET | `/FR-search` | Advanced search and data |
| GET | `/DE-start/{vatCode_companyNumber_or_id}` | Basic data |
| GET | `/DE-advanced/{vatCode_companyNumber_or_id}` | Advanced data |
| GET | `/ES-start/{vatCode_taxCode_or_id}` | Basic data |
| GET | `/ES-advanced/{vatCode_taxCode_or_id}` | Advanced data |
| GET | `/PT-start/{vatCode_taxCode_or_id}` | Basic data |
| GET | `/PT-advanced/{vatCode_taxCode_or_id}` | Advanced data |
| GET | `/GB-start/{vatCode_companyNumber_or_id}` | Basic data |
| GET | `/GB-advanced/{vatCode_companyNumber_or_id}` | Advanced data |
| GET | `/WW-start/{country}/{vatCode_companyNumber_taxCode_or_id}` | Basic data |
| GET | `/WW-advanced/{country}/{vatCode_companyNumber_taxCode_or_id}` | Advanced data |
| GET | `/WW-top/{country}/{vatCode_companyNumber_taxCode_or_id}` | Top data |
| GET | `/BE-start/{vatCode_companyNumber_taxCode_or_id}` | Basic data |
| GET | `/BE-advanced/{vatCode_companyNumber_taxCode_or_id}` | Advanced data |
| GET | `/AT-start/{vatCode_companyNumber_or_id}` | Basic data |
| GET | `/AT-advanced/{vatCode_companyNumber_or_id}` | Advanced data |
| GET | `/CH-start/{vatCode_companyNumber_taxCode_or_id}` | Basic data |
| GET | `/CH-advanced/{vatCode_companyNumber_taxCode_or_id}` | Advanced data |
| GET | `/PL-start/{vatCode_companyNumber_taxCode_regonNumber_or_id}` | Basic data |
| GET | `/PL-advanced/{vatCode_companyNumber_taxCode_regonNumber_or_id}` | Advanced data |
| GET | `/monitor` | List of all requests |
| POST | `/monitor` | New monitor request |
| GET | `/monitor/{id}` | Get specific request |
| DELETE | `/monitor/{id}` | Delete request monitor |
