# Welcome to Axis Twelve Documentation

Axis Twelve is a **modern, modular, and lightweight CSS framework** designed for speed and flexibility. Whether you're building a simple landing page or a complex web application, Axis Twelve provides the tools you need with zero bloat.

## 🌟 Why Axis Twelve?

- **Zero Bloat**: Only include the modules you actually use.
- **BEM Powered**: Clean, predictable, and collision-free class names (`.ax-*`).
- **Responsive by Design**: Built-in support for all screen sizes.
- **CSS-Only**: No JavaScript required for core functionality (including tooltips and modals).

---

## 🚀 Quick Start

Get up and running in seconds with our CDN version.

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css" />
```

Or install via NPM for local development:

```bash
npm install axis-twelve
```

---

## 🗺 Documentation Map

Explore the documentation by choosing a module from the sidebar or following the links below.

> [!TIP]
> **Check out the [Comprehensive Example](comprehensive-example.html)** to see all components in one place with a LTR/RTL toggle.

### Core Foundation

- **[Layout](layout.md)**: The grid system, flexbox utilities, and spacing constants that form the backbone of your UI.

### Components

- **[Buttons](buttons.md)**: Solid, outline, and ghost button variants with support for groups and icons.
- **[Forms](forms.md)**: Accessible and beautiful form controls, input groups, and validation states.
- **[Cards](cards.md)**: Versatile containers for content, images, and actions.
- **[Tables](tables.md)**: Responsive and styled tables for data display.

### Interactive (CSS-Only)

- **[Modals](modals.md)**: Powerful overlay dialogs that work without a single line of JS.
- **[Tooltips](tooltips.md)**: Lightweight, data-attribute-driven tooltips.
- **[Behavior](behavior.md)**: CSS-only dropdowns, accordions, and carousels.
- **[Toasts](toasts.md)**: Notification toasts with auto-dismiss and progress indicators.

### Navigation & Layout

- **[Navigation](navigation.md)**: Navbar, tabs, breadcrumb, and pagination components.
- **[Container Queries](container-queries.md)**: Component-level responsive design utilities.
- **[Layout](layout.md)**: Grid system, flexbox utilities, and spacing constants.

### Utilities & Theming

- **[Typography](typography.md)**: Font sizing, weights, alignment, and text utilities.
- **[Utilities](utilities.md)**: Borders, shadows, backgrounds, sizing, and positioning.
- **[Dark Mode](dark-mode.md)**: Comprehensive dark mode support with system preference detection.
- **[Motion](motion.md)**: Animation utilities and motion preference management.
- **[Print](print.md)**: Optimized styles for printing web pages to paper or PDF.

### Indicators & Feedback

- **[Indicators](indicators.md)**: Alerts, badges, and progress indicators.
- **[Skeletons](skeletons.md)**: Loading placeholders with shimmer animation.
- **[Empty States](empty-states.md)**: Placeholder content for empty or loading states.

### Form Components

- **[Forms](forms.md)**: Accessible and beautiful form controls, input groups, and validation states.
- **[Range Slider](range-slider.md)**: Customizable range input slider.
- **[File Upload](file-upload.md)**: Styled file upload components with preview support.

### UI Components

- **[Buttons](buttons.md)**: Solid, outline, and ghost button variants with support for groups and icons.
- **[Cards](cards.md)**: Versatile containers for content, images, and actions.
- **[Tables](tables.md)**: Responsive and styled tables for data display.

---

## 📦 Module Architecture

Axis Twelve follows a **modular-first** approach. Each component is available as a standalone CSS file, so you only load what you need:

```html
<!-- Full framework -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css" />

<!-- Individual modules -->
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-buttons.min.css"
/>
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-forms.min.css"
/>
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-layout.min.css"
/>
```

### Module Sizes (Approximate)

| Module                 | Uncompressed | Minified | Gzipped |
| ---------------------- | ------------ | -------- | ------- |
| **axis-twelve** (full) | ~80KB        | ~65KB    | ~12KB   |
| **axis-layout**        | ~15KB        | ~12KB    | ~2KB    |
| **axis-buttons**       | ~8KB         | ~6KB     | ~1KB    |
| **axis-forms**         | ~12KB        | ~9KB     | ~2KB    |
| **axis-cards**         | ~6KB         | ~5KB     | ~1KB    |

> [!NOTE]
> Sizes are approximate and vary based on customization and usage.

---

## 🎯 Design Principles

### 1. Modularity

Each component is independent and can be used without the entire framework.

### 2. Accessibility First

All components follow WCAG 2.1 guidelines and include proper ARIA attributes.

### 3. Progressive Enhancement

Core functionality works without JavaScript, with enhancements for modern browsers.

### 4. Performance

Minimal CSS output, efficient selectors, and optimized delivery.

### 5. Customization

Comprehensive CSS custom properties (variables) for easy theming.

---

## 🔧 Customization

Axis Twelve is designed to be easily customizable via CSS custom properties:

```css
:root {
  /* Colors */
  --ax-color-primary: #3b82f6;
  --ax-color-secondary: #6b7280;
  --ax-color-success: #10b981;
  --ax-color-danger: #ef4444;

  /* Typography */
  --ax-font-sans: 'Inter', system-ui, sans-serif;
  --ax-font-size-base: 1rem;
  --ax-line-height: 1.5;

  /* Spacing */
  --ax-spacing-unit: 0.25rem;
  --ax-container-padding: 1rem;
}
```

---

## 📚 Examples & Demos

Check out our [examples directory](../examples/) for complete HTML implementations:

- **[Buttons Example](../examples/buttons.html)** - All button variants and sizes
- **[Forms Example](../examples/forms.html)** - Form controls and validation
- **[Cards Example](../examples/cards.html)** - Card layouts and variations
- **[Dark Mode Example](../examples/dark-mode.html)** - Theme switching demo
- **[Layout Example](../examples/layout.html)** - Grid, flexbox, and spacing
- **[Motion Example](../examples/motion.html)** - Animations and transitions

---

## 🔄 Versioning & Updates

Axis Twelve follows [Semantic Versioning](https://semver.org/). Check the [Changelog](../changelogs/) for detailed release notes and breaking changes.

### Current Version: v2.1.0

- **Major**: Breaking changes to class names or APIs
- **Minor**: New features (backward compatible)
- **Patch**: Bug fixes and improvements

---

## 🤝 Contributing

Found a bug or have a feature request? Check out our [GitHub repository](https://github.com/dale-tomson/axis-twelve) to:

- Report issues
- Submit pull requests
- Request new features
- Improve documentation

---

## 📜 License

Axis Twelve is open source software licensed under the [MIT License](https://opensource.org/licenses/MIT).

---
