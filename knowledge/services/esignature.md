# E-Signature

- **Base URL**: `https://esignature.openapi.com`
- **OAS file**: [`knowledge/oas/esignature.openapi.json`](../oas/esignature.openapi.json)
- **Version**: 1.0.17

## Description

This API is a robust tool designed for developers and businesses looking to automate and integrate secure document signing processes into their applications. This API is fully compliant with eIDAS regulations, ensuring that all signatures meet strict European standards for legal validity.
 The documentation outlines a comprehensive suite of features, allowing users to implement various types of digital signatures, including Simple Electronic Signatures (SES) secured via OTP, Qualified Electronic Seals, and Massive Automatic Qualified Electronic Signatures (QES) for high-volume needs. Key functionalities include the ability to timestamp documents, manage certificates, and access detailed audit logs to track the entire signing lifecycle.
 The Swagger UI provided in the documentation enables developers to explore and test endpoints directly, managing signature flows, and verifying certification status facilitating a smooth integration process for dematerializing paper-based workflows.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/certificates` | Get a list of certificates |
| GET | `/certificates/{id}` | Get a certificate |
| POST | `/certificates/namirial-automatic` | Purchase a Namirial Automatic Certificate |
| POST | `/certificates/namirial-otp` | Purchase a Namirial OTP Certificate |
| GET | `/signatures` | Get a list of signatures |
| GET | `/signatures/{id}/{actionType}` | Download the signed Document, get the details, audit Trail or the validatedDocument of a signature |
| POST | `/EU-QES_automatic` | Create QES Signature using Massive Automatic Certificate |
| POST | `/EU-QES_otp` | Create QES Signature using Remote OTP Certificate |
| POST | `/EU-QES_eseal` | Create QES Signature using Remote E-seal Certificate |
| POST | `/EU-SES` | Create a SES request for one or more signers. |
| POST | `/verify` | Verify a signature |
| DELETE | `/signatures/{id}` | Delete the signed Document, the details, audit Trail and the validatedDocument of a signature |
