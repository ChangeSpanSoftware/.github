# Security Policy

## Reporting a vulnerability

Do not report security vulnerabilities in public issues.

Send a private report to `eaguiar@change-span.com` with:

- affected repository and version;
- reproduction steps;
- potential impact;
- supporting logs or screenshots with secrets removed;
- any suggested mitigation.

## Sensitive information

Never commit credentials, tokens, private keys, production `.env` files, customer data, runtime databases, uploads, or confidential project records.

If a secret is exposed, revoke or rotate it immediately, remove it from active systems, and coordinate repository-history remediation.

## Supported versions

During private alpha development, security fixes target the active ChangeSpan Platform release line and the current release candidate branches.
