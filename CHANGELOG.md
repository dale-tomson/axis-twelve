# Axis Twelve - Changelog

For a full history of changes, please visit the [Changelog Directory](./project/docs/changelog/).

---

## [v1.1.0](./project/docs/changelog/v1.1.0.md) - Performance Optimization
**February 7, 2026**

### ⚡ Performance & Optimization
- **25% CSS file size reduction** (40.5KB → 30.5KB minified, 6KB → 4.8KB gzipped)
- Limited responsive spacing utilities to commonly-used values (0, xs, sm, md, lg, xl)
- Removed redundant `.box` centering modifiers
- All base utilities preserved - no breaking changes for most users

### 📦 Distribution
- Removed `examples/` folder (moving to dedicated repository)

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

## [v1.0.0](./project/docs/changelog/v1.0.0.md) - SCSS Optimization
**December 7, 2025**

### ⚡ Performance & Optimization
- **Breaking Change**: Removed redundant numeric spacing classes (`p-4`, `m-2`, etc.) in favor of standard T-shirt sizes (`p-md`, `m-sm`).
    - Migration: Replace `*-2` with `*-sm`, `*-4` with `*-md`, `*-6` with `*-lg`, etc.
- Optimized SCSS structure:
    - Flattened flexbox selectors to reduce specificity.
    - Consolidated grid responsive loops to reduce CSS file size (~40KB minified).

[Read full release notes →](./project/docs/changelog/v1.0.0.md)

