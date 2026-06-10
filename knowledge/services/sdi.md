# SDI

- **Base URL**: `https://sdi.openapi.it`
- **OAS file**: [`knowledge/oas/sdi.openapi.json`](../oas/sdi.openapi.json)
- **Version**: 1.0.0

## Description

This service allows you to handle interactions with the Italian SDI (Sistema Di Interscambio)

 You can configure your account to send invoices directly to the legal storage by setting the api_configuration to your needs

## Before we begin

In order to receive supplier invoices, you need to register our Recipient Code on the Italian Revenue Agency's website. Please follow this step-by-step guide and provide the following code when required: JKKZDGR

 ## Get started:


1. Create an BusinessRegistryConfiguration with <b>POST /business_registry_configurations</b> for your <em>fiscal_id</em> and your *email*

1. A mail will be sent to your address to activate the account on the legal storage platform, if required.

1. Create an ApiConfiguration for your BusinessRegistryConfiguration with <b>POST /api_configurations</b>.
 This endpoint can be configured to receive all the notifications with a callback.

1. Create an XML invoice on the endpoint relative to your configuration

To see an example of the callback objects, plese check the **Callbacks** tab in the `/api_configurations` request<br><br><br>Please note that in the English translation:

<b>Customer invoices: Fatture attive</b>

<b>Supplier invoices: Fatture passive</b>

<b>Legal storage: Certificazione a norma</b>

## Interacting with the legal storage 

Legal Storage is the service that enables the legal preservation for your documents. All the stored documents are available into the legal storage management software, a third party software.

When creating a BusinessRegistryConfiguration, you will be asked to provide an email address which will be registed on the platform. You will receive an email containing all the steps to complete the registration and access the platform.

## Reactivating a BusinessRegistryConfiguration
If you receive a callback but you have no credit left on your wallet, your account will be temporarily suspended: when this happens, you will be sent a reminder email immediately. In order to re-activate it after a wallet recharge, you would need to submit a PATCH request to `/business_registry_configurations/{fiscal_id}/activate`

 ## Interacting with the Public Administration (PA)

Invoices to the Public Administration are automatically detected and signed.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| POST | `/business_registry_configurations` | Create a Business Registry Configuration  |
| GET | `/business_registry_configurations` | Retrieve a list of Business Registry Configuration  |
| GET | `/business_registry_configurations/{fiscal_id}` | Retrieve a Business Registry Configuration  |
| DELETE | `/business_registry_configurations/{fiscal_id}` | Delete a Business Registry Configuration  |
| PATCH | `/business_registry_configurations/{fiscal_id}/activate` | Re-activate a Business Registry Configuration  |
| POST | `/api_configurations` | Create an ApiConfiguration for a fiscal_id |
| GET | `/api_configurations` | Retrieve a list of ApiConfigurations |
| DELETE | `/api_configurations/{id}` | Delete of ApiConfigurations |
| POST | `/invoices` | Create an invoice |
| GET | `/invoices` | Retrieve collection of Invoice resources. |
| POST | `/invoices_signature` | Create an invoice applying the signature |
| POST | `/invoices_legal_storage` | Create an invoice applying legal storage |
| POST | `/invoices_signature_legal_storage` | Create an invoice applying the signature and legal storage |
| GET | `/invoices/{uuid}` | Retrieve Invoice resource. |
| GET | `/invoices_download/{uuid}` | Download a Invoice resource. |
| GET | `/invoices_notifications/{uuid}` | Retrieve collection of Invoice notifications. |
| POST | `/customer_invoice_imports` | Import customer invoice (fattura attiva) |
| POST | `/supplier_invoice_imports` | Import supplier invoice (fattura passiva) |
| POST | `/customer_invoice_imports_legal_storage` | Import customer invoice (fattura attiva) |
| POST | `/supplier_invoice_imports_legal_storage` | Import supplier invoice (fattura passiva) |
| POST | `/simulate/{type}` | Service Simulate |
