# Agent Configuration

This document provides configuration and context information for AI agents working with the Axis Twelve repository.

## Project Overview

**Axis Twelve** is a modular CSS framework built with SCSS. It features:

- 12-column responsive grid system
- Comprehensive flexbox utilities
- UI components (buttons, forms, modals, tooltips, tables, cards)
- CSS custom properties for theming
- Full SCSS customization support

## Repository Structure

### Branches

- `ver-2.x`: Current main branch for version 2 (ACTIVE)
- `ver-1.x`: Legacy version 1 support
- `main`: Points to ver-2.x

### Directory Structure

```
axis-twelve/
├── .agent/                 # Agent workflows and skills
│   ├── skills/            # Domain knowledge
│   └── workflows/         # Task workflows
├── .github/workflows/     # CI/CD workflows
├── docs/                  # Documentation source
│   ├── api/              # API JSON data
│   ├── v2/               # Version 2 docs
│   └── changelogs/       # Version changelogs
├── examples/              # Standalone HTML examples
├── project/               # Project scripts and hooks
│   ├── hooks/            # Git hooks
│   └── scripts/          # Build scripts
├── src/                   # Source SCSS
│   ├── abstracts/        # Variables, mixins, functions
│   ├── base/             # Global styles
│   ├── layout/           # Grid, flexbox, utilities
│   ├── components/       # UI components
│   └── builds/           # Build entry points
└── dist/                  # Build output (NOT in git)
```

## Build Process

### Development

```bash
pnpm install
pnpm watch          # Watch for changes
```

### Build

```bash
pnpm build          # Build all modules
pnpm build:full     # Build full framework only
pnpm build:modules  # Build individual modules
pnpm build:buttons  # Build specific module
```

### Quality

```bash
pnpm lint           # Run stylelint
pnpm format         # Format with prettier
pnpm check          # Lint + build
```

## Key Files

### Configuration

- `package.json`: Project metadata and scripts
- `.gitignore`: Excludes dist/ from git
- `.prettierrc.json`: Code formatting rules
- `.stylelintrc.json`: SCSS linting rules

### Workflows

- `.github/workflows/pr-checks.yml`: PR validation
- `.github/workflows/auto-tag.yml`: Auto-tagging on version change
- `.github/workflows/release.yml`: GitHub + NPM release

### Documentation

- `README.md`: Main documentation
- `CHANGELOG.md`: Version history
- `docs/`: Detailed documentation source
- `examples/`: Working HTML examples

## Important Conventions

### SCSS Architecture

- Use `@use` for imports (Sass modules)
- Abstracts use `as *` for global access
- No CSS output from abstracts/
- BEM naming with `.ax-` prefix

### CSS Patterns

- Logical properties for LTR/RTL support
- CSS custom properties for runtime theming
- Mobile-first responsive design
- WCAG 2.1 accessibility compliance

### Git Workflow

- Feature branches from `ver-2.x`
- PRs require passing checks (lint + build)
- Version bump in `package.json` triggers auto-tag
- Tag push triggers release workflow

## Agent Skills

Available skill files in `.agent/skills/`:

- `scss-framework.md`: SCSS architecture and patterns

## Agent Workflows

Available workflow files in `.agent/workflows/`:

- `documentation-check.md`: Documentation verification
- `post-change-updates.md`: Post-change update process
- `release-workflow.md`: Release process documentation
- `examples-update.md`: Example maintenance

## External Resources

- **Documentation Site**: https://dale-tomson.github.io/axis-twelve-docs/
- **NPM Package**: https://www.npmjs.com/package/axis-twelve
- **GitHub**: https://github.com/dale-tomson/axis-twelve

## Common Tasks

### Adding a Component

1. Create SCSS in `src/components/`
2. Add to build file in `src/builds/`
3. Update documentation in `docs/v2/`
4. Add example in `examples/`
5. Update README.md
6. Bump version if behavior changes

### Fixing a Bug

1. Identify source file
2. Make fix
3. Run `pnpm check`
4. Update changelog
5. Commit with descriptive message

### Releasing

1. Update version in `package.json`
2. Update `CHANGELOG.md`
3. Commit and push
4. Auto-tag workflow runs
5. Release workflow publishes

## Contact

For issues or questions about the project structure, refer to:

- GitHub Issues: https://github.com/dale-tomson/axis-twelve/issues
- Documentation: https://dale-tomson.github.io/axis-twelve-docs/
