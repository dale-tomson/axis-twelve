# Axis Twelve

<div align="center">

<img src="https://img.shields.io/npm/v/axis-twelve?color=blue&style=flat-square" alt="NPM Version" />
<img src="https://img.shields.io/badge/license-MIT-green?style=flat-square" alt="License" />
<img src="https://img.shields.io/badge/css-43kB-orange?style=flat-square" alt="CSS Size" />
<img src="https://img.shields.io/badge/css.gz-5.2kB-success?style=flat-square" alt="CSS Gzipped" />
<img src="https://img.shields.io/badge/min.css-30.5kB-orange?style=flat-square" alt="Minified Size" />
<img src="https://img.shields.io/badge/min.css.gz-4.8kB-success?style=flat-square" alt="Minified Gzipped" />

**Build faster, center easier. The 12-column solution.**

</div>

Axis Twelve is a professional CSS framework with SCSS support featuring a powerful 12-column grid system, comprehensive flexbox utilities, powerful centering components, and extensive spacing utilities.

## Key Features

- **12-Column Grid System** - Responsive, flexible, and easy to use
- **Complete Flexbox Utilities** - Direction, alignment, and gap controls
- **Powerful Centering** - Multiple methods for perfect alignment
- **Extensive Spacing Scale** - Named sizes (xs-3xl) and consistent numeric mapping
- **Full SCSS Support** - Customizable variables and modular architecture
- **Responsive Breakpoints** - xs, sm, md, lg, xl, xxl
- **Ultra-Lightweight** - 43 KB expanded (5.2 KB gzipped) / 30.5 KB minified (4.8 KB gzipped)

## Documentation

### Quick Links

- **[📖 Interactive Documentation](https://dale-tomson.github.io/axis-twelve/)** - Full documentation site on GitHub Pages
- **[Changelog](CHANGELOG.md)** - View all releases and updates
- **[Scripts & CLI Guide](project/docs/SCRIPTS.md)** - All available commands (./axis)
- **[Release Process](project/docs/RELEASE.md)** - How to create releases

## Quick Start

### 1. Installation

**Via npm:**

```bash
npm install axis-twelve
```

**Via pnpm:**

```bash
pnpm install axis-twelve
```

**Or use the compiled CSS directly:**

```html
<link rel="stylesheet" href="https://unpkg.com/axis-twelve/dist/axis-twelve.css">
```

Then include in your HTML:

```html
<link rel="stylesheet" href="node_modules/axis-twelve/dist/axis-twelve.css">
```

Or if using SCSS imports:

```scss
@import "node_modules/axis-twelve/src/scss/style";
```

### 2. Read Documentation

Visit the **[Interactive Documentation](https://dale-tomson.github.io/axis-twelve/)** on GitHub Pages for complete guides and examples.

### 3. Start Building

Use the framework classes in your HTML:

```html
<div class="grid gap-lg">
  <div class="col-6">Half width</div>
  <div class="col-6">Half width</div>
</div>
```

See the [Quick Code Examples](#quick-code-examples) section below for more patterns.

## Folder Structure

```
axis-twelve/
├── src/scss/                 # SCSS source files
├── dist/                     # Compiled CSS files
│   ├── axis-twelve.css       # Expanded CSS
│   └── axis-twelve.min.css   # Minified CSS
├── docs/                     # Interactive framework documentation
│   ├── index.html
│   ├── getting-started.md
│   ├── grid.md
│   ├── flexbox.md
│   ├── centering.md
│   ├── spacing.md
│   └── *.md                  # Other framework guides
├── project/                  # Project management (development tools)
│   ├── scripts/              # CLI helper scripts
│   ├── hooks/                # Git hook definitions
│   └── docs/                 # Project documentation
│       ├── SCRIPTS.md        # CLI wrapper guide
│       ├── RELEASE.md        # Release process
│       └── changelog/        # Version history
├── axis                      # CLI wrapper script
└── package.json
```

## Project Documentation

All project management docs are in `project/docs/`:

- **[SCRIPTS.md](project/docs/SCRIPTS.md)** - Complete guide to the `./axis` CLI wrapper
  - Development commands (build, watch, start, lint, format, check)
  - Publishing to npm
  - Creating releases
  - Git hooks management

- **[RELEASE.md](project/docs/RELEASE.md)** - How to create releases and publish
  - Manual git releases
  - Automated GitHub releases
  - Semantic versioning

- **[CHANGELOG.md](project/docs/CHANGELOG.md)** - Version history and updates

## Development

### Using the CLI Wrapper

All development commands are available through the `axis` CLI wrapper:

```bash
./axis help              # Show all available commands
./axis build             # Build CSS
./axis watch             # Watch SCSS for changes
./axis start             # Start dev server
./axis check             # Run quality checks
```

**See [project/docs/SCRIPTS.md](project/docs/SCRIPTS.md) for complete command reference.**

### Setup

```bash
pnpm install
```

### Build Commands

```bash
# Compile SCSS to CSS (production)
./axis build

# Watch SCSS for changes during development
./axis watch

# Development mode (no source maps)
./axis dev

# Start local development server
./axis start
# Server runs on http://localhost:3000/
```

### Code Quality

```bash
# Check SCSS for style violations
./axis lint

# Auto-fix SCSS style issues
./axis lint:fix

# Format SCSS files with prettier
./axis format

# Run lint + build (quality gate check)
./axis check
```

### Publishing

```bash
# Publish to npm (requires NPM_TOKEN in .env)
./axis publish
```

### Releases

```bash
# Create git tag + dist asset
./axis release

# Automated GitHub release (requires gh CLI)
./axis release:github
```

**See [project/docs/RELEASE.md](project/docs/RELEASE.md) for detailed release guide.**

### Run Development Server

```bash
./axis start
```

Then visit:
- `http://localhost:3000/docs/` - Documentation

## Quick Code Examples

### Grid Layout

```html
<div class="grid gap-lg">
  <div class="col-6">Half width</div>
  <div class="col-6">Half width</div>
</div>

<div class="grid gap-lg">
  <div class="col-4">1/3 width</div>
  <div class="col-4">1/3 width</div>
  <div class="col-4">1/3 width</div>
</div>
```

### Flexbox Layouts

```html
<div class="flex justify-center items-center gap-md">
  <div>Item 1</div>
  <div>Item 2</div>
</div>

<div class="flex flex-column gap-lg">
  <div>Stack vertically</div>
  <div>With spacing</div>
</div>
```

### Centering Content

```html
<!-- Horizontal center -->
<div class="row center">
  <div>Centered horizontally</div>
</div>

<!-- Both horizontal and vertical -->
<div class="box center-both">
  <div>Centered both ways</div>
</div>

<!-- Column centering -->
<div class="column center">
  <div>Item 1</div>
  <div>Item 2</div>
</div>
```

### Spacing Utilities

```html
<div class="p-lg m-xl">Large padding and margin</div>
<div class="py-sm px-md">Small vertical padding, medium horizontal</div>
<div class="mt-lg mb-sm">Margin top large, margin bottom small</div>
```

## Responsive Breakpoints

- **xs**: 0px (mobile, default)
- **sm**: 576px (small devices)
- **md**: 768px (tablets)
- **lg**: 992px (small desktops)
- **xl**: 1200px (desktops)
- **xxl**: 1400px (large desktops)

Use responsive column classes: `col-md-6`, `col-lg-4`, etc.

## Where to Start

1. **New to CSS Frameworks?** → Visit the [Interactive Documentation](https://dale-tomson.github.io/axis-twelve/)
2. **Want to See Examples?** → Check the [Quick Code Examples](#quick-code-examples) section above
3. **Ready to Code?** → Install via npm and start using the utility classes
4. **Customizing?** → Edit variables in `src/scss/_variables.scss` and rebuild

## License

MIT
