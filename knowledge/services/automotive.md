# Automotive

- **Base URL**: `https://automotive.openapi.com`
- **OAS file**: [`knowledge/oas/automotive.openapi.json`](../oas/automotive.openapi.json)
- **Version**: 1.0.0

## Description

The API provides a vehicle information consulting service based on license plate numbers, with three distinct endpoints for cars, motorcycles, and insurance checks. Developed from the "automotive" endpoint, the service delivers accurate and reliable details about vehicles.


**IN SANDBOX**

The Sandbox service provides a testing environment for the Automotive API, allowing users to simulate requests and receive sample data for evaluation purposes. In this environment, users can test the service's functionality by submitting queries using either the License Plate (for most endpoints) or the KBANumber (for the German endpoint). The key distinction is that, instead of retrieving real-world data, the Sandbox service returns predefined, dummy data designed for testing scenarios. This enables users to assess their integration with the API, validate their implementation, and familiarize themselves with the expected responses before moving to a production environment.


## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/check_id/{id}` | Check request |
| GET | `/IT-car/{LicensePlate}` | Information about a car |
| GET | `/IT-bike/{LicensePlate}` | Information about a motorcycle |
| GET | `/IT-insurance/{LicensePlate}` | Information about car insurance |
| GET | `/UK-car/{LicensePlate}` | Information about a car |
| GET | `/UK-bike/{LicensePlate}` | Information about a motorcycle |
| GET | `/UK-mot/{LicensePlate}` | Information about car mot |
| GET | `/DE-car/{KBANumber}` | Information about a car |
| GET | `/FR-car/{LicensePlate}` | Information about a car |
| GET | `/FR-bike/{LicensePlate}` | Information about a motorcycle |
| GET | `/PT-car/{LicensePlate}` | Information about a car |
| GET | `/PT-insurance/{LicensePlate}` | Information about car insurance |
| GET | `/ES-car/{LicensePlate}` | Information about a car |
| GET | `/ES-bike/{LicensePlate}` | Information about a motorcycle |
