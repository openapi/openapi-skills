# Bollettini

- **Base URL**: `https://ws.pagasubito.it`
- **OAS file**: [`knowledge/oas/bollettini.openapi.json`](../oas/bollettini.openapi.json)
- **Version**: 1.0.0

## Description

Web service that allows you to pay bills, mav, rav, pago pa and car tax.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| POST | `/pay/{endpoint}` | Bill payment request |
| GET | `/pay/` | All request |
| GET | `/pay/{id}` | Single request |
| GET | `/pay/{id}/ricevuta` | Get the receipt |
