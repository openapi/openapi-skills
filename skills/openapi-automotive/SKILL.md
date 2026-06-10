---
name: openapi-automotive
description: Vehicle data through Openapi Automotive - look up cars, motorcycles, insurance and MOT status by license plate across Italy, UK, Germany, France, Spain, Portugal. Use for vehicle technical data and insurance validity checks by plate.
---

# Openapi Automotive

Base URL: `https://automotive.openapi.com` — vehicle information by license plate, sourced from the Ministry of Transport (European basis).

Authentication: Bearer token — see the `openapi-auth` skill.

## Endpoints

| Country | Endpoints |
|---|---|
| Italy | `GET /IT-car/{plate}` · `GET /IT-bike/{plate}` · `GET /IT-insurance/{plate}` |
| United Kingdom | `GET /UK-car/{plate}` · `GET /UK-bike/{plate}` · `GET /UK-mot/{plate}` |
| Germany | `GET /DE-car/{KBANumber}` (KBA number, not plate) |
| France | `GET /FR-car/{plate}` · `GET /FR-bike/{plate}` |
| Spain | `GET /ES-car/{plate}` · `GET /ES-bike/{plate}` |
| Portugal | `GET /PT-car/{plate}` · `GET /PT-insurance/{plate}` |

Async requests can be checked with `GET /check_id/{id}`.

```bash
curl -s https://automotive.openapi.com/IT-car/AB123CD \
  -H "Authorization: Bearer $OPENAPI_TOKEN"
```

## Sandbox

The sandbox returns predefined dummy data for test plates (or KBA numbers for Germany) — validate integrations there before paying for real lookups.

Full spec: https://console.openapi.com/oas/en/automotive.openapi.json