# Cap

- **Base URL**: `https://cap.openapi.it`
- **OAS file**: [`knowledge/oas/cap.openapi.json`](../oas/cap.openapi.json)
- **Version**: 1.0.0

## Description

This service allows you to search italian cities and get their istat and cap codes. <br> <br> <h2>Testing</h2>Please note that the sandbox environment is loaded with a limited dataset and is intended to be used for testing purposes. Some search parameters might not work or return always the same data.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/cerca_comuni` | Search cities by name, region and/or province |
| GET | `/comuni_base/{istat_code}` | Get basic information about a city |
| GET | `/comuni_advance/{istat_code}` | Get more information about a city |
| GET | `/cap/{cap}` | Get a list of cities that match a cap |
| GET | `/regioni` | Get the list of italian regions |
| GET | `/province` | Get the list of italian provinces |
| GET | `/province/{code}` | Get an italian province |
| GET | `/comuni_soppressi` | Get a list of suppressed municipalities |
| GET | `/citta_metropolitane` | Get a list of Italian metropolitan cities |
