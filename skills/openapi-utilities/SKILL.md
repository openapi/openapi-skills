---
name: openapi-utilities
description: Openapi utility services - real-time currency exchange rates, HTML-to-PDF conversion (renders JavaScript), .it domain registration/management, and managed RAG (retrieval-augmented generation over your documents). Use for these one-off utility tasks.
---

# Openapi utilities

Bearer token required (see the `openapi-auth` skill).

| Service | Base URL | Use for |
|---|---|---|
| Exchange Rate | `https://exchange.altravia.com` | Real-time currency exchange rates (single endpoint) |
| PDF | `https://pdf.openapi.it` | Generate a PDF from a URL or HTML string; renders JavaScript |
| .it Domains | `https://domains.altravia.com` | Register and manage `.it` domains (purchase is a paid, durable action — confirm first) |
| AI (RAG) | `https://ai.openapi.com` | Create RAGs, upload/index documents and images, query them |

## AI (RAG) workflow

1. Create a RAG instance.
2. Upload text documents/images and start indexing.
3. Query the RAG; delete it when no longer needed.

## References

Specs: [exchange](../../knowledge/oas/exchange.openapi.json) · [pdf](../../knowledge/oas/pdf.openapi.json) · [domains](../../knowledge/oas/domains.openapi.json) · [ai](../../knowledge/oas/ai.openapi.json) — endpoint lists in [knowledge/services/](../../knowledge/services/).