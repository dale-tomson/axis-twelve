# Build Process Documentation

This document describes the build system and available scripts for Axis Twelve.

## Quick Start

```bash
# Install dependencies
pnpm install

# Build everything
pnpm build

# Build only full framework
pnpm run build:full

# Build only modules
pnpm run build:modules

# Watch for changes
pnpm watch
```

## Build Scripts

### Main Build Commands

| Command                  | Description                                    |
| ------------------------ | ---------------------------------------------- |
| `pnpm build`             | Build full framework + all modules             |
| `pnpm run build:full`    | Build complete framework (expanded + minified) |
| `pnpm run build:modules` | Build all individual modules                   |
| `pnpm watch`             | Watch all builds for changes                   |
| `pnpm run watch:full`    | Watch only full framework build                |

### Module Build Commands

Individual module builds (all use the helper script):

```bash
pnpm run build:layout
pnpm run build:buttons
pnpm run build:forms
pnpm run build:modals
pnpm run build:tooltips
pnpm run build:tables
pnpm run build:cards
```

## Build Helper Script

The `project/scripts/build-module.sh` script consolidates the build process for individual modules.

### Usage

```bash
# Build a specific module
bash project/scripts/build-module.sh <module-name>

# Examples
bash project/scripts/build-module.sh buttons
bash project/scripts/build-module.sh forms
bash project/scripts/build-module.sh layout
```

### What it does

For each module, the script:

1. Validates the module name
2. Checks if source file exists
3. Creates output directory if needed
4. Builds expanded version (`.css`)
5. Builds compressed version (`.min.css`)
6. Reports build status

### Output

Each module build produces two files:

- `dist/modules/axis-{module}.css` (expanded, readable)
- `dist/modules/axis-{module}.min.css` (minified, production-ready)

## Build Output Structure

```
dist/
├── axis-twelve.css          # Full framework (expanded)
├── axis-twelve.min.css      # Full framework (minified)
└── modules/
    ├── axis-layout.css
    ├── axis-layout.min.css
    ├── axis-buttons.css
    ├── axis-buttons.min.css
    ├── axis-forms.css
    ├── axis-forms.min.css
    ├── axis-modals.css
    ├── axis-modals.min.css
    ├── axis-tooltips.css
    ├── axis-tooltips.min.css
    ├── axis-tables.css
    ├── axis-tables.min.css
    ├── axis-cards.css
    └── axis-cards.min.css
```

## Package.json Scripts

### Build Scripts

- `build` - Main build command (full + modules)
- `build:full` - Complete framework build
- `build:modules` - All modules build
- `build:layout` - Layout module only
- `build:buttons` - Buttons module only
- `build:forms` - Forms module only
- `build:modals` - Modals module only
- `build:tooltips` - Tooltips module only
- `build:tables` - Tables module only
- `build:cards` - Cards module only

### Development Scripts

- `watch` - Watch all builds
- `watch:full` - Watch full framework only
- `lint` - Run stylelint
- `lint:fix` - Auto-fix lint issues
- `format` - Format with prettier
- `check` - Lint + build (CI check)

### Other Scripts

- `test` - Run checks (alias for check)
- `prepublishOnly` - Pre-publish validation
- `postinstall` - Install git hooks

## Sass Configuration

All builds use:

- **Style**: Expanded or compressed
- **Source maps**: Disabled (--no-source-map)
- **Output**: dist/ directory

### Build Process

1. **Full Framework** (`axis-twelve.scss`)
   - Imports all abstracts, base, layout, and components
   - Outputs complete framework CSS

2. **Individual Modules**
   - Each module imports only its dependencies
   - Modular imports for selective usage
   - Independent builds

## CI/CD Build

In CI/CD workflows, the build process:

1. Installs dependencies via pnpm
2. Runs linting
3. Builds all modules
4. Uploads artifacts for release

```yaml
# From .github/workflows/pr-checks.yml
- run: pnpm install --frozen-lockfile
- run: pnpm lint
- run: pnpm build
```

## Troubleshooting

### Build fails with "file not found"

Ensure all source files exist in `src/builds/`:

- axis-twelve.scss
- axis-layout.scss
- axis-buttons.scss
- axis-forms.scss
- axis-modals.scss
- axis-tooltips.scss
- axis-tables.scss
- axis-cards.scss

### Module build fails

Check that the module source file exists:

```bash
ls src/builds/axis-{module}.scss
```

### Output directory missing

The build script creates `dist/modules/` automatically. If it fails:

```bash
mkdir -p dist/modules
```

### Sass compilation error

Run lint first to catch syntax issues:

```bash
pnpm lint
pnpm lint:fix
```

## Performance Tips

1. **Use watch for development**

   ```bash
   pnpm watch
   ```

2. **Build only what you need**

   ```bash
   # Working on buttons? Only build buttons
   pnpm run build:buttons
   ```

3. **Use minified for production**
   - Development: `.css` (expanded)
   - Production: `.min.css` (minified)

4. **Clean build**
   If builds are inconsistent:
   ```bash
   rm -rf dist/
   pnpm build
   ```

## Related Documentation

- [Versioning Guide](VERSIONING.md)
- [Project Structure](../README.md#project-structure)
- [CI/CD Configuration](../.github/workflows/)
