---
name: openapi-geo
description: Italian geographic and property data through Openapi - geocoding/reverse geocoding, zip codes (CAP), municipalities/provinces/regions with ISTAT codes, Italian cadastre (catasto) property and owner lookups, real estate valuations and comparables.
---

# Openapi geo & real estate data

Four services; all use a Bearer token (see the `openapi-auth` skill).

| Service | Base URL | Use for |
|---|---|---|
| Geocoding | `https://geocoding.openapi.it` | Address → coordinates (`/geocode`) and coordinates → address (`/reverse`) |
| Zip Codes (CAP) | `https://cap.openapi.it` | Italian municipalities, zip codes, provinces, regions, metropolitan cities, ISTAT codes, suppressed municipalities |
| Catasto | `https://catasto.openapi.it` | Italian cadastre: cadastral data of buildings/land and their registered holders (by property or by subject) |
| Real Estate | `https://realestate.openapi.com` | Property valuations and comparables by type, location, contract type |

## Typical lookups

- Zip → municipalities: `GET /comuni?cap=...` style search; municipality ↔ ISTAT code lookups; full lists of regions/provinces.
- Cadastre queries are official paid lookups, several async — confirm before running many of them; subject searches return personal data (GDPR care).
- Real estate valuation: query `/valuation` with property type, location and contract type.

## Notes

- CAP sandbox has a limited dataset; some parameters return fixed data.
- Specs: [geocoding](../../knowledge/oas/geocoding.openapi.json) · [cap](../../knowledge/oas/cap.openapi.json) · [catasto](../../knowledge/oas/catasto.openapi.json) · [realestate](../../knowledge/oas/realestate.openapi.json) — endpoint lists in [knowledge/services/](../../knowledge/services/).