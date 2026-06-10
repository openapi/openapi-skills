# Invoice

- **Base URL**: `https://invoice.openapi.com`
- **OAS file**: [`knowledge/oas/invoice.openapi.json`](../oas/invoice.openapi.json)
- **Version**: 1.0.0

## Description


Complete API for managing Italian Electronic Invoices (Fatturazione Elettronica) and Digital Receipts (Scontrino Elettronico) in full compliance with tax regulations.

### Core Capabilities
- **Electronic Invoicing**: Comprehensive management of both Active (outgoing) and Passive (incoming) invoices. Automates transmission to the SDI (Sistema di Interscambio), handles digital signatures, and monitors invoice states in real-time. 
  > **IMPORTANT**: To receive supplier invoices, you need to register our Recipient Code on the Italian Revenue Agency's website. Please follow this step-by-step guide and provide the following code when required: **PIC7CPS**
- **Digital Receipts**: Seamless integration for creating and transmitting Smart Electronic Receipts. Replaces traditional telematic cash registers for online sales, ensuring direct synchronization with the Government Tax Portal (Cassetto Fiscale).
- **Compliance & Security**: Adheres to Italian Revenue Agency (Agenzia delle Entrate) standards. Supports secure data exchange and flexible configuration management for different business entities.

**IMPORTANT**: Please note that you can not send Receipts between 23:55 and 00:00 (Italian Time Zone) to the Italian Revenue Agency (Agenzia delle Entrate). For this reason, all receipts sent in this time period will be sent at the first available time, i.e. in the first minutes of the new day.

**NB**: To use the receipt transmission service, you must enable your credentials on the Italian Revenue Agency (Agenzia delle Entrate) portal by following the third-party assignment procedure.
The same credentials enabled on the portal through this procedure must be entered into your **IT-configuration** (section `receipts_authentication`).

👉 **[CLICK HERE TO DOWNLOAD THE ENABLEMENT PROCEDURE GUIDE](https://docs.openapi.it/Procedura-manuale-per-incarico.pdf)**

*Note: Only companies have the ability to designate a third party for sending receipts. Freelancers (liberi professionisti) and sole proprietorships (aziende individuali) cannot appoint a third-party representative and must manage the transmission directly using their own credentials..*

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/IT-invoices` | Retrieve all IT-invoices. |
| POST | `/IT-invoices` | Create/Send an invoice. |
| GET | `/IT-invoices/{id}` | Retrieve a specific invoice. |
| POST | `/IT-invoices_import` | Import external invoice. |
| GET | `/IT-configurations` | Retrieve all IT-configurations. |
| POST | `/IT-configurations` | Create a new IT-configuration. |
| GET | `/IT-configurations/{fiscal_id}` | Retrieve a single IT-configuration by fiscal_id. |
| PATCH | `/IT-configurations/{fiscal_id}` | Update an existing IT-configuration. |
| DELETE | `/IT-configurations/{fiscal_id}` | Delete a IT-configuration by fiscal_id. |
| GET | `/IT-receipts` | Retrieve all IT-receipts. |
| POST | `/IT-receipts` | Create a new receipt. |
| GET | `/IT-receipts/{id}` | Retrieve a single receipt by ID. |
| PATCH | `/IT-receipts/{id}` | Return one or more items from a receipt. |
| DELETE | `/IT-receipts/{id}` | Delete a receipt by ID. |
