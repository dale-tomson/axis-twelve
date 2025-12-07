# Getting Started

Welcome to **Axis Twelve** - the 12-column CSS framework that makes building faster and centering easier.

## What is Axis Twelve?

Axis Twelve is a lightweight, responsive CSS framework built with SCSS that provides:

- **12-Column Grid System** - Powerful CSS Grid-based layouts with responsive breakpoints
- **Flexbox Utilities** - Complete flex utilities for alignment and flexible layouts
- **Centering Components** - Purpose-built components for centering content
- **Spacing Utilities** - 35+ spacing sizes with responsive variants
- **Mobile-First** - Responsive design out of the box with 6 breakpoints

## Why Axis Twelve?

✅ **Simple** - Easy-to-understand class names and structure  
✅ **Flexible** - Grid, flexbox, and centering all in one  
✅ **Responsive** - Mobile-first with 6 responsive breakpoints  
✅ **Customizable** - Full SCSS variables for theming  
✅ **Lightweight** - Only 52.63 KB CSS (7.42 KB gzipped) - 55.5% optimized  
✅ **Modern** - Built with modern Sass @use syntax

## Quick Example

```html
<div class="grid gap-md">
  <div class="col-6">Half Width</div>
  <div class="col-6">Half Width</div>
</div>
```

## Next Steps

- **[Installation](installation.md)** - Get Axis Twelve up and running
- **[Quick Start](quick-start.md)** - Create your first layout
- **[Grid System](grid.md)** - Learn about the 12-column grid
- **[Changelog](../CHANGELOG.md)** ([GitHub](https://github.com/dale-tomson/axis-twelve/blob/main/CHANGELOG.md)) - View release notes and version history

## Development Setup

### Start Local Development Server

```bash
pnpm start
# Server runs on http://localhost:3000/
```

### Build and Check Quality

```bash
# Compile SCSS to CSS
pnpm build

# Lint and check code quality
pnpm lint

# Auto-fix SCSS issues
pnpm lint:fix

# Full quality check (lint + build)
pnpm check
```

### Development Workflow

```bash
# Watch for SCSS changes during development
pnpm watch

# In another terminal, start the server
pnpm start
```

## Key Features

### Grid System
12-column responsive layouts with gaps, offsets, and full responsiveness.

### Flexbox Framework
Complete flex utilities for alignment, distribution, and flexible items.

### Centering
Row, Column, and Box components designed specifically for centering content.

### Spacing Utilities
Padding, margin, and gap utilities with 35+ sizes and responsive variants.

### Mobile-First
Start with mobile, enhance for larger screens using responsive breakpoints.

## Breakpoints

| Name | Width | Usage |
|------|-------|-------|
| xs | 0px | Mobile (default) |
| sm | 576px | Small devices |
| md | 768px | Tablets |
| lg | 992px | Desktops |
| xl | 1200px | Large desktops |
| xxl | 1400px | 2K displays |

## Philosophy

Axis Twelve follows a utility-first approach combined with semantic component names. Every class has a single, clear purpose, making it easy to compose complex layouts from simple, reusable pieces.

The framework is built on modern CSS features (CSS Grid, Flexbox) and uses SCSS for extensibility and customization.

## Current Version

**Axis Twelve v1.0.1** - Latest release with documentation and tooling improvements (no framework changes)

- 📱 [View v1.0.1 Release Notes](../project/docs/changelog/v1.0.1.md) ([GitHub](https://github.com/dale-tomson/axis-twelve/blob/main/project/docs/changelog/v1.0.1.md)) - Mobile Responsiveness & CSS Consolidation
- ⚡ [View v1.0.0 Release Notes](../project/docs/changelog/v1.0.0.md) ([GitHub](https://github.com/dale-tomson/axis-twelve/blob/main/project/docs/changelog/v1.0.0.md)) - SCSS Optimization
- 🏗️ [View v0.0.4 Release Notes](../project/docs/changelog/v0.0.4.md) ([GitHub](https://github.com/dale-tomson/axis-twelve/blob/main/project/docs/changelog/v0.0.4.md)) - CLI & Distribution Improvements
- 🧹 [View v0.0.3 Release Notes](../project/docs/changelog/v0.0.3.md) ([GitHub](https://github.com/dale-tomson/axis-twelve/blob/main/project/docs/changelog/v0.0.3.md)) - Code Quality & Cleanup Release
- 📋 [Full Changelog](../CHANGELOG.md) ([GitHub](https://github.com/dale-tomson/axis-twelve/blob/main/CHANGELOG.md)) - All releases and updates
