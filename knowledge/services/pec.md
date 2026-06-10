# Pec (Posta Elettronica Certificata)

- **Base URL**: `https://pec.openapi.it`
- **OAS file**: [`knowledge/oas/pec.openapi.json`](../oas/pec.openapi.json)
- **Version**: 1.0.0

## Description

Web service that allows you to activate a certified e-mail.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/domini_pec/{dominio}` | Domain check |
| GET | `/verifica_pec/{pec}` | Availability of a certified e-mail box |
| GET | `/pec` | List of your certified e-mail boxes |
| POST | `/pec` | Register a new certified mailbox |
| GET | `/pec/{id}` | Specific certified e-mail address |
| DELETE | `/pec/{id}` | Pec revocation |
| PATCH | `/pec/{id}/attivazione` | Certified e-mail activation |
| PATCH | `/pec/{id}/modifica` | Change mailbox space |
| PATCH | `/pec/{id}/conservazione` | Activation of conservation according to law |
| PATCH | `/pec/{id}/trasformazione` | Change box type |
| GET | `/pec/{id}/rinnovo` | Renewal of certified e-mail |
| POST | `/pec/{id}/multiutenza` | Add user |
| GET | `/comunica_pec` | List of your communications |
| POST | `/comunica_pec` | Communicate a certified e-mail |
| GET | `/comunica_pec/{id}` | Specific request for communication pec |
| PATCH | `/comunica_pec/{id}` | Upload the documents |
| GET | `/pec/{id}/modulo_attivazione` | Download the activation form |
| GET | `/pec/{id}/modulo_conservazione` | Download the activation form |
| GET | `/comunica_pec/{id}/procura_registro_imprese` | Download the power of attorney |
