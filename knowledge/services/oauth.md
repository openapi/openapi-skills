# Oauth

- **Base URL**: `https://oauth.openapi.it`
- **OAS file**: [`knowledge/oas/oauth.openapi.json`](../oas/oauth.openapi.json)
- **Version**: 1.0.0

## Description

Oauth is our essential authentication web service to use our services safely. Through this service you can receive, modify and see essential tokens to access all the rest methods of the bees that we provide. <br><br>Check out more at <a href="https://developers.openapi.it/services/oauth">https://developers.openapi.it/services/oauth</a><br>Explore all our services at <a href="https://developers.openapi.it/services">https://developers.openapi.it/services</a>

## Endpoints

| Method | Path | Summary |
|---|---|---|
| POST | `/token` | Create a token |
| GET | `/token` | List of all unexpired token |
| GET | `/token/{token}` | Finds a specific token |
| PUT | `/token/{token}` | Update the entire token object |
| PATCH | `/token/{token}` | Update part of token object |
| DELETE | `/token/{token}` | Delete a specific token |
| GET | `/scopes` | List of all scopes |
| GET | `/credit` | Your Openapi credit |
| GET | `/counters/total` | Your overall use |
| GET | `/counters/day/{day}` | Usage stats for a specific day |
| GET | `/counters/month/{month}` | Usage stats for a specific month |
| GET | `/counters/year/{year}` | Usage stats for a specific year |
