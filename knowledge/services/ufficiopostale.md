# Ufficio Postale

- **Base URL**: `https://ws.ufficiopostale.com`
- **OAS file**: [`knowledge/oas/ufficiopostale.openapi.json`](../oas/ufficiopostale.openapi.json)
- **Version**: 1.1.0

## Description

This web service allows the delivery of postal products like Raccomandate, Telegrammi, Posta Prioritaria through Poste Italiane <ol><li>Create a new mail with a POST request</li><li>Check the prices and confirm it with a PATCH, or use <em>autoconfirm: true</em></li><li>Receive the status updates of your mail by providing a <em>callback</em> url</li></ol> <br> <strong>Note: </strong> There are some limitations regarding the size of a PDF document. Please read the 'document' field in the description of the endpoint that you want to use. <br><br> <h2>Error handling</h2> When a sending error occurs, the response will include a <code>message</code> and a <code>data.wrong_fields: []</code>: each element of <code>wrong_fields</code> is a string which indicates where the error was generated from. This makes it very easy to integrate in your front-end form, where you can highlight the wrong entries<h2>Testing</h2>When using the Sandbox environment, you will receive update callbacks a short time after creating the request with placeholder content. It is also possible, for some products, to force the execution of the callback in the sandbox environment.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/telegrammi/{id}` | Get information about a telegram |
| PATCH | `/telegrammi/{id}` | Confirm send of a telegram |
| GET | `/telegrammi/{id}/accettazione` | Download accettazione Telegrammi |
| GET | `/telegrammi/` | List your telegrams |
| POST | `/telegrammi/` | Create your request |
| GET | `/pricing/` | Get pricings |
| GET | `/pricing/{service}` | Get pricing for a specific service |
| GET | `/nazioni/{service}` | Get countries list |
| GET | `/nazioni/` | Get full countries list |
| GET | `/covers/` | Get all cover configurations |
| POST | `/covers/` | Create a new cover |
| GET | `/covers/{id}` | Get specific cover configuration |
| GET | `/covers/{id}/preview` | Get specific cover preview |
| GET | `/dug/` | List of all available dugs |
| GET | `/posta_massiva_top/` | List your Posta Massiva Top |
| POST | `/posta_massiva_top/` | Create your request |
| GET | `/posta_massiva_top/{id}` | List your single Posta Massiva Top |
| PATCH | `/posta_massiva_top/{id}` | Confirm send Posta Massiva Top |
| GET | `/posta_massiva_top/{id}/accettazione` | Download accettazione Posta Massiva Top |
| GET | `/posta_massiva/` | List your Posta Massiva |
| POST | `/posta_massiva/` | Create your request |
| GET | `/posta_massiva/{id}` | List your single Posta Massiva |
| PATCH | `/posta_massiva/{id}` | Confirm send Posta Massiva |
| GET | `/posta_massiva/{id}/accettazione` | Download accettazione Posta Massiva |
| GET | `/raccomandate_smart/` | List your raccomandate_smart |
| POST | `/raccomandate_smart/` | Create your request |
| GET | `/raccomandate_smart/{id}` | List your single raccomandata smart |
| PATCH | `/raccomandate_smart/{id}` | Confirm send Raccomandata Smart |
| GET | `/raccomandate_smart/{id}/accettazione` | Download accettazione Raccomandata Smart |
| GET | `/raccomandate/` | List your Raccomandate |
| POST | `/raccomandate/` | Create your request |
| GET | `/atti_giudiziari/{id}/destinatari/{IdDestinatario}/archiviazione` | Download archiviazione Atti Giudiziari |
| GET | `/atti_giudiziari/{id}/destinatari/{IdDestinatario}/ardigitale` | Download Digital Return Receipt (AR Digitale) |
| GET | `/atti_giudiziari/{id}/accettazione` | Download accettazione Atti Giudiziari |
| GET | `/atti_giudiziari/{id}` | Get information about a Atto Giudiziaro |
| PATCH | `/atti_giudiziari/{id}` | Confirm send Atti Giudiziari |
| GET | `/atti_giudiziari/` | List your Atti Giudiziari |
| POST | `/atti_giudiziari/` | Create your request |
| GET | `/ordinarie/` | List your requests |
| POST | `/ordinarie/` | Create your request |
| GET | `/ordinarie/{id}/destinatari/{IdDestinatario}/archiviazione` | Download archiviazione Ordinaria |
| GET | `/ordinarie/{id}` | Get information about a single mail |
| PATCH | `/ordinarie/{id}` | Confirm send Posta Ordinaria |
| GET | `/ordinarie/{id}/accettazione` | Download accettazione Posta Ordinaria |
| GET | `/prioritarie/` | List your requests |
| POST | `/prioritarie/` | Create your request |
| GET | `/prioritarie/{id}/destinatari/{IdDestinatario}/archiviazione` | Download archiviazione Prioritarie |
| GET | `/prioritarie/{id}` | Get information about a single priority mail |
| PATCH | `/prioritarie/{id}` | Confirm send Posta Prioritaria |
| GET | `/prioritarie/{id}/accettazione` | Download accettazione Posta Prioritaria |
| GET | `/raccomandate/{id}/destinatari/{IdDestinatario}/archiviazione` | Download archiviazione Raccomandata |
| GET | `/raccomandate/{id}/accettazione` | Download accettazione Raccomandate |
| GET | `/raccomandate/{id}` | Get information about a Raccomandata |
| PATCH | `/raccomandate/{id}` | Confirm send Posta Raccomandate |
| GET | `/tracking/{id}` | Track your product |
