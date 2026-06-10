# Trust

- **Base URL**: `https://trust.openapi.com`
- **OAS file**: [`knowledge/oas/trust.openapi.json`](../oas/trust.openapi.json)
- **Version**: 1.0.0

## Description

Use this API to verify the validity and trustworthiness of data such as email addresses and mobile phone numbers.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/mobile-start/{id}` | Retrive a request |
| POST | `/mobile-start/{mobile-phone-number}` | Create a new HLR request |
| GET | `/email-start/{id}` | Retrieve an email validation request |
| POST | `/email-start/{email}` | Create a new email validation request |
| GET | `/mobile-advanced/{id}` | Retrieve an advanced mobile phone validation request |
| POST | `/mobile-advanced/{mobile-phone-number}` | Create a new advanced mobile phone validation request |
| GET | `/email-advanced/{id}` | Retrieve an advanced email validation request |
| POST | `/email-advanced/{email}` | Create a new advanced email validation request |
| GET | `/ip-advanced/{id}` | Retrieve an advanced IP analysis request |
| POST | `/ip-advanced/{ip}` | Create a new advanced IP analysis request |
| GET | `/url-advanced/{id}` | Retrieve an advanced URL scan request |
| POST | `/url-advanced/{url}` | Create a new advanced URL scan request |
| GET | `/idv-flash-start/{id}` | Retrieve an Identity Verification request |
| GET | `/idv-flash-advanced/{id}` | Retrieve an Advanced Identity Verification request |
| GET | `/idv-expert/{id}` | Retrieve an Expert Identity Verification request |
| GET | `/idv-flash-start/{id}/front` | Retrieve document front image |
| GET | `/idv-flash-start/{id}/back` | Retrieve document back image |
| GET | `/idv-flash-advanced/{id}/front` | Retrieve document front image |
| GET | `/idv-flash-advanced/{id}/back` | Retrieve document back image |
| GET | `/idv-flash-advanced/{id}/face` | Retrieve face capture image |
| GET | `/idv-expert/{id}/front` | Retrieve document front image |
| GET | `/idv-expert/{id}/back` | Retrieve document back image |
| GET | `/idv-expert/{id}/face` | Retrieve face capture image |
| POST | `/idv-flash-start` | Create a new Identity Verification request |
| POST | `/idv-flash-advanced` | Create a new Advanced Identity Verification request |
| POST | `/idv-expert` | Create a new Expert Identity Verification request |
