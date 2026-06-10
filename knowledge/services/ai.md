# RAG Management API

- **Base URL**: `https://ai.openapi.com`
- **OAS file**: [`knowledge/oas/ai.openapi.json`](../oas/ai.openapi.json)
- **Version**: 1.4.0

## Description

This documentation provides a comprehensive description of the API for managing Retrieval-Augmented Generation (RAG) systems. Through the APIs, it is possible to create a RAG, retrieve its details, initiate file indexing, and delete it. It is also possible to view all of a user's RAGs. Furthermore, the APIs allow for document management, enabling the upload of both text documents and images. Additionally, metadata can be specified for each document to filter search queries. The service's three main endpoints are dedicated to querying the RAG. These endpoints allow users to submit queries and receive responses that combine the power of generative models (LLMs) with specific knowledge extracted from the indexed documents.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| GET | `/rag` | Retrieve a list of RAG |
| POST | `/rag` | Create a new RAG |
| GET | `/rag/{id}` | Get RAG details |
| PATCH | `/rag/{id}` | Start RAG indexing |
| DELETE | `/rag/{id}` | Delete a RAG |
| GET | `/rag/{id}/documents` | List documents in a RAG |
| POST | `/rag/{id}/documents` | Upload a document |
| DELETE | `/rag/{id}/documents/{fileId}` | Delete a single document |
| POST | `/rag-search` | Perform a simple search |
| POST | `/rag-search-with-answer` | Perform a search with a generated answer |
| POST | `/rag-conversation` | Perform a conversational search |
