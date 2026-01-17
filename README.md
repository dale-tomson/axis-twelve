# Axis Twelve

<div align="center">

![Version](https://img.shields.io/badge/version-2.0.0-blue?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![CSS](https://img.shields.io/badge/css-103kB-orange?style=flat-square)
![Minified](https://img.shields.io/badge/min.css-77kB-success?style=flat-square)

**Build faster, center easier. Modular CSS framework.**

</div>

Axis Twelve is a professional, modular CSS framework featuring a powerful 12-column grid system, comprehensive flexbox utilities, powerful centering components, and a complete suite of UI components including buttons, forms, modals, tables, cards, and tooltips.

## ✨ Key Features

- **🎯 Modular Architecture** - Import only what you need with separate builds
- **🎨 Complete UI Components** - Buttons, forms, modals, tooltips, tables, cards
- **📐 12-Column Grid System** - Responsive, flexible, and easy to use
- **💪 Complete Flexbox Utilities** - Direction, alignment, and gap controls
- **🎪 Powerful Centering** - Multiple methods for perfect alignment
- **📏 Extensive Spacing Scale** - Named sizes (xs-3xl) and consistent numeric mapping
- **🔧 Full SCSS Support** - Customizable variables and modular architecture
- **📱 Responsive Breakpoints** - xs, sm, md, lg, xl, xxl
- **♿ Accessibility First** - WCAG 2.1 compliant, keyboard navigation support
- **🚀 Ultra-Lightweight** - Modular builds from 2.7KB to 77KB minified
- **🎭 CSS-Only** - No JavaScript dependencies

## 🚀 Quick Start

### Installation

**Via npm:**
```bash
npm install axis-twelve
```

**Via pnpm:**
```bash
pnpm install axis-twelve
```

**Via CDN:**
```html
<!-- Full framework -->
<link rel="stylesheet" href="https://unpkg.com/axis-twelve/dist/axis-twelve.min.css">

<!-- Or individual modules -->
<link rel="stylesheet" href="https://unpkg.com/axis-twelve/dist/modules/axis-buttons.min.css">
```

### Usage

#### Option 1: Full Framework

```html
<link rel="stylesheet" href="node_modules/axis-twelve/dist/axis-twelve.min.css">
```

#### Option 2: Modular Imports (Recommended)

Import only the modules you need:

```html
<!-- Layout utilities -->
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-layout.min.css">

<!-- UI Components -->
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-buttons.min.css">
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-forms.min.css">
```

#### Option 3: SCSS Imports

```scss
// Full framework
@use 'axis-twelve/src/builds/axis-twelve';

// Or modular
@use 'axis-twelve/src/abstracts' as ax;
@use 'axis-twelve/src/components/buttons';
@use 'axis-twelve/src/components/forms';
```

## 📦 Available Modules

| Module | Size (min) | Description |
|--------|-----------|-------------|
| **axis-twelve** | 77KB | Full framework bundle |
| **axis-layout** | 57KB | Grid, flexbox, centering, spacing |
| **axis-buttons** | 5.5KB | Button components with variants |
| **axis-forms** | 8.6KB | Form inputs, selects, checkboxes |
| **axis-modals** | 2.9KB | Modal dialogs with backdrop |
| **axis-tooltips** | 3.0KB | CSS-only tooltips |
| **axis-tables** | 2.7KB | Responsive tables |
| **axis-cards** | 2.8KB | Card components |

## 💡 Quick Examples

### Grid Layout

```html
<div class="ax-grid ax-gap-lg">
  <div class="ax-col-6">Half width</div>
  <div class="ax-col-6">Half width</div>
</div>

<div class="ax-grid ax-gap-lg">
  <div class="ax-col-4">1/3 width</div>
  <div class="ax-col-4">1/3 width</div>
  <div class="ax-col-4">1/3 width</div>
</div>
```

### Flexbox Layouts

```html
<div class="ax-flex ax-justify-center ax-items-center ax-gap-md">
  <div>Item 1</div>
  <div>Item 2</div>
</div>

<div class="ax-flex ax-flex-column ax-gap-lg">
  <div>Stack vertically</div>
  <div>With spacing</div>
</div>
```

### Buttons

```html
<!-- Semantic variants -->
<button class="ax-btn ax-btn--primary">Primary</button>
<button class="ax-btn ax-btn--secondary">Secondary</button>
<button class="ax-btn ax-btn--success">Success</button>

<!-- Outline variants -->
<button class="ax-btn ax-btn--outline-primary">Outline</button>

<!-- Sizes -->
<button class="ax-btn ax-btn--sm">Small</button>
<button class="ax-btn ax-btn--lg">Large</button>
```

### Forms

```html
<div class="ax-form-group">
  <label class="ax-label" for="email">Email</label>
  <input type="email" class="ax-input" id="email" placeholder="Enter email">
</div>

<div class="ax-form-group">
  <select class="ax-select">
    <option>Choose option</option>
    <option>Option 1</option>
  </select>
</div>
```

### Modals

```html
<div class="ax-modal" data-open="false">
  <div class="ax-modal__backdrop"></div>
  <div class="ax-modal__dialog">
    <div class="ax-modal__header">
      <h2 class="ax-modal__title">Modal Title</h2>
      <button class="ax-modal__close">×</button>
    </div>
    <div class="ax-modal__body">
      <p>Modal content goes here...</p>
    </div>
    <div class="ax-modal__footer">
      <button class="ax-btn ax-btn--secondary">Cancel</button>
      <button class="ax-btn ax-btn--primary">Confirm</button>
    </div>
  </div>
</div>
```

### Cards

```html
<div class="ax-card">
  <div class="ax-card__media">
    <img src="image.jpg" alt="Card image">
  </div>
  <div class="ax-card__body">
    <h3 class="ax-card__title">Card Title</h3>
    <p class="ax-card__text">Card description text...</p>
  </div>
  <div class="ax-card__footer">
    <button class="ax-btn ax-btn--primary">Action</button>
  </div>
</div>
```

### Tooltips

```html
<button data-ax-tooltip="This is a tooltip" data-ax-tooltip-position="top">
  Hover me
</button>
```

## 📱 Responsive Breakpoints

- **xs**: 0px (mobile, default)
- **sm**: 576px (small devices)
- **md**: 768px (tablets)
- **lg**: 992px (small desktops)
- **xl**: 1200px (desktops)
- **xxl**: 1400px (large desktops)

Use responsive classes: `ax-col-md-6`, `ax-col-lg-4`, `ax-flex-md-row`, etc.

## 🎨 Customization

### Using SCSS Variables

```scss
@use 'axis-twelve/src/abstracts' as ax with (
  $primary: #your-color,
  $grid-columns: 16,
  $spacer-md: 1.25rem
);

@use 'axis-twelve/src/builds/axis-twelve';
```

### Using CSS Custom Properties

```css
:root {
  --ax-color-primary: #your-color;
  --ax-spacing-md: 1.25rem;
  --ax-font-sans: 'Your Font', sans-serif;
}
```

## 🔧 Development

### Build Commands

```bash
# Build all modules
pnpm run build

# Build full framework only
pnpm run build:full

# Build specific module
pnpm run build:buttons

# Watch for changes
pnpm run watch

# Lint SCSS
pnpm run lint

# Auto-fix linting issues
pnpm run lint:fix
```

### Project Structure

```
src/
├── abstracts/        # Configuration (colors, typography, spacing, etc.)
├── base/             # Global resets and root styles
├── layout/           # Grid, flexbox, centering, spacing
├── components/       # UI components (buttons, forms, modals, etc.)
└── builds/           # Build entry points
```

## 🆕 What's New in v2.0.0

### Breaking Changes

- **All classes now use `.ax-` prefix** (`.grid` → `.ax-grid`, `.flex` → `.ax-flex`)
- **Modular architecture** - Import only what you need
- **New component modules** - Buttons, forms, modals, tooltips, tables, cards
- **SCSS import paths changed** - Use `src/builds/` instead of `src/scss/`

### Migration from v1.x

For backward compatibility, use the legacy build:

```html
<link rel="stylesheet" href="node_modules/axis-twelve/dist/axis-twelve-legacy.min.css">
```

**⚠️ Note:** Legacy build is deprecated and will be removed in v2.2.

## 📄 License

MIT © Dale Tomson

## 🔗 Links

- [GitHub Repository](https://github.com/dale-tomson/axis-twelve)
- [npm Package](https://www.npmjs.com/package/axis-twelve)
- [Report Issues](https://github.com/dale-tomson/axis-twelve/issues)

---

<div align="center">

**Made with ❤️ by Dale Tomson**

</div>
