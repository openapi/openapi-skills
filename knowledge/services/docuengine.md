# DocuEngine

- **Base URL**: `https://docuengine.openapi.com`
- **OAS file**: [`knowledge/oas/docuengine.openapi.json`](../oas/docuengine.openapi.json)
- **Version**: 1.0.0

## Description

This service offers rest calls to obtain a series of chamber of commerce, land registry or patronage documents.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/documents` | List of all services |
| GET | `/requests` | List of all requests |
| POST | `/requests` | New request |
| GET | `/requests/{id}` | Get specific request |
| PATCH | `/requests/{id}` | Updates the request |
| GET | `/requests/{id}/documents` | Get the documents |
