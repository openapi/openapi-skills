# Marche Temporali

- **Base URL**: `https://ws.marchetemporali.com`
- **OAS file**: [`knowledge/oas/marchetemporali.openapi.json`](../oas/marchetemporali.openapi.json)
- **Version**: 1.0.0

## Description

This web service allows you to purchase time stamps and time stamp documents.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/marche` | List of your time stamps |
| GET | `/marche/{type}/{qty}` | Purchase of time stamps |
| GET | `/availability/{type}/{qty}` | Availability of time stamps |
| POST | `/check_lotto` | Control over consumption |
| POST | `/marca` | Time stamp a document |
| POST | `/analisi` | Analyze the marking |
