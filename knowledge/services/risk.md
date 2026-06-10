# Risk

- **Base URL**: `https://risk.openapi.com`
- **OAS file**: [`knowledge/oas/risk.openapi.json`](../oas/risk.openapi.json)
- **Version**: 1.0.0

## Description

Web service that allows you to obtain a crif search on a person or a company and personal information about a natural or legal person such as personal data, telephones and the presence of negative events.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/IT-crif-persona` | List of your requests about the person |
| POST | `/IT-crif-persona` | Request for a crif search on a person |
| GET | `/IT-crif-persona/{id}` | Specific request |
| PATCH | `/IT-crif-persona/{id}` | Upload the delegation file |
| GET | `/IT-crif-persona/{id}/delega` | Download the delegation file |
| GET | `/IT-patrimoniale-persona` | List of your requests about the person |
| GET | `/IT-patrimoniale-persona/{id}` | Specific request |
| GET | `/IT-patrimoniale-persona/{id}/download` | This method allows you to directly download the pdf file with the required data. |
| POST | `/IT-patrimoniale-persona/` | Request for a patrimoniale search on a person |
| GET | `/IT-patrimoniale-persona-top` | List of your requests about the person |
| GET | `/IT-patrimoniale-persona-top/{id}` | Specific request |
| GET | `/IT-patrimoniale-persona-top/{id}/download` | This method allows you to directly download the pdf file with the required data. |
| POST | `/IT-patrimoniale-persona-top/` | Request for a patrimoniale search on a person |
| GET | `/IT-report-persona-top` | List of your requests about the person |
| GET | `/IT-report-persona-top/{id}` | Specific request |
| GET | `/IT-report-persona-top/{id}/download` | This method allows you to directly download the pdf file with the required data. |
| POST | `/IT-report-persona-top/` | Request for a patrimoniale search on a person |
| GET | `/IT-report-persona` | List of your requests about the person |
| GET | `/IT-report-persona/{id}` | Specific request |
| GET | `/IT-report-persona/{id}/download` | This method allows you to directly download the pdf file with the required data. |
| POST | `/IT-report-persona/` | Request for a report-persona search on a person |
| GET | `/IT-eredi-con-accettazione` | List of your requests about the person |
| GET | `/IT-eredi-con-accettazione/{id}` | Specific request |
| GET | `/IT-eredi-con-accettazione/{id}/download` | This method allows you to directly download the pdf file with the required data. |
| POST | `/IT-eredi-con-accettazione/` | Request for a eredi-con-accettazione to search on a person |
| GET | `/IT-eredi-senza-accettazione` | List of your requests about the person |
| GET | `/IT-eredi-senza-accettazione/{id}` | Specific request |
| GET | `/IT-eredi-senza-accettazione/{id}/download` | This method allows you to directly download the pdf file with the required data. |
| POST | `/IT-eredi-senza-accettazione/` | Request for a eredi-senza-accettazione to search on a person |
| GET | `/IT-report-azienda` | List of your requests about the company |
| GET | `/IT-report-azienda/{id}` | Specific request |
| GET | `/IT-report-azienda/{id}/download` | This method allows you to directly download the pdf file with the required data. |
| POST | `/IT-report-azienda/` | Request for a report-azienda to search on a person |
| GET | `/IT-report-azienda-top` | List of your requests about the company |
| GET | `/IT-report-azienda-top/{id}` | Specific request |
| GET | `/IT-report-azienda-top/{id}/download` | This method allows you to directly download the pdf file with the required data. |
| POST | `/IT-report-azienda-top/` | Request for a report-azienda-top to search on a person |
| GET | `/IT-crif-azienda` | List of your requests about the company |
| POST | `/IT-crif-azienda` | Request for a crif search on a company |
| GET | `/IT-crif-azienda/{id}` | Specific request |
| PATCH | `/IT-crif-azienda/{id}` | Upload the delegation file |
| GET | `/IT-crif-azienda/{id}/delega` | Download the delegation file |
| GET | `/IT-verifica_cf/{codice_fiscale}` | Check fiscal code |
| GET | `/IT-creditscore-start/{vatCode_taxCode_or_id}` | Check risk score |
| GET | `/IT-creditscore-advanced/{vatCode_taxCode_or_id}` | Check risk score |
| GET | `/IT-creditscore-top/{vatCode_taxCode_or_id}` | Check risk score |
| GET | `/IT-richiesta` | List of your requests |
| GET | `/IT-richiesta/{id}` | Specific request |
| GET | `/IT-richiesta/{id}/download` | Download pdf report |
| POST | `/IT-negativita` | Create a request |
| GET | `/IT-negativita/{id}/dettaglio` | Negativity detail |
| POST | `/WW-kyc-full` | Create a full kyc request |
| POST | `/WW-kyc-pep` | Create a pep kyc request |
| POST | `/WW-kyc-sanction_list` | Create a sanction_list kyc request |
| POST | `/WW-kyc-adverse_media` | Create a adverse_media kyc request |
| GET | `/WW-kyc-evidences` | List of your kyc requests |
| GET | `/WW-kyc-evidences/{id}` | Specific kyc request |
| GET | `/WW-kyc-evidences/{id}/{entity_id}` | Get entity evidences |
| POST | `/WW-kyc-full-monitor` | Create a full kyc monioring |
| GET | `/WW-kyc-full-monitor` | List of your kyc monitoring |
| GET | `/WW-kyc-full-monitor/{id}` | Specific kyc monitoring |
| DELETE | `/WW-kyc-full-monitor/{id}` | Delete kyc monitoring |
