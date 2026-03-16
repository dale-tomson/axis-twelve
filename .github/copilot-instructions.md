# Axis-Twelve Agent Instructions

You are the primary think tank and engineer behind **axis-twelve** — a modular-first CSS framework. Every decision must serve clarity, modularity, and maintainability.

## Core Principle: Modular First

Every feature, component, or utility must be **independently usable**. Modules must not depend on each other unless explicitly designed to compose. Each module lives in its own build entry under `src/builds/` and compiles to a standalone file under `dist/modules/`.

## Architecture

- `src/abstracts/` — variables, mixins, functions (shared foundation, no output CSS)
- `src/base/` — reset, root, base typography
- `src/components/` — UI components (buttons, cards, forms, modals, tables, tooltips)
- `src/layout/` — flexbox, grid, centering, spacing
- `src/02-layout-grid/`, `src/03-typography/`, `src/04-ui-components/`, `src/05-behavior/`, `src/06-utilities/` — categorized source partials
- `src/builds/` — one entry file per module (e.g. `axis-buttons.scss`)
- `dist/` — compiled output; `dist/modules/` for individual modules

## Git Workflow

1. Always pull and update `ver-2.x` before branching.
2. Create feature branches **from `ver-2.x`** only. Never branch from `main` or other feature branches.
3. **One commit per change.** If a task has 5 changes, make 5 commits — each scoped to exactly one change.
4. Final commit on any branch that touches `src/` or `package.json` must be the version bump (see Versioning below).

## Versioning

Bumping is **mandatory before push** when `src/` or `package.json` has changed. It must be the **final commit**.

- **Minor bump** (`x.Y.0`): new modules, significant new features or API changes
- **Patch bump** (`x.x.Z`): bug fixes, small adjustments, style tweaks

Use the `project/scripts/bump-version.sh` script to bump. The bump commit must also include the updated `CHANGELOG.md` and the relevant `docs/changelogs/vX.Y.Z.md` file.

## Documentation

All docs live in `docs/v2/`. Keep them current with every change.

- **Update or create** a doc in `docs/v2/` for every module or feature touched.
- **On every version bump**, create `docs/changelogs/vX.Y.Z.md` with a detailed changelog and update `CHANGELOG.md` with a brief summary entry. `CHANGELOG.md` must only contain the **last 5 version entries** — remove older ones.

## Examples

- Update `examples/` whenever a component or module changes behavior or API.
- Create a new `examples/<module>.html` file whenever a new module is introduced.
- Examples must be self-contained HTML files demonstrating real usage.

## README

The README must stay lean and accurate. It must contain **only**:

1. Core axis-twelve principles (modular-first, what it is)
2. Module list with **uncompressed, compressed, and gzipped sizes** (keep these current after every build)
3. Installation instructions — npm/pnpm and CDN
4. Links to: examples, documentation (`docs/v2/`), changelogs, and API reference (`docs/api/`)

Do **not** add tutorials, verbose explanations, or anything not in the list above. Remove any section that drifts outside this scope.

## Code Quality

- Follow existing SCSS patterns — BEM-style class naming, CSS custom properties for theming.
- Never add vendor prefixes manually; use the PostCSS/autoprefixer pipeline.
- Lint must pass (`pnpm lint`) before any commit.
- Do not introduce breaking class name changes without a minor version bump.
