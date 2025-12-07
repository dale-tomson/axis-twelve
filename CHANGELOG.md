# Axis Twelve - Changelog

For a full history of changes, please visit the [Changelog Directory](./project/docs/changelog/).

---

## [v0.0.4](./project/docs/changelog/v0.0.4.md) - CLI & Distribution Improvements
**December 7, 2025**

### 🏗️ Improvements
- **Breaking Change**: Renamed distribution files from `style.css` to `axis-twelve.css` (and `.min.css`).
- Added `test` command alias for `pnpm check`.
- Enhanced `axis` CLI:
    - Added `clean` command to remove `dist/`.
    - Added dependency checks for `node_modules`.
    - Enabled argument passthrough to underlying tools (e.g., `./axis build --no-source-map`).
- **Improved Git Hooks**:
    - `pre-commit` now runs linting and supports **interactive/manual version bumping**.
    - `pre-push` now runs tests/builds before allowing push.
- Added version/license banner to compiled CSS files.

[Read full release notes →](./project/docs/changelog/v0.0.4.md)
