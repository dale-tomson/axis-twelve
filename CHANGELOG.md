# Axis Twelve - Changelog

For a full history of changes, please visit the [Changelog Directory](./project/docs/changelog/).

---

## [v1.0.1](./project/docs/changelog/v1.0.1.md) - Documentation & Tooling Improvements
**December 7, 2025**

> **No framework changes** - CSS output identical to v1.0.0

### 📝 Documentation
- Added mobile responsiveness to all HTML pages (index, docs, examples)
- Added version display to index.html and docs/index.html
- Updated docs/getting-started.md with current version info
- Consolidated duplicate CSS in example files (~535 lines removed)

### 🔧 Tooling
- Created update-version.sh script for automatic version sync
- Moved version bumps from pre-commit to pre-push hook
- Removed redundant scripts (superseded by GitHub Actions)
- Improved git hooks workflow

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

## [v1.0.0](./project/docs/changelog/v1.0.0.md) - SCSS Optimization
**December 7, 2025**

### ⚡ Performance & Optimization
- **Breaking Change**: Removed redundant numeric spacing classes (`p-4`, `m-2`, etc.) in favor of standard T-shirt sizes (`p-md`, `m-sm`).
    - Migration: Replace `*-2` with `*-sm`, `*-4` with `*-md`, `*-6` with `*-lg`, etc.
- Optimized SCSS structure:
    - Flattened flexbox selectors to reduce specificity.
    - Consolidated grid responsive loops to reduce CSS file size (~40KB minified).

[Read full release notes →](./project/docs/changelog/v0.0.5.md)
