# Contributing to ChangeSpan

## Before starting

1. Confirm the target repository and engineering wave.
2. Link the work to an issue or architecture decision when applicable.
3. Review the Platform Manifest, engineering plan, and repository README.
4. Keep authoritative project behavior, security, and backward compatibility in scope.

## Branches

Use short-lived branches:

- `feature/<topic>`
- `fix/<topic>`
- `docs/<topic>`
- `release/<version>`

Do not commit directly to `main` except for approved emergency fixes.

## Commit expectations

- Keep commits focused and reversible.
- Never commit secrets, `.env` files, runtime databases, uploads, caches, or generated build artifacts.
- Include migration notes when persisted contracts change.
- Update tests and documentation with behavior changes.

## Pull requests

Every pull request should identify:

- the problem and intended outcome;
- repositories and contracts affected;
- validation performed;
- security, data, migration, and rollback considerations;
- screenshots for visible UI changes;
- the applicable engineering wave or release.

## Testing

Run the repository's unit, integration, contract, build, and regression checks relevant to the change. A pull request is not complete while required checks are failing without an explicit, documented exception.

## AI and learning changes

AI, prediction, and learning changes must remain evidence-backed, versioned, explainable, reversible, permission-aware, and separated from authoritative project truth.
