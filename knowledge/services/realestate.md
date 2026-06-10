# Realestate

- **Base URL**: `https://realestate.openapi.com`
- **OAS file**: [`knowledge/oas/realestate.openapi.json`](../oas/realestate.openapi.json)
- **Version**: 1.0.0

## Description

The API provides endpoints for accessing real estate data, including comparable property data and property valuation information. Users can query the API using various criteria such as property type, location, and contract type to retrieve relevant data.  Overall, the API simplifies access to real estate data, making it easy for developers to integrate property information into their applications.


**IN SANDBOX**

 In the sandbox environment, consistent test data will be returned for API requests. This ensures predictability and facilitates testing and development processes. Users can rely on the sandbox environment to receive the same predefined data for various scenarios, allowing them to validate their application's functionality reliably without impacting live data or systems.


## Endpoints

| Method | Path | Summary |
|---|---|---|
| POST | `/IT-rmv` | Retrieve property transaction details and  information |
| POST | `/IT-sqm_value_start` | Retrieve basic property information |
| POST | `/IT-sqm_value_advanced` | Retrieve detailed property information including sales and demographic data |
