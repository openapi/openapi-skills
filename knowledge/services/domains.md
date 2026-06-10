# Domains

- **Base URL**: `https://domains.altravia.com`
- **OAS file**: [`knowledge/oas/domains.openapi.json`](../oas/domains.openapi.json)
- **Version**: 1.0.0

## Description

This web service allows you to purchase and manage .it domains.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/contact` | List of your contacts |
| POST | `/contact` | Create new contact |
| GET | `/contact/{handle}` | Single contact |
| PUT | `/contact/{handle}` | Update a contact |
| DELETE | `/contact/{handle}` | Delete a contact |
| GET | `/check/{domain}` | Check domain |
| GET | `/domain` | List of your domains |
| POST | `/domain` | Register a new domain |
| GET | `/domain/{domain}` | Single domain |
| PUT | `/domain/{domain}` | Update a domain |
| DELETE | `/domain/{domain}` | Delete a domain |
| GET | `/domain/{domain}/registrant` | Get the registrant |
| GET | `/domain/{domain}/admin` | Get the admin |
| GET | `/domain/{domain}/tech` | Get the tech |
| DELETE | `/domain/{domain}/tech/{handle}` | Delete the tech |
