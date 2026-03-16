# SCSS Framework Skills

This document outlines the key skills and knowledge required for working with the Axis Twelve SCSS framework.

## Architecture Overview

### Directory Structure

```
src/
├── abstracts/      # Configuration, variables, mixins (no CSS output)
├── base/          # Global resets and root styles
├── layout/        # Grid, flexbox, centering, spacing utilities
├── components/    # UI components (buttons, forms, modals, etc.)
└── builds/        # Build entry points
```

### Key Principles

1. **Modular Architecture**: Each module is independent with zero cross-component dependencies
2. **BEM Naming**: All classes use `.ax-` prefix for namespace protection
3. **CSS Logical Properties**: Use logical properties for LTR/RTL support
4. **Accessibility First**: WCAG 2.1 compliant, keyboard navigation support
5. **Mobile First**: Responsive breakpoints starting from mobile

## SCSS Patterns

### Import Structure

```scss
// Abstracts (configuration only, no CSS output)
@use '../abstracts' as *;

// Base styles
@use '../base/root';
@use '../base/reset';

// Layout utilities
@use '../layout/grid';
@use '../layout/flexbox';

// Components
@use '../components/buttons';
```

### Mixins Usage

```scss
@use '../abstracts/mixins' as *;

// Responsive breakpoint
@include respond-to('md') {
  // styles for md and up
}

// Flex utilities
@include flex-row(center, center);
@include flex-column;
@include flex-center(row);
```

### Variables

```scss
@use '../abstracts/colors' as *;
@use '../abstracts/spacing' as *;
@use '../abstracts/breakpoints' as *;

// Use semantic colors
color: $primary;
background-color: $gray-100;

// Use spacing scale
margin: $spacer-md;
padding: $gap-lg;
```

## CSS Logical Properties

Always prefer logical properties over physical ones:

| Physical        | Logical                |
| --------------- | ---------------------- |
| `margin-left`   | `margin-inline-start`  |
| `margin-right`  | `margin-inline-end`    |
| `padding-left`  | `padding-inline-start` |
| `padding-right` | `padding-inline-end`   |
| `left`          | `inset-inline-start`   |
| `right`         | `inset-inline-end`     |

## BEM Naming Convention

```scss
// Block
.ax-btn {
}

// Element
.ax-card__title {
}
.ax-card__body {
}

// Modifier
.ax-btn--primary {
}
.ax-btn--lg {
}

// Combined
.ax-card--shadow {
}
```

## Responsive Breakpoints

```scss
// Breakpoint map
$grid-breakpoints: (
  'xs': 0,
  // mobile (default)
  'sm': 576px,
  // small devices
  'md': 768px,
  // tablets
  'lg': 992px,
  // small desktops
  'xl': 1200px,
  // desktops
  'xxl': 1400px, // large desktops
);

// Usage
@include respond-to('md') {
  // tablet and up
}
```

## Accessibility Requirements

1. **Minimum touch targets**: 44x44px
2. **Focus states**: High contrast focus rings
3. **Color contrast**: WCAG 2.1 AA minimum
4. **Keyboard navigation**: All interactive elements accessible
5. **Screen reader support**: Proper ARIA labels where needed

## Color System

```scss
// Semantic colors
$primary: #3b82f6;
$secondary: #6b7280;
$success: #10b981;
$danger: #ef4444;
$warning: #f59e0b;
$info: #06b6d4;

// Grays
$gray-50: #f9fafb;
$gray-100: #f3f4f6;
// ... through $gray-950
```

## Spacing Scale

```scss
$spacer-0: 0;
$spacer-xs: 0.25rem; // 4px
$spacer-sm: 0.5rem; // 8px
$spacer-md: 1rem; // 16px
$spacer-lg: 1.5rem; // 24px
$spacer-xl: 3rem; // 48px
$spacer-2xl: 4rem; // 64px
$spacer-3xl: 6rem; // 96px
```
