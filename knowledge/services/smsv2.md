# Gateway SMS

- **Base URL**: `https://sms.openapi.com`
- **OAS file**: [`knowledge/oas/smsv2.openapi.json`](../oas/smsv2.openapi.json)
- **Version**: 1.2.7

## Description

The Gateway SMS API by Openapi provides a robust and scalable solution for integrating professional SMS messaging into your applications. Our service is designed to handle high volumes of messages with precision, offering dedicated endpoints for specific regions like Italy and Spain, as well as a Worldwide endpoint for global reach.

Each request undergoes a rigorous validation process that includes syntax checking for E.164 formats, character encoding detection (GSM-7 or UCS-2), and automatic segmentation for long messages. We prioritize security and compliance: the system automatically scans content for forbidden words to prevent abuse and ensures that all messages comply with legal requirements.

Developers can benefit from advanced features such as 'Dry Run' for testing without incurring costs, and real-time Webhook callbacks that provide immediate updates on delivery status. Messages have a maximum expiration time of 48 hours; if a message cannot be delivered within this window, its status will change to EXPIRED. Billing is transparent and dynamic; while regional messages have fixed rates, worldwide delivery costs are calculated post-sending to ensure the best market price. Please note that maintaining a minimum credit balance is required for worldwide operations, and strict penalties apply for policy violations to ensure the highest quality of service for all users.

## Endpoints

| Method | Path | Summary |
|---|---|---|
| POST | `/WW-messages` | Send a new SMS message (Worldwide) |
| POST | `/IT-messages` | Send a new SMS message (Italy) |
| POST | `/ES-messages` | Send a new SMS message (Spain) |
| POST | `/otp` | Send an OTP verification message |
| GET | `/messages` | Retrieve the list of sent messages |
| GET | `/messages/{id}` | Retrieve a single message |
