---
name: openapi-utilities
description: Openapi utility services - real-time currency exchange rates, HTML-to-PDF conversion (renders JavaScript), .it domain registration/management, and managed RAG (retrieval-augmented generation over your documents). Use for these one-off utility tasks.
---

# Openapi utilities

Bearer token required (see the `openapi-auth` skill).

## Exchange Rate — `https://exchange.altravia.com`

Single endpoint returning real-time currency exchange rates.

## PDF — `https://pdf.openapi.it`

One endpoint: generate a PDF from a URL or an HTML string; JavaScript is rendered.

## .it Domains — `https://domains.altravia.com`

Register and manage `.it` domains (availability, purchase, DNS/contacts management). Domain purchase is a paid, durable action — confirm with the user first.

## AI (RAG) — `https://ai.openapi.com`

Managed Retrieval-Augmented Generation:

- `POST /rag` — create a RAG; `GET /rag`, `GET /rag/{id}`, `DELETE /rag/{id}`
- `POST /rag/{id}/documents` — upload text documents or images (metadata supported for filtered search); `GET`/`DELETE` to list/remove
- `PATCH /rag/{id}` — start indexing
- Query: `POST /rag-search` (plain retrieval), `POST /rag-search-with-answer` (LLM answer), `POST /rag-conversation` (conversational)

Typical flow: create RAG → upload documents → index → query → delete when no longer needed.

Full specs: https://console.openapi.com/oas/en/exchange.openapi.json · …/pdf.openapi.json · …/domains.openapi.json · …/ai.openapi.json