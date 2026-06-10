# Openapi services catalog

The console API Library lists 28 APIs. Each entry below links the OAS snapshot in [`oas/`](oas/) and the generated endpoint reference in [`services/`](services/). Newer services live on `*.openapi.com`, legacy ones on `*.openapi.it`, `ws.*` or `*.altravia.com` hosts.

## Platform / authentication

| API | Base URL | Reference | Notes |
|---|---|---|---|
| OAuth v2 | `https://oauth.openapi.com` | [services/oauthv2.md](services/oauthv2.md) | Token creation/management, scopes, wallet, stats, subscriptions. **Use this.** |
| OAuth (v1) | `https://oauth.openapi.it` | [services/oauth.md](services/oauth.md) | **Deprecated** — replaced by OAuth v2. |

## Business information

| API | Base URL | Reference | Notes |
|---|---|---|---|
| Company | `https://company.openapi.com` | [services/company.md](services/company.md) | Company data worldwide: IT (start/advanced/full), EU countries, FR, worldwide search, credit score. |
| Imprese | `https://imprese.openapi.it` | [services/imprese.md](services/imprese.md) | Legacy Italian company lookup by VAT/denomination. |
| Risk | `https://risk.openapi.com` | [services/risk.md](services/risk.md) | CRIF reports, credit score, KYC, negative events on persons and companies. |
| Trust | `https://trust.openapi.com` | [services/trust.md](services/trust.md) | Verification of emails, mobile numbers, IPs, URLs, PEC, fiscal codes, license plates. |

## Official documents

| API | Base URL | Reference | Notes |
|---|---|---|---|
| DocuEngine | `https://docuengine.openapi.com` | [services/docuengine.md](services/docuengine.md) | Official documents from Business Register, Revenue Agency, Municipalities, INPS. |
| Visure Camerali (Chamber of Commerce Company Registrations) | `https://visurecamerali.openapi.it` | [services/visurecamerali.md](services/visurecamerali.md) | Company registration reports (visure), financial statements. |
| Visengine | `https://visengine2.altravia.com` | [services/visengine.md](services/visengine.md) | Documents from Chamber of Commerce, INPS, Tax Agency (older engine). |

## Real estate & geo

| API | Base URL | Reference | Notes |
|---|---|---|---|
| Italian Cadastre (Catasto) | `https://catasto.openapi.it` | [services/catasto.md](services/catasto.md) | Cadastral data and property owners in Italy. |
| Real Estate | `https://realestate.openapi.com` | [services/realestate.md](services/realestate.md) | Comparable properties and valuations. |
| Geocoding | `https://geocoding.openapi.it` | [services/geocoding.md](services/geocoding.md) | Forward and reverse geocoding. |
| Zip Codes (CAP) | `https://cap.openapi.it` | [services/cap.md](services/cap.md) | Italian zip codes, municipalities, provinces, regions, ISTAT codes. |

## Communication

| API | Base URL | Reference | Notes |
|---|---|---|---|
| SMS v2 | `https://sms.openapi.com` | [services/smsv2.md](services/smsv2.md) | SMS with custom sender, delivery reports (IT, ES, worldwide). |
| SMS v1 (Gateway SMS) | `https://ws.messaggisms.com` | [services/gatewaysms.md](services/gatewaysms.md) | **Deprecated** — replaced by SMS v2. |
| Italian certified e-mail (PEC) | `https://pec.openapi.it` | [services/pec.md](services/pec.md) | Activate and manage Legalmail certified e-mail. |
| Massive REM (PEC Massiva) | `https://ws.pecmassiva.com` | [services/pecmassiva.md](services/pecmassiva.md) | Bulk certified e-mail sending with delivery/receipt verification. |
| Postal Service (Ufficio Postale) | `https://ws.ufficiopostale.com` | [services/ufficiopostale.md](services/ufficiopostale.md) | Registered mail, telegrams, priority mail via Poste Italiane. |

## Digital trust & signatures

| API | Base URL | Reference | Notes |
|---|---|---|---|
| eSignature | `https://esignature.openapi.com` | [services/esignature.md](services/esignature.md) | eIDAS-compliant digital signatures. |
| Digital Signature (Firma Digitale) | `https://ws.firmadigitale.com` | [services/firmadigitale.md](services/firmadigitale.md) | **Deprecated** — replaced by eSignature. Infocert/Aruba kits, digital identities. |
| Time Stamping (Marche Temporali) | `https://ws.marchetemporali.com` | [services/marchetemporali.md](services/marchetemporali.md) | Purchase and apply qualified timestamps. |

## Invoicing & payments

| API | Base URL | Reference | Notes |
|---|---|---|---|
| Invoice | `https://invoice.openapi.com` | [services/invoice.md](services/invoice.md) | Italian electronic invoices and digital receipts, SDI transmission, legal storage. |
| SDI | `https://sdi.openapi.it` | [services/sdi.md](services/sdi.md) | Direct interaction with the Sistema di Interscambio (send/receive invoices). |
| Paying Bills (Bollettini) | `https://ws.pagasubito.it` | [services/bollettini.md](services/bollettini.md) | Pay bills, MAV, RAV, PagoPA, car tax. |

## Other

| API | Base URL | Reference | Notes |
|---|---|---|---|
| AI (RAG) | `https://ai.openapi.com` | [services/ai.md](services/ai.md) | Managed Retrieval-Augmented Generation: create RAGs, index documents, query. |
| Automotive | `https://automotive.openapi.com` | [services/automotive.md](services/automotive.md) | Vehicle data by license plate (cars, motorcycles, insurance). |
| Exchange Rate | `https://exchange.altravia.com` | [services/exchange.md](services/exchange.md) | Real-time currency exchange rates. |
| .it Domains | `https://domains.altravia.com` | [services/domains.md](services/domains.md) | Register and manage .it domains. |
| PDF | `https://pdf.openapi.it` | [services/pdf.md](services/pdf.md) | HTML/URL to PDF (renders JavaScript). |

## Deprecation summary

| Deprecated API | Replacement |
|---|---|
| OAuth v1 (`oauth.openapi.it`) | OAuth v2 (`oauth.openapi.com`) |
| SMS v1 / Gateway SMS (`ws.messaggisms.com`) | SMS v2 (`sms.openapi.com`) |
| Digital Signature (`ws.firmadigitale.com`) | eSignature (`esignature.openapi.com`) |