# Visure Camerali

- **Base URL**: `https://visurecamerali.openapi.it`
- **OAS file**: [`knowledge/oas/visurecamerali.openapi.json`](../oas/visurecamerali.openapi.json)
- **Version**: 1.0.0

## Description

Web service that allows you to obtain a company registration certificate or the financial statements.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/impresa` | Business search |
| GET | `/impresa/{cf_piva_id}` | Business search |
| GET | `/ordinaria-impresa-individuale` | List of your requests |
| POST | `/ordinaria-impresa-individuale` | Generates a request |
| GET | `/ordinaria-impresa-individuale/{id}` | Specific request |
| GET | `/ordinaria-impresa-individuale/{id}/allegati` | Download the document |
| GET | `/storica-impresa-individuale` | List of your requests |
| POST | `/storica-impresa-individuale` | Generates a request |
| GET | `/storica-impresa-individuale/{id}` | Specific request |
| GET | `/storica-impresa-individuale/{id}/allegati` | Download the document |
| GET | `/ordinaria-societa-capitale` | List of your requests |
| POST | `/ordinaria-societa-capitale` | Generates a request |
| GET | `/ordinaria-societa-capitale/{id}` | Specific request |
| GET | `/ordinaria-societa-capitale/{id}/allegati` | Download the document |
| GET | `/storica-societa-capitale` | List of your requests |
| POST | `/storica-societa-capitale` | Generates a request |
| GET | `/storica-societa-capitale/{id}` | Specific request |
| GET | `/storica-societa-capitale/{id}/allegati` | Download the document |
| GET | `/ordinaria-societa-persone` | List of your requests |
| POST | `/ordinaria-societa-persone` | Generates a request |
| GET | `/ordinaria-societa-persone/{id}` | Specific request |
| GET | `/ordinaria-societa-persone/{id}/allegati` | Download the document |
| GET | `/storica-societa-persone` | List of your requests |
| POST | `/storica-societa-persone` | Generates a request |
| GET | `/storica-societa-persone/{id}` | Specific request |
| GET | `/storica-societa-persone/{id}/allegati` | Download the document |
| GET | `/bilancio-ottico` | List of your requests |
| POST | `/bilancio-ottico` | Generates a request |
| GET | `/bilancio-ottico/{id}` | Specific request |
| GET | `/bilancio-ottico/{id}/allegati` | Download the document |
| GET | `/certificato-iscrizione` | List of your requests |
| POST | `/certificato-iscrizione` | Generates a request |
| GET | `/certificato-iscrizione/{id}` | Specific request |
| GET | `/certificato-iscrizione/{id}/allegati` | Download the document |
| GET | `/certificato-iscrizione-vigenza` | List of your requests |
| POST | `/certificato-iscrizione-vigenza` | Generates a request |
| GET | `/certificato-iscrizione-vigenza/{id}` | Specific request |
| GET | `/certificato-iscrizione-vigenza/{id}/allegati` | Download the document |
| GET | `/soci-attivi` | List of your requests |
| POST | `/soci-attivi` | Generates a request |
| GET | `/soci-attivi/{id}` | Specific request |
| GET | `/soci-attivi/{id}/allegati` | Download the document |
