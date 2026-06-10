---
name: openapi-automotive
description: Vehicle data through Openapi Automotive - look up cars, motorcycles and insurance status by license plate (Italian and European). Use for "whose car is this plate", vehicle technical data, insurance validity checks.
---

# Openapi Automotive

Base URL: `https://automotive.openapi.com` — vehicle information by license plate, sourced from the Ministry of Transport (European basis).

Authentication: Bearer token — see the `openapi-auth` skill.

## Endpoints (14 — see reference for the full list)

- Cars: vehicle technical data by plate
- Motorcycles: same for two-wheelers
- Insurance: check insurance coverage status of a plate

## Sandbox

A dedicated sandbox simulates requests with test plates — use it to validate integrations before paying for real lookups.

## References

Full spec: [knowledge/oas/automotive.openapi.json](../../knowledge/oas/automotive.openapi.json) · endpoint list: [knowledge/services/automotive.md](../../knowledge/services/automotive.md)