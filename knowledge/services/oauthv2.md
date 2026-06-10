# Openapi OAuth Service

- **Base URL**: `https://oauth.openapi.com`
- **OAS file**: [`knowledge/oas/oauthv2.openapi.json`](../oas/oauthv2.openapi.json)
- **Version**: 2.1.0

## Description

Comprehensive OAuth management API that enables developers to create, manage, and monitor OAuth tokens with granular scope-based permissions. Features include token lifecycle management, usage statistics tracking, wallet-based billing, subscription handling, callback monitoring, and detailed analytics across multiple API domains.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| POST | `/tokens` | Create a new token |
| GET | `/tokens` | List or token detail |
| GET | `/scopes` | List of available scopes |
| GET | `/tokens/{token}` | Get token by ID |
| PATCH | `/tokens/{token}` | Update token by ID |
| DELETE | `/tokens/{token}` | Delete token by ID |
| GET | `/errors` | List error logs |
| GET | `/wallet` | Get wallet information |
| GET | `/callbacks` | List callbacks or get callback by ID |
| GET | `/stats` | Get overall API usage stats |
| GET | `/stats/ips` | Get list of unique IP addresses |
| GET | `/stats/apis` | Get stats grouped by API domain |
| GET | `/stats/apis/{domain}` | Get detailed stats for a specific API domain including scopes breakdown |
| GET | `/subscriptions` | List subscriptions or get subscription by ID |
| GET | `/scopes/{id}` | Get scope by ID |
| GET | `/callbacks/{id}` | Get callback by ID |
| GET | `/wallet/transactions` | Get wallet transactions history |
| GET | `/subscriptions/{id}` | Get subscription by ID |
