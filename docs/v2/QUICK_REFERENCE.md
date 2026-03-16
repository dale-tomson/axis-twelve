# Axis Twelve v2.1 - Quick Reference Guide

## Installation

```bash
npm install axis-twelve
# or
pnpm install axis-twelve
```

## Import Methods

### Full Framework

```html
<link rel="stylesheet" href="node_modules/axis-twelve/dist/axis-twelve.min.css" />
```

### Modular (Recommended)

```html
<!-- Core only -->
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-core.min.css" />

<!-- Layout utilities -->
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-layout.min.css" />

<!-- Typography -->
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-typography.min.css" />

<!-- All utilities -->
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-utilities.min.css" />

<!-- UI Components -->
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-indicators.min.css" />
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-navigation.min.css" />
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-behavior.min.css" />
```

## Utility Classes Quick Reference

### Display

```html
<div class="ax-block">Block</div>
<div class="ax-flex">Flex</div>
<div class="ax-grid">Grid</div>
<div class="ax-hidden">Hidden</div>
<div class="ax-sr-only">Screen reader only</div>
```

### Typography

```html
<!-- Sizes -->
<p class="ax-text-sm">Small</p>
<p class="ax-text-base">Base</p>
<p class="ax-text-lg">Large</p>
<p class="ax-text-xl">Extra large</p>

<!-- Weights -->
<p class="ax-font-light">Light</p>
<p class="ax-font-normal">Normal</p>
<p class="ax-font-bold">Bold</p>

<!-- Alignment -->
<p class="ax-text-center">Center</p>
<p class="ax-text-right">Right</p>

<!-- Colors -->
<p class="ax-text-primary">Primary</p>
<p class="ax-text-success">Success</p>
<p class="ax-text-danger">Danger</p>
```

### Spacing

```html
<!-- Margin -->
<div class="ax-m-4">Margin all</div>
<div class="ax-mt-4">Margin top</div>
<div class="ax-mb-4">Margin bottom</div>
<div class="ax-mx-auto">Margin horizontal auto</div>

<!-- Padding -->
<div class="ax-p-4">Padding all</div>
<div class="ax-pt-4">Padding top</div>
<div class="ax-pb-4">Padding bottom</div>
```

### Borders

```html
<!-- Width -->
<div class="ax-border">1px border</div>
<div class="ax-border-2">2px border</div>

<!-- Radius -->
<div class="ax-rounded">Default</div>
<div class="ax-rounded-md">Medium</div>
<div class="ax-rounded-lg">Large</div>
<div class="ax-rounded-full">Full (pill)</div>

<!-- Colors -->
<div class="ax-border-primary">Primary</div>
<div class="ax-border-success">Success</div>
```

### Shadows

```html
<div class="ax-shadow-sm">Small</div>
<div class="ax-shadow-md">Medium</div>
<div class="ax-shadow-lg">Large</div>
<div class="ax-shadow-xl">Extra large</div>
```

### Backgrounds

```html
<!-- Colors -->
<div class="ax-bg-primary">Primary</div>
<div class="ax-bg-success">Success</div>
<div class="ax-bg-gray-100">Gray 100</div>

<!-- Gradients -->
<div class="ax-bg-gradient-primary">Gradient</div>
<div class="ax-bg-gradient-rainbow">Rainbow</div>
```

### Sizing

```html
<!-- Width -->
<div class="ax-w-full">100%</div>
<div class="ax-w-screen">Screen width</div>
<div class="ax-w-auto">Auto</div>

<!-- Height -->
<div class="ax-h-full">100%</div>
<div class="ax-h-screen">Screen height</div>
```

### Position

```html
<div class="ax-relative">Relative</div>
<div class="ax-absolute">Absolute</div>
<div class="ax-fixed">Fixed</div>
<div class="ax-sticky">Sticky</div>
```

### Aspect Ratio

```html
<div class="ax-aspect-square">1:1</div>
<div class="ax-aspect-video">16:9</div>
<div class="ax-aspect-portrait">3:4</div>
```

## Component Examples

### Buttons

```html
<button class="ax-btn ax-btn--primary">Primary</button>
<button class="ax-btn ax-btn--success">Success</button>
<button class="ax-btn ax-btn--danger">Danger</button>
<button class="ax-btn ax-btn--outline-primary">Outline</button>
```

### Alerts

```html
<div class="ax-alert ax-alert--success">
  <span class="ax-alert__icon">✓</span>
  <div class="ax-alert__content">
    <p class="ax-alert__title">Success!</p>
    <p class="ax-alert__description">Action completed.</p>
  </div>
</div>
```

### Badges

