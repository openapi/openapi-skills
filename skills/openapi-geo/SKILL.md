---
name: openapi-geo
description: Italian geographic and property data through Openapi - geocoding/reverse geocoding, zip codes (CAP), municipalities/provinces/regions with ISTAT codes, Italian cadastre (catasto) property and owner lookups, visure catastali/ipotecarie, real estate valuations.
---

# Openapi geo & real estate data

Four services; all use a Bearer token (see the `openapi-auth` skill).

## Geocoding — `https://geocoding.openapi.it`

- `POST /geocode` — address → coordinates and place details
- `POST /reverse` — coordinates (or place ID) → address

## Zip Codes (CAP) — `https://cap.openapi.it`

- `GET /cerca_comuni` — search municipalities by name/region/province
- `GET /comuni_base/{istat_code}` / `GET /comuni_advance/{istat_code}` — municipality details
- `GET /cap/{cap}` — municipalities matching a zip code
- `GET /regioni`, `GET /province`, `GET /province/{code}`, `GET /citta_metropolitane`, `GET /comuni_soppressi`

Sandbox has a limited dataset; some parameters return fixed data.

## Catasto (Italian cadastre) — `https://catasto.openapi.it`

Official paid lookups; document generation is async (`POST` → `GET /{id}` → `GET /{id}/documento`). Subject searches return personal data — GDPR care.

- Cadastral data requests: `POST /richiesta/{endpoint}/`, status via `GET /richiesta/{id}` (property data, holders, properties by subject, counts)
- Address search: `POST /indirizzo`, `GET /indirizzo/{id}` — properties at an address
- Visura catastale (PDF): `POST /visura_catastale` → `GET /visura_catastale/{id}/documento`
- Visure ipotecarie (land registry): `POST /ipotecarie-ispezione_nazionale`, `POST /ipotecarie-elenco-note`, `POST /ipotecarie-dettaglio-nota` → `GET /ipotecarie/{id}[/documento]`
- Map extract (PDF): `POST /estratto_mappa` → `GET /estratto_mappa/{id}/documento`
- Reference data: `GET /territorio` (provinces/municipalities), `GET /territorio/conservatorie` (Land Registry Offices)

## Real Estate — `https://realestate.openapi.com`

- `POST /IT-rmv` — property transaction details (comparables)
- `POST /IT-sqm_value_start` — basic €/sqm valuation
- `POST /IT-sqm_value_advanced` — detailed valuation with sales and demographic data

Sandbox returns consistent predefined data for testing.

Full specs: https://console.openapi.com/oas/en/geocoding.openapi.json · …/cap.openapi.json · …/catasto.openapi.json · …/realestate.openapi.json