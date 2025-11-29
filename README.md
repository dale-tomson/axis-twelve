# Axis Twelve

**Build faster, center easier. The 12-column solution.**

Axis Twelve is a professional CSS framework with SCSS support featuring a powerful 12-column grid system, comprehensive flexbox utilities, powerful centering components, and extensive spacing utilities.

## Key Features

- **12-Column Grid System** - Responsive, flexible, and easy to use
- **Complete Flexbox Utilities** - Direction, alignment, and gap controls
- **Powerful Centering** - Multiple methods for perfect alignment
- **Extensive Spacing Scale** - Named sizes (xs-3xl) and numeric scale (0-96)
- **Full SCSS Support** - Customizable variables and modular architecture
- **Responsive Breakpoints** - xs, sm, md, lg, xl, xxl

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
<link rel="stylesheet" href="https://unpkg.com/axis-twelve/dist/style.css">
```

Then include in your HTML:

```html
<link rel="stylesheet" href="node_modules/axis-twelve/dist/style.css">
```

Or if using SCSS imports:

```scss
@import "node_modules/axis-twelve/src/scss/style";
```

### 2. Explore Examples

Open **`index.html`** in your browser to see all available examples:

- **Complete Feature Demo** - All framework features in one showcase
- **Grid Layouts** - Master the 12-column grid system
- **Flexbox Utilities** - Learn all alignment options
- **Centering Components** - Multiple centering methods
- **Spacing Utilities** - Padding, margin, and gap reference
- **Real-World Examples** - Practical website layouts

See `/examples` folder for focused, use-case specific demonstrations.

### 3. Read Documentation

Visit the **`/docs`** folder for complete interactive documentation:

```bash
npm start
# Then open http://localhost:3000/docs/
```

Or run the server directly:

```bash
pnpm start
# Server runs on http://localhost:3000/
```

Documentation guides:
- Getting Started
- Installation
- Quick Start Guide
- Grid System Reference
- Flexbox Utilities
- Centering Components
- Spacing Utilities
- SCSS Variables
- Responsive Breakpoints
- Best Practices

## Folder Structure

```
axis-twelve/
├── src/scss/                 # SCSS source files
├── dist/style.css            # Compiled minified CSS
├── index.html                # Landing page with links to examples
├── examples/                 # Focused example files
│   ├── 00-all-features-demo.html       # Complete feature showcase
│   ├── 01-grid-layouts.html            # Grid system examples
│   ├── 02-flexbox.html                 # Flexbox utilities
│   ├── 03-centering.html               # Centering methods
│   ├── 04-spacing.html                 # Spacing utilities
│   └── 05-real-world.html              # Real-world layouts
├── docs/                     # Interactive documentation
│   ├── index.html           # Documentation viewer
│   └── *.md                 # Markdown guides
└── package.json             # Dependencies & build scripts
```

## Development

### Setup

```bash
pnpm install
```

### Build Commands

```bash
# Compile SCSS to CSS (production)
pnpm build

# Watch SCSS for changes during development
pnpm watch

# Development mode with demo site
pnpm dev

# Start local development server
pnpm start
# Server runs on http://localhost:3000/
```

### Code Quality

```bash
# Check SCSS for style violations
pnpm lint

# Auto-fix SCSS style issues
pnpm lint:fix

# Format SCSS files with prettier
pnpm format

# Run lint + build (quality gate check)
pnpm check
```

### Run Development Server

```bash
pnpm start
```

Then visit:
- `http://localhost:3000/` - Landing page
- `http://localhost:3000/examples/` - Example files
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
<div class="py-2 px-3">Small vertical padding, medium horizontal</div>
<div class="mt-lg mb-2">Margin top large, margin bottom small</div>
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

1. **New to CSS Frameworks?** → Start with `/docs` documentation
2. **Want to See Examples?** → Open `index.html` to browse examples
3. **Ready to Code?** → Check `/examples` for focused, real-world patterns
4. **Customizing?** → Edit variables in `src/scss/_variables.scss` and rebuild

## License

MIT
