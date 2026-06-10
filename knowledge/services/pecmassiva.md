# PEC Massiva 1.0

- **Base URL**: `https://ws.pecmassiva.com`
- **OAS file**: [`knowledge/oas/pecmassiva.openapi.json`](../oas/pecmassiva.openapi.json)
- **Version**: 1.0.0

## Description

This service offers rest calls to send massive pecs and check the status of the delivery verification and receipt verification emails

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/send/{code}` | List of all the emails related to a given sending |
| DELETE | `/send/{code}` | Delete all the emails related to a given sending |
| POST | `/send` | Send a PEC to the recipient sent |
| GET | `/inbox/{id}` | Returns a single message in the INBOX |
| DELETE | `/inbox/{id}` | Delete an email |
| GET | `/inbox` | Get a list of emails in your inbox |
| GET | `/quota/{mailbox}` | Returns the usage of you INBOX |