```html
<span class="ax-badge ax-badge--primary">Primary</span>
<span class="ax-badge ax-badge--success">Success</span>
<span class="ax-badge ax-badge--danger">Danger</span>
```

### Progress

```html
<div class="ax-progress">
  <div class="ax-progress__indicator" style="width: 50%"></div>
</div>
```

### Spinners

```html
<div class="ax-spinner"></div>
<div class="ax-spinner ax-spinner--sm"></div>
<div class="ax-spinner ax-spinner--lg"></div>
```

### Tabs

```html
<ul class="ax-tabs">
  <li class="ax-tabs__item">
    <a href="#" class="ax-tabs__link ax-tabs__link--active" aria-selected="true">Tab 1</a>
  </li>
  <li class="ax-tabs__item">
    <a href="#" class="ax-tabs__link">Tab 2</a>
  </li>
</ul>
```

### Breadcrumb

```html
<nav class="ax-breadcrumb">
  <div class="ax-breadcrumb__item">
    <a href="#" class="ax-breadcrumb__link">Home</a>
  </div>
  <div class="ax-breadcrumb__item">
    <span class="ax-breadcrumb__current">Current</span>
  </div>
</nav>
```

### Pagination

```html
<ul class="ax-pagination">
  <li class="ax-pagination__item">
    <a href="#" class="ax-pagination__link">&laquo;</a>
  </li>
  <li class="ax-pagination__item">
    <a href="#" class="ax-pagination__link ax-pagination__link--active" aria-current="page">1</a>
  </li>
  <li class="ax-pagination__item">
    <a href="#" class="ax-pagination__link">2</a>
  </li>
</ul>
```

### Dropdown

```html
<div class="ax-dropdown">
  <button class="ax-dropdown__trigger">Menu</button>
  <div class="ax-dropdown__menu">
    <a href="#" class="ax-dropdown__item">Item 1</a>
    <a href="#" class="ax-dropdown__item">Item 2</a>
  </div>
</div>
```

### Accordion

```html
<div class="ax-accordion">
  <details class="ax-accordion__item">
    <summary class="ax-accordion__trigger">Title</summary>
    <div class="ax-accordion__content">Content</div>
  </details>
</div>
```

## Responsive Utilities

All utilities have responsive variants:

```html
<!-- Hidden on mobile, visible on md+ -->
<div class="ax-hidden md:ax-block">Content</div>

<!-- Text center on mobile, left on md+ -->
<p class="ax-text-center md:ax-text-left">Text</p>

<!-- Full width on mobile, half on lg+ -->
<div class="ax-w-full lg:ax-w-1/2">Content</div>
```

## Color Palette

### Theme Colors

- `primary` - Blue (#3b82f6)
- `secondary` - Gray (#6b7280)
- `success` - Green (#10b981)
- `danger` - Red (#ef4444)
- `warning` - Amber (#f59e0b)
- `info` - Cyan (#06b6d4)

### Gray Scale

- `gray-50` to `gray-900` (10 steps)

## Breakpoints

- `xs`: 0px (mobile, default)
- `sm`: 576px
- `md`: 768px
- `lg`: 992px
- `xl`: 1200px
- `xxl`: 1400px

## CSS Custom Properties

```css
:root {
  --ax-color-primary: #3b82f6;
  --ax-color-success: #10b981;
  --ax-color-danger: #ef4444;
  --ax-spacing-md: 1rem;
  --ax-shadow-lg: 0 10px 15px -3px rgb(0 0 0 / 0.1);
  --ax-radius-lg: 0.5rem;
}
```

## Common Patterns

### Card

```html
<div class="ax-bg-white ax-shadow-lg ax-rounded-lg">
  <div class="ax-p-lg">
    <h3 class="ax-text-xl ax-font-bold">Title</h3>
    <p class="ax-text-gray-600 ax-mt-sm">Description</p>
  </div>
</div>
```

### Flexbox Layout

```html
<div class="ax-flex ax-items-center ax-justify-between ax-gap-md">
  <div>Content</div>
  <button class="ax-btn ax-btn--primary">Action</button>
</div>
```

### Grid Layout

```html
<div class="ax-grid ax-gap-lg">
  <div class="ax-col-6">Half width</div>
  <div class="ax-col-6">Half width</div>
</div>
```

### Centered Content

```html
<div class="ax-flex ax-items-center ax-justify-center ax-min-h-screen">
  <div class="ax-text-center">
    <h1 class="ax-text-4xl">Centered</h1>
  </div>
</div>
```

## Accessibility

- All interactive elements have focus states
- Screen reader utilities: `ax-sr-only`
- Keyboard navigation support
- WCAG 2.1 compliant colors

## Browser Support

- Modern browsers (2020+)
- Fallbacks provided where possible
- Progressive enhancement approach
