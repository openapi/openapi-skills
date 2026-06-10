# Gateway SMS

- **Base URL**: `https://ws.messaggisms.com`
- **OAS file**: [`knowledge/oas/gatewaysms.openapi.json`](../oas/gatewaysms.openapi.json)
- **Version**: 1.0.0

## Description

This web service exposes REST calls to send text messages directly from our gateway

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/messages/` | List of your messages |
| POST | `/messages/` | Send a sms message |
| GET | `/messages/{id}` | Get a single message |
| PUT | `/messages/{id}` | Message integration |
| DELETE | `/messages/{id}` | Delete a single message |
| GET | `/messages/{id}/recipients/` | Get the recipients from a message |
| GET | `/messages/{id}/recipients/{number}` | Get the recipient from a message |
