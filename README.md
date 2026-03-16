# Axis Twelve

<div align="center">

![Version](https://img.shields.io/badge/version-2.2.0-blue?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![CSS](https://img.shields.io/badge/css-108kB-orange?style=flat-square)
![Minified](https://img.shields.io/badge/min.css-82kB-success?style=flat-square)

**Build faster, center easier. Modular CSS framework.**

[Interactive Documentation](https://dale-tomson.github.io/axis-twelve-docs) | [Comprehensive Example](docs/v2/comprehensive-example.html)

</div>

Axis Twelve is a professional, modular CSS framework featuring a powerful 12-column grid system, comprehensive flexbox utilities, powerful centering components, and a suite of UI components.

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
- **🌐 LTR & RTL Support** - Native support for all text directions via **CSS Logical Properties**
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
<link rel="stylesheet" href="https://unpkg.com/axis-twelve/dist/axis-twelve.min.css" />

<!-- Or individual modules -->
<link rel="stylesheet" href="https://unpkg.com/axis-twelve/dist/modules/axis-buttons.min.css" />
```

### Usage

#### Option 1: Full Framework

```html
<link rel="stylesheet" href="node_modules/axis-twelve/dist/axis-twelve.min.css" />
```

#### Option 2: Modular Imports (Recommended)

Import only the modules you need:

```html
<!-- Layout utilities -->
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-layout.min.css" />

<!-- UI Components -->
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-buttons.min.css" />
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-forms.min.css" />
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

### Core Modules

| Module              | Size (min) | Description                                                                    |
| ------------------- | ---------- | ------------------------------------------------------------------------------ |
| **axis-core**       | 4.3KB      | Core & reset - base foundation for all builds                                  |
| **axis-layout**     | 68KB       | Grid, flexbox, centering, spacing, display utilities, aspect ratio, containers |
| **axis-typography** | 17KB       | Typography utilities - font sizing, weights, alignment, text manipulation      |
| **axis-utilities**  | 36KB       | Utility classes - borders, shadows, backgrounds, sizing, positioning           |
| **axis-behavior**   | 16KB       | CSS-only interactive components - dropdowns, accordions, carousels             |
| **axis-indicators** | 12KB       | Status indicators - alerts, badges, progress bars, spinners                    |
| **axis-navigation** | 7.7KB      | Navigation components - navbar, nav, tabs, breadcrumb, pagination              |

### Component Modules

| Module            | Size (min) | Description                      |
| ----------------- | ---------- | -------------------------------- |
| **axis-buttons**  | 6.2KB      | Button components with variants  |
| **axis-forms**    | 9.2KB      | Form inputs, selects, checkboxes |
| **axis-modals**   | 3.6KB      | Modal dialogs with backdrop      |
| **axis-tooltips** | 4.6KB      | CSS-only tooltips                |
| **axis-tables**   | 3.4KB      | Responsive tables                |
| **axis-cards**    | 3.6KB      | Card components                  |

**Full Framework Bundle:** 82KB minified (108KB uncompressed)

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
  <input type="email" class="ax-input" id="email" placeholder="Enter email" />
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
    <img src="image.jpg" alt="Card image" />
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
<button data-ax-tooltip="This is a tooltip" data-ax-tooltip-position="top">Hover me</button>
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

## 🆕 New Utility Classes (v2.1)

### Display Utilities

```html
<div class="ax-block">Block</div>
<div class="ax-flex">Flex</div>
<div class="ax-grid">Grid</div>
<div class="ax-hidden">Hidden</div>
<div class="ax-sr-only">Screen reader only</div>

<!-- Responsive display -->
<div class="ax-hidden md:ax-flex">Hidden on mobile, flex on md+</div>
```

### Typography Utilities

```html
<!-- Font sizes -->
<p class="ax-text-sm">Small</p>
<p class="ax-text-base">Base</p>
<p class="ax-text-lg">Large</p>
<p class="ax-text-xl">Extra large</p>

<!-- Font weights -->
<p class="ax-font-light">Light</p>
<p class="ax-font-normal">Normal</p>
<p class="ax-font-bold">Bold</p>

<!-- Text alignment -->
<p class="ax-text-center">Centered</p>
<p class="ax-text-right">Right aligned</p>

<!-- Line height -->
<p class="ax-leading-tight">Tight</p>
<p class="ax-leading-normal">Normal</p>
<p class="ax-leading-loose">Loose</p>
```

### Border Utilities

```html
<!-- Border width -->
<div class="ax-border">1px border</div>
<div class="ax-border-2">2px border</div>
<div class="ax-border-0">No border</div>

<!-- Border radius -->
<div class="ax-rounded">Default</div>
<div class="ax-rounded-md">Medium</div>
<div class="ax-rounded-lg">Large</div>
<div class="ax-rounded-full">Full (pill)</div>

<!-- Border colors -->
<div class="ax-border-primary">Primary</div>
<div class="ax-border-success">Success</div>
<div class="ax-border-danger">Danger</div>
```

### Shadow Utilities

```html
<div class="ax-shadow-sm">Small shadow</div>
<div class="ax-shadow-md">Medium shadow</div>
<div class="ax-shadow-lg">Large shadow</div>
<div class="ax-shadow-xl">Extra large shadow</div>
<div class="ax-shadow-none">No shadow</div>
```

### Background Utilities

```html
<!-- Background colors -->
<div class="ax-bg-primary">Primary</div>
<div class="ax-bg-success">Success</div>
<div class="ax-bg-gray-100">Gray 100</div>
<div class="ax-bg-transparent">Transparent</div>

<!-- Gradients -->
<div class="ax-bg-gradient-primary">Gradient primary</div>
<div class="ax-bg-gradient-rainbow">Rainbow gradient</div>
```

### Sizing Utilities

```html
<!-- Width -->
<div class="ax-w-full">Full width</div>
<div class="ax-w-screen">Screen width</div>
<div class="ax-w-auto">Auto width</div>

<!-- Height -->
<div class="ax-h-full">Full height</div>
<div class="ax-h-screen">Screen height</div>

<!-- Max width -->
<div class="ax-max-w-full">Full</div>
<div class="ax-max-w-screen">Screen</div>
```

### Position Utilities

```html
<!-- Position -->
<div class="ax-relative">Relative</div>
<div class="ax-absolute">Absolute</div>
<div class="ax-fixed">Fixed</div>
<div class="ax-sticky">Sticky</div>

<!-- Z-index -->
<div class="ax-z-10">Z-index 10</div>
<div class="ax-z-50">Z-index 50</div>

<!-- Overflow -->
<div class="ax-overflow-hidden">Hidden</div>
<div class="ax-overflow-auto">Auto</div>
<div class="ax-overflow-scroll">Scroll</div>
```

### Aspect Ratio Utilities

```html
<!-- Aspect ratios -->
<div class="ax-aspect-square">1:1 square</div>
<div class="ax-aspect-video">16:9 video</div>
<div class="ax-aspect-portrait">3:4 portrait</div>
<div class="ax-aspect-classic">4:3 classic</div>
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
├── abstracts/              # Configuration (colors, typography, spacing, etc.)
├── base/                   # Global resets and root styles
├── 02-layout-grid/        # Grid, containers, display utilities, aspect ratio
├── 03-typography/         # Typography utilities
├── 04-ui-components/      # UI components (navigation, indicators)
│   ├── navigation/        # Navbar, nav, tabs, breadcrumb, pagination
│   └── indicators/        # Alerts, badges, progress, spinners
├── 05-behavior/           # CSS-only interactive components
│   ├── dropdowns.scss    # Dropdown menus
│   ├── accordions.scss   # Accordion components
│   └── carousels.scss    # Carousel sliders
├── 06-utilities/          # Utility classes
│   ├── borders.scss      # Border utilities
│   ├── shadows.scss      # Shadow utilities
│   ├── backgrounds.scss  # Background utilities
│   ├── sizing.scss       # Width/height utilities
│   └── positioning.scss  # Position & z-index utilities
├── layout/                # Legacy layout modules (deprecated)
├── components/            # Component modules (buttons, forms, modals, etc.)
└── builds/                # Build entry points
```

src/
├── abstracts/ # Configuration (colors, typography, spacing, etc.)
├── base/ # Global resets and root styles
├── layout/ # Grid, flexbox, centering, spacing
├── components/ # UI components (buttons, forms, modals, etc.)
└── builds/ # Build entry points

```

## 📄 License

MIT © Dale Tomson

## 🔗 Links

- [GitHub Repository](https://github.com/dale-tomson/axis-twelve)
- [npm Package](https://www.npmjs.com/package/axis-twelve)
- [Interactive Documentation](https://dale-tomson.github.io/axis-twelve-docs)
- [Comprehensive Example](docs/v2/comprehensive-example.html)
- [Component Documentation](docs/v2/)

- [Changelog History](CHANGELOG.md)
- [Available Scripts](SCRIPTS.md)
- [Report Issues](https://github.com/dale-tomson/axis-twelve/issues)

---

<div align="center">

**Made with ❤️ by Dale Tomson**

</div>
```

## 🆕 Phase 2 Features (v2.2.0)

### Dark Mode Support
```html
<!-- Toggle dark mode -->
<button onclick="document.body.classList.toggle('ax-dark')">
  Toggle Dark Mode
</button>

<!-- Dark mode container -->
<div class="ax-dark">
  <div class="ax-card">Dark mode card</div>
</div>
```

### Motion Preferences
```html
<!-- Respects user motion settings -->
<div class="ax-motion-safe">Animated content</div>

<!-- Animation utilities -->
<div class="ax-animate-spin">Spinning</div>
<div class="ax-animate-pulse">Pulsing</div>
```

### Toast Notifications
```html
<div class="ax-toasts ax-toasts--top-right">
  <div class="ax-toast ax-toast--success">
    <div class="ax-toast__content">
      <div class="ax-toast__title">Success!</div>
      <div class="ax-toast__description">Action completed</div>
    </div>
  </div>
</div>
```

### Skeleton Loaders
```html
<!-- Text skeleton -->
<div class="ax-skeleton ax-skeleton--text ax-skeleton--w-3/4"></div>

<!-- Avatar skeleton -->
<div class="ax-skeleton ax-skeleton--circle ax-skeleton--md"></div>

<!-- Card skeleton -->
<div class="ax-skeleton ax-skeleton--rect"></div>
```

**Phase 2 Module:** Available as `axis-phase2` build
