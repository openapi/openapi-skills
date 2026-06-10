# Openapi Console FAQ

> Source: https://console.openapi.com/support (extracted 2026-06-10)

## Account

**How can I sign up on Openapi?**
You can sign up via: (1) Google account, (2) GitHub account, (3) email address. With email you receive instructions within a few seconds to complete the registration.

**I did not receive the email after registering, what should I do?**
The email is only sent when email was chosen as registration method. Check the Promotions/Updates tab (Gmail) and the spam folder; otherwise contact the [Support Form](https://openapi.it/en/support).

**Can I change my password?**
Yes, if you registered by email: in your personal area, section Preferences.

**I have forgotten my password, what can I do?**
- Email registration: click "I forgot my password" in the login area.
- Google account: follow Google's account-recovery procedure.
- GitHub account: use GitHub's "Forgot password?".

**Is it possible to add an additional user to my Openapi account?**
No — one email per account. An additional email can be added for notifications only.

**Can I delete my Openapi account?**
Yes, in Preferences → "Delete your account". WARNING: data is permanently deleted and tokens are invalidated; this cannot be undone.

## API usage

**What are the differences between individual and subscription requests?**
Requests are paid from the wallet ("purse", per request) or via subscription. Subscriptions have a monthly/yearly request limit but a lower cost per request; single requests are unlimited as long as you have credit.

**Is it possible to access free requests?**
Yes, some APIs include daily and/or monthly free requests, shown in the API's Price section.

**How does the Sandbox area work?**
The sandbox is for testing before production. Test requests are free, but you must set up "sandbox credit" first. Sandbox responses are illustrative and may be incomplete; some APIs provide test VAT numbers.

**How do I create the token?**
Two ways: via the OAuth API (POST to the token endpoint) or via the "New Token" tool in the console's Authentication section.

**Where can I view my tokens?**
In your private area under Authentication, where you can also create new tokens (+New Token).

**Can I check my consumption?**
Yes — per single call, per subscription, and per API in the dedicated tab.

**How can I check rate limits on endpoints?**
Any limits are indicated in the descriptions of the individual APIs.

**From which sources does the data provided by Openapi come?**
Only official and certified sources — see [company-profile.md](company-profile.md#data-sources) for the full list (Revenue Agency, Chamber of Commerce, CRIF, INPS, Poste Italiane, Ministry of Transport, CNR, IndicePA, Protest Register, certification authorities, CAF, company websites/socials, proprietary processing).

**Why is the identity document submission procedure necessary to activate certain APIs?**
Some services fall under the Italian TULPS regulation (Article 6 license), which requires identification of the requesting individual or company.

**Which document should I upload for identity verification?**
A driver's license, passport, or identity card of the legal representative, of a person with signing powers, or of a delegate (e.g., IT manager or administrative office).

**Can I contact you for assistance?**
Yes, via the [Support Form](https://openapi.it/en/support).

## Payments and subscriptions

**I would like to top up my credit, how do I do this?**
Personal area → Transactions → "Recharge your wallet". You can also enable Auto Recharge (automatic top-up below a threshold; credit card only).

**What are the payment methods?**
PayPal, credit card, bank transfer. Credit card requires recurring payment for monthly/annual subscriptions (deactivatable anytime). Auto-recharge is available for credit card only.

**How does Auto-Recharge work?**
Set a minimum threshold and a top-up amount at purchase time; the top-up triggers only when credit falls below the threshold. Deactivatable anytime; credit card only.

**I would like to activate a subscription, how can I do?**
Select the desired plan in the dedicated section at the API level.

**How do monthly and annual subscriptions work?**
Monthly: 30 days, unused requests do not roll over. Annual: 365 days; requests (net of API-specific instalment limits) can be used at any pace over the year.

**Annual vs monthly-paid-12-months-in-advance?**
Annual has no monthly consumption limits (net of API instalment limits). Monthly prepaid for 12 months keeps the monthly call limits but costs less than the regular monthly plan.

**Can I check the status of my subscription(s)?**
Yes, in My Subscriptions (status and usage report), and per API in its dedicated section.

**Can 'Subscription payment' and 'Payment per request' co-exist?**
Yes — payment method is per API. Tip: keep some wallet credit so that when subscription requests run out the API keeps working with single requests.

**I have run out of requests in my subscription. What can I do?**
Renew immediately, switch to another plan, or fall back to single requests paid from the wallet (top up if needed).