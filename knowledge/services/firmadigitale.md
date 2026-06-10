# Firma Digitale

- **Base URL**: `https://ws.firmadigitale.com`
- **OAS file**: [`knowledge/oas/firmadigitale.openapi.json`](../oas/firmadigitale.openapi.json)
- **Version**: 1.0.0

## Description

Web service that allows you to purchase or renew Infocert or Aruba digital signatures, and to obtain digital identities.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/prodotti` | List of products |
| GET | `/richiesta` | List of your requests |
| GET | `/richiesta/{id}` | Specific request |
| PATCH | `/richiesta/{id}` | Update request |
| POST | `/richiesta/{codice_prodotto}` | Purchase and renew digital signatures |
| GET | `/richiesta/{id}/modulo` | Download the recognition form |
| POST | `/firma_elettronica/base` | [DEPRECATED] Request an e-signature |
| GET | `/firma_elettronica` | List all your past and pending requests |
| GET | `/firma_elettronica/{id}` | Get information on a sign request |
| GET | `/firma_elettronica/{id}/download` | Download your signed document |
| GET | `/firma_elettronica/{id}/audit` | Retrieve Audit Trail for Signed Document |
| POST | `/firma_elettronica_ui` | [DEPRECATED] Create a custom UI for e-signatures |
| GET | `/firma_elettronica_ui` | [DEPRECATED] List all your custom UIs |
| GET | `/firma_elettronica_ui/{id}` | [DEPRECATED] Get custom UI for e-signatures |
| DELETE | `/firma_elettronica_ui/{id}` | [DEPRECATED] Delete custom UI for e-signatures |
| GET | `/spid_personale` | Personal spid |
