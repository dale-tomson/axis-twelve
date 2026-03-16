# Axis-Twelve Agent Instructions

**CRITICAL: You are the primary think tank and engineer behind axis-twelve — a modular-first CSS framework. Every decision must serve clarity, modularity, and maintainability.**

**DO NOT ASSUME OR HALLUCINATE. Follow these instructions EXACTLY as written. No exceptions.**

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

## Git Workflow - MANDATORY

**CRITICAL: You MUST follow this workflow. Failure to do so is a violation.**

1. **ALWAYS create a feature branch from `ver-2.x`** - NEVER work directly on `ver-2.x`
   - Command: `git checkout -b feature/your-feature-name ver-2.x`
   - **NEVER** branch from `main` or other feature branches
   - **NEVER** commit directly to `ver-2.x`

2. **One commit per logical change**
   - If a task has 5 changes, make 5 separate commits
   - Each commit must be scoped to exactly ONE change
   - Example: One commit per component, not all components in one commit

3. **Version bump is MANDATORY and FINAL**
   - If you touch `src/` or `package.json`, you MUST bump version
   - Version bump MUST be the last commit before push
   - Use: `bash project/scripts/bump-version.sh minor "message"` or `patch`
   - **NEVER** push without version bump if src/ or package.json changed

4. **ALWAYS pull latest ver-2.x before starting**
   - Command: `git checkout ver-2.x && git pull origin ver-2.x`
   - Then create your feature branch

## Versioning - MANDATORY

**Bumping is REQUIRED when `src/` or `package.json` changes. This is not optional.**

- **Minor bump** (`x.Y.0`): new modules, significant new features, API changes
- **Patch bump** (`x.x.Z`): bug fixes, small adjustments, style tweaks

**Required steps for version bump:**

1. Run: `bash project/scripts/bump-version.sh minor "message"` or `patch`
2. Update `CHANGELOG.md` with new version entry
3. Create `docs/changelogs/vX.Y.Z.md` with detailed changelog
4. Commit: `git add -A && git commit -m "chore: bump version to vX.Y.Z"`
5. This MUST be the final commit

## Documentation - MANDATORY

**Every change requires documentation updates.**

- **Update or create** a doc in `docs/v2/` for every module or feature
- **On version bump**, create `docs/changelogs/vX.Y.Z.md` with detailed changelog
- Update `CHANGELOG.md` with brief summary (keep last 5 versions only)
- **NEVER** skip documentation

## Examples - MANDATORY

- **Update** `examples/` whenever a component changes behavior or API
- **Create** new `examples/<module>.html` for every new module
- Examples MUST be self-contained HTML files demonstrating real usage
- Use CDN URLs: `https://unpkg.com/axis-twelve/dist/modules/axis-*.min.css`
- **NEVER** use version-locked CDN URLs (no `@2` or similar)

## README Rules

The README must contain **ONLY**:

1. Core axis-twelve principles (modular-first, what it is)
2. Module list with **uncompressed, compressed, and gzipped sizes**
3. Installation instructions — npm/pnpm and CDN
4. Links to: examples, documentation (`docs/v2/`), changelogs, API reference

**DO NOT add:** tutorials, verbose explanations, or anything outside this scope. Remove any section that drifts outside this scope.

## Code Quality - MANDATORY

- Follow existing SCSS patterns — BEM-style class naming, CSS custom properties for theming
- Never add vendor prefixes manually; use the PostCSS/autoprefixer pipeline
- **Lint MUST pass** (`pnpm lint`) before ANY commit
- Do not introduce breaking class name changes without a minor version bump
- **NEVER** commit without linting first

## Pre-Commit Checklist - MANDATORY

Before EVERY commit, verify:

- [ ] Lint passes: `pnpm lint`
- [ ] One logical change per commit
- [ ] Documentation updated
- [ ] Examples updated/created
- [ ] If final commit: version bumped

## Pre-Push Checklist - MANDATORY

Before EVERY push, verify:

- [ ] All commits follow one-change-per-commit rule
- [ ] Version bumped (if src/ or package.json touched)
- [ ] CHANGELOG.md updated
- [ ] docs/changelogs/vX.Y.Z.md created
- [ ] On feature branch, NOT ver-2.x

## Common Violations to AVOID

**DO NOT:**

- ❌ Work directly on `ver-2.x` branch
- ❌ Combine multiple changes in one commit
- ❌ Push without version bump
- ❌ Skip documentation
- ❌ Use version-locked CDN URLs
- ❌ Add tutorials to README
- ❌ Commit without linting
- ❌ Create `.agents/` or other instruction directories
- ❌ Restore deleted instruction files

**ALWAYS:**

- ✅ Create feature branch from `ver-2.x`
- ✅ One commit per change
- ✅ Bump version as final commit
- ✅ Update documentation
- ✅ Pass linting
- ✅ Follow modular architecture

## Reminder

**These instructions are MANDATORY, not suggestions. Violating them breaks the project workflow. Always follow them exactly as written.**

If you're unsure about ANY instruction, ASK rather than assume.
