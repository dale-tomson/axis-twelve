---
description: Verify and update changelogs, examples, and README manually with AI.
---

# Documentation Check Workflow

Follow these steps to ensure the project documentation is up-to-date and complete. Do not use automated scripts for generation; verify and edit files directly.

## 1. Changelog Verification

### Short Changelog (`CHANGELOG.md`)
1.  Read `CHANGELOG.md`.
2.  Verify the latest version entry exists (e.g., `## [2.0.0] - YYYY-MM-DD`).
3.  Ensure it has:
    *   A short summary description of the release.
    *   Concise bullet points categorized by type (`### Added`, `### Changed`, `### Fixed`).

### Full Changelog (`docs-viewer/content/changelogs/`)
1.  Check `docs-viewer/content/changelogs/` for a file named after the version (e.g., `v2.0.0.md`).
2.  If it doesn't exist or is incomplete, create/update it with a more detailed breakdown. These files are automatically rendered by the **Changelog Viewer**.

## 2. Examples Refinement (`docs-viewer/content/examples/`)
The examples system is now **centralized** to reduce boilerplate.

### Requirements
1.  **Direct Injection**: Examples are injected into `views/examples.twig`. Do NOT include `<html>`, `<head>`, or `<body>` tags in example files.
2.  **Structure**: Focus purely on the component markup.
    *   `index.html`: Dashboard/Landing page with navigation cards.
    *   `layout.html`: Grid, flexbox, centering, spacing demos.
    *   `buttons.html`: Button variants, sizes, groups + SVG icons.
    *   `forms.html`: Inputs, selects, checkboxes, validation, floating labels.
    *   `modals.html`: Interactive modal demos (using `openModal` / `closeModal`).
    *   `tooltips.html`: Tooltip variants and positioning demos.
    *   `tables.html`: Responsive table demos.
    *   `cards.html`: Card variants (media, body, footer, shadow).
3.  **Code Snippets**: Wrap code in `<div class="example-code"><pre><code>...</code></pre></div>` for automatic high-contrast rendering and toggling.
4.  **Premium Look**: Each section should be wrapped in `<section class="example-section">` with a `<h2>` header. Each demo item should be wrapped in `<div class="example-item">` with an `.example-header` and `.example-preview`.

## 3. README.md Update

### Bundle Size Table
1.  **Calculate Sizes**:
    *   Run `ls -lh dist/**/*.css` to view file sizes.
    *   For each module (buttons, forms, layout, etc.) and the full bundle, note the **Minified** size.
2.  **Update Table**:
    *   Locate the "Available Modules" or "Bundle Sizes" table in `README.md`.
    *   Update the size columns and the "Difference" column.

### Section Verification
1.  **Installation Instructions**: npm, pnpm, and CDN methods.
2.  **Usage Instructions**: HTML usage, Modular imports, and SCSS variables.
3.  **Migration Guide**: Ensure legacy builds and breaking changes (like `.ax-` prefix) are clearly explained.
4.  **Links**:
    *   Link to **Interactive Documentation** (`docs-viewer/README.md`).
    *   Ensure `SCRIPTS.md` and `CHANGELOG.md` are linked.

## 4. Final Review
1.  Verify that `package.json` version matches `CHANGELOG.md` latest version.
2.  Run the docs viewer (`cd docs-viewer && node app.js`) to verify all new items render correctly.
