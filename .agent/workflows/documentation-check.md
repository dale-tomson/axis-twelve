---
description: Verify and update changelogs, examples, and README manually with AI.
---

# Documentation Check Workflow

Follow these steps to ensure the project documentation is up-to-date and complete. Do not use automated scripts for generation; verify and edit files directly.

## 1. Landing Page Verification (`index.html`)

The root `index.html` is the primary entry point for the documentation site.

### Requirements
1.  **Version Badge**: Ensure the version badge reflects the latest release.
2.  **Size Comparison**: Verify the minified and gzipped sizes match the current build artifacts in `dist/`.
3.  **Links**: Ensure links to "Documentation", "Examples", and "GitHub" are correct and use relative paths.
4.  **Installation**: Verify NPM and CDN instructions are accurate.

## 2. Changelog Verification

### Short Changelog (`CHANGELOG.md`)
1.  Read `CHANGELOG.md`.
2.  Verify the latest version entry exists (e.g., `## [2.0.0] - YYYY-MM-DD`).
3.  Ensure it has:
    *   A short summary description of the release.
    *   Concise bullet points categorized by type (`### Added`, `### Changed`, `### Fixed`).

### Full Changelog (`docs/changelogs/`)
1.  Check `docs/changelogs/` for a file named after the version (e.g., `v2.0.0.md`).
2.  If it doesn't exist or is incomplete, create/update it with a more detailed breakdown.

## 3. Documentation Content (`docs/`)

### Framework Documentation (`docs/v[VERSION]/`)
1.  Ensure all modules have corresponding Markdown files.
2.  Verify that version-specific mentions (e.g., "**Axis Twelve v2.0.0**") are updated.

### Examples (`docs/examples/`)
1.  **Structure**: Examples should be complete, valid HTML files.
2.  **Styling**: Use the minified build from the root `dist/` folder via relative paths (`../../dist/axis-twelve.min.css`).
3.  **Premium Look**: Each example should look polished and follow the framework's design principles.

## 4. README.md Update

### Bundle Size Table
1.  **Calculate Sizes**:
    *   Run `ls -lh dist/**/*.css` to view file sizes.
    *   For each module (buttons, forms, layout, etc.) and the full bundle, note the **Minified** size.
2.  **Update Table**:
    *   Update the size columns in `README.md`.

### Section Verification
1.  **Installation Instructions**: npm, pnpm, and CDN methods.
2.  **Usage Instructions**: HTML usage, Modular imports, and SCSS variables.
3.  **Migration Guide**: Ensure legacy builds and breaking changes (like `.ax-` prefix) are clearly explained.
4.  **Links**: Ensure `SCRIPTS.md` and `CHANGELOG.md` are linked.

## 5. Final Review
1.  Verify that `package.json` version matches `CHANGELOG.md` latest version.
2.  Open `index.html` in a browser to verify all navigation and visuals.
