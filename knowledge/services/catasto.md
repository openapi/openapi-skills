# Catasto

- **Base URL**: `https://catasto.openapi.it`
- **OAS file**: [`knowledge/oas/catasto.openapi.json`](../oas/catasto.openapi.json)
- **Version**: 3.0.0

## Description

This API provides structured access to official Italian real estate registry information related to **properties** and **subjects** (individuals and legal entities).

### **Dati Catastali**
The API allows consultation of the Italian Cadastre to retrieve detailed information about buildings and land plots and their registered holders. It is possible to:
- consult cadastral data for a specific property
- identify the registered holders of a property
- retrieve the list of properties owned by a physical or legal subject
- obtain detailed descriptions of properties associated with a subject
- determine the total number of land plots and buildings owned by a subject
- retrieve the list of properties located on a specific address\n
### **Visure Catastali**
The API includes the generation of the cadastral view PDF (Visura Catastale) for both properties and subjects.
### **Visure Ipotecarie**
The API includes access to **land registry searches (visure ipotecarie)**, which provide information about **registry entries (notes/formalities)** associated with properties or subjects, as recorded by the Italian Land Registry Offices (Conservatorie).
Through land registry search services it is possible to:
- identify the Land Registry Offices where a subject has
  regist entries (notes/formalities)
- retrieve the list of registry entries for a subject or property
  within a specific Land Registry Office
- obtain the detailed information of a single registry entry
### **Estratto Mappa**
Through this service you can get the pdf of the map extract from the land registry


## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/territorio` | List provinces |
| GET | `/territorio/{provincia_or_nome_provincia_or_id}` | Province detail |
| GET | `/territorio/{provincia_or_nome_provincia_or_id}/{comune}` | Municipality detail |
| GET | `/territorio/conservatorie` | List of Land Registry Offices |
| GET | `/territorio/conservatorie/{conservatoria_or_id}` | Land Registry Office municipalities and cadastral sections |
| POST | `/richiesta/{endpoint}/` | Creates a request |
| GET | `/richiesta` | Extracts all requests |
| GET | `/richiesta/{id}` | Detail of the request |
| POST | `/indirizzo` | Create address search request |
| GET | `/indirizzo` | Search for an address |
| GET | `/indirizzo/{id}` | Detail of the address |
| POST | `/visura_catastale` | Create visura request |
| GET | `/visura_catastale` | Extracts all visure |
| GET | `/visura_catastale/{id}` | Detail of the visura |
| GET | `/visura_catastale/{id}/documento` | Download visura |
| POST | `/ipotecarie-ispezione_nazionale` | National land registry inspection request |
| POST | `/ipotecarie-elenco-note` | Land registry notes list request |
| POST | `/ipotecarie-dettaglio-nota` | Land registry note detail request |
| GET | `/ipotecarie` | Extracts all mortgage inspections |
| GET | `/ipotecarie/{id}` | Detail of a mortgage inspection request |
| GET | `/ipotecarie/{id}/documento` | Download visura |
| POST | `/estratto_mappa` | Create a map extract request |
| GET | `/estratto_mappa` | Extracts all requests |
| GET | `/estratto_mappa/{id}` | Detail of the extract map |
| GET | `/estratto_mappa/{id}/documento` | Download map |
