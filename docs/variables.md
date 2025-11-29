# Variables

Reference for all Axis Twelve SCSS variables and customization options.

## Grid Variables

Configuration for the 12-column grid system:

```scss
// Number of columns
$grid-columns: 12;

// Gutter (gap) between columns
$grid-gutter: 1rem;
```

### Grid Configuration Example

To change the grid to 24 columns or use different gutters, edit `_variables.scss`:

```scss
// Change to 24-column grid
$grid-columns: 24;

// Increase gutter spacing
$grid-gutter: 2rem;
```

Then recompile:

```bash
npm run build
```

## Breakpoints

Responsive breakpoints for media queries:

```scss
$grid-breakpoints: (
  xs: 0,
  sm: 576px,
  md: 768px,
  lg: 992px,
  xl: 1200px,
  xxl: 1400px
);
```

| Name | Width | Use Case |
|------|-------|----------|
| `xs` | 0 | Extra small (mobile) |
| `sm` | 576px | Small (mobile landscape) |
| `md` | 768px | Medium (tablet) |
| `lg` | 992px | Large (desktop) |
| `xl` | 1200px | Extra large (large desktop) |
| `xxl` | 1400px | Extra extra large (very large desktop) |

### Using Breakpoints in CSS

```html
<!-- Use breakpoint prefixes in HTML classes -->
<div class="col-12 md:col-6 lg:col-4">
  Responsive columns
</div>

<!-- Different layouts at different sizes -->
<div class="flex flex-column md:flex-row gap-md">
  Stack on mobile, row on tablet+
</div>
```

## Spacing Variables

The spacing scale used for padding, margins, and gaps:

```scss
// Base spacer unit
$spacer: 0.25rem;

// Named sizes (derived from spacer)
$spacing-map: (
  xs: $spacer * 1,      // 0.25rem (4px)
  sm: $spacer * 2,      // 0.5rem (8px)
  md: $spacer * 4,      // 1rem (16px)
  lg: $spacer * 6,      // 1.5rem (24px)
  xl: $spacer * 8,      // 2rem (32px)
  2xl: $spacer * 12,    // 3rem (48px)
  3xl: $spacer * 16,    // 4rem (64px)
  0, 1, 2, 3, 4, 6, 8, 10, 12, 16, 20, 24, 32
);
```

> **v0.0.2 Update**: Spacing scale optimized from 34 to 20 values. Large values (28-96rem) removed. See [Changelog](../CHANGELOG.md) ([GitHub](https://github.com/dale-tomson/axis-twelve/blob/main/CHANGELOG.md)) for details.

### Spacing Scale

| Name | Pixels | Class |
|------|--------|-------|
| xs | 4px | `.p-xs` `.m-xs` `.gap-xs` |
| sm | 8px | `.p-sm` `.m-sm` `.gap-sm` |
| md | 16px | `.p-md` `.m-md` `.gap-md` |
| lg | 24px | `.p-lg` `.m-lg` `.gap-lg` |
| xl | 32px | `.p-xl` `.m-xl` `.gap-xl` |
| 2xl | 48px | `.p-2xl` `.m-2xl` `.gap-2xl` |
| 3xl | 64px | `.p-3xl` `.m-3xl` `.gap-3xl` |

### Custom Spacing

Numeric scale provides 0-24 units (optimized for common use cases):

```scss
.p-0 { padding: 0; }
.p-1 { padding: 0.25rem; }
.p-2 { padding: 0.5rem; }
.p-4 { padding: 1rem; }
.p-8 { padding: 2rem; }
.p-24 { padding: 6rem; } // Maximum numeric value
```

## Color Variables

Semantic color palette:

```scss
$primary:   #007bff;  // Blue
$secondary: #6c757d;  // Gray
$success:   #28a745;  // Green
$danger:    #dc3545;  // Red
$warning:   #ffc107;  // Yellow/Amber
$info:      #17a2b8;  // Cyan
$light:     #f8f9fa;  // Light Gray
$dark:      #343a40;  // Dark Gray
```

### Using Colors

Colors are built into the framework as utility classes and SCSS variables:

```html
<!-- Using semantic colors (if color utilities are added) -->
<div style="background: #007bff; color: white;">
  Primary color background
</div>

<div style="background: #28a745; color: white;">
  Success color background
</div>
```

## Modifying Variables

To customize Axis Twelve, edit `/src/scss/_variables.scss`:

```scss
// Example: Double the base spacer
$spacer: 0.5rem;

// Example: Change primary color
$primary: #0066cc;

// Example: Add more breakpoints
$grid-breakpoints: (
  xs: 0,
  sm: 480px,    // Changed
  md: 768px,
  lg: 1024px,   // Changed
  xl: 1280px,   // Changed
  xxl: 1536px   // Changed
);
```

Then rebuild:

```bash
npm run build
```

## Mixins

Axis Twelve includes helpful SCSS mixins:

### Media Query Mixin

```scss
// Usage in custom SCSS
.custom-element {
  padding: 1rem;
  
  @include media-breakpoint-up(md) {
    padding: 2rem;
  }
  
  @include media-breakpoint-up(lg) {
    padding: 3rem;
  }
}
```

### Grid Mixin

```scss
.custom-grid {
  @include grid-container();
  
  > * {
    @include grid-column(6);
  }
}
```

## Complete Variable Reference

```scss
// _variables.scss

// Grid
$grid-columns: 12;
$grid-gutter: 1rem;

// Spacer
$spacer: 0.25rem;

// Breakpoints
$grid-breakpoints: (
  xs: 0,
  sm: 576px,
  md: 768px,
  lg: 992px,
  xl: 1200px,
  xxl: 1400px
);

// Colors
$primary:   #007bff;
$secondary: #6c757d;
$success:   #28a745;
$danger:    #dc3545;
$warning:   #ffc107;
$info:      #17a2b8;
$light:     #f8f9fa;
$dark:      #343a40;

// Spacing Map
$spacing-map: (
  xs: 0.25rem,
  sm: 0.5rem,
  md: 1rem,
  lg: 1.5rem,
  xl: 2rem,
  2xl: 3rem,
  3xl: 4rem,
  // ... plus numeric 0-96
);
```

## Creating Custom Theme

To create a custom theme, override variables before importing Axis Twelve:

```scss
// custom-theme.scss

// Override variables before use
$primary: #2196F3;
$secondary: #424242;
$success: #4CAF50;

// Use Axis Twelve (modern @use syntax)
@use 'path/to/axis-twelve/src/scss/variables' as *;
@use 'path/to/axis-twelve/src/scss/style';

// Add custom styles
body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
```

## Build System

The SCSS is compiled with the npm build script:

```bash
# Compile and minify
npm run build

# Watch for changes
npm run watch

# Development mode
npm run dev
```

See [Installation](installation.md) for build instructions and [Breakpoints](breakpoints.md) for responsive design reference.
