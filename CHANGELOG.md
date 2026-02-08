# Changelog

All notable changes to Axis Twelve will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [[2.0.1]](./docs/changelogs/v2.0.1.md) - 2026-02-08

### 🌐 Logical Property Refactoring

Refactored physical direction properties to logical counterparts to support multi-directional layouts (RTL/LTR) with robust browser fallbacks.

- **Spacing** - Updated padding and margin utilities to be direction-aware.
- **Positioning** - Tooltips and layout components now use logical insets.
- **Compatibility** - Maintained support for 2020-era browsers with physical fallbacks.

## [[2.0.0]](./docs/changelogs/v2.0.0.md) - 2026-01-17

### 🎉 Major Release - Modular Architecture

Complete rewrite of Axis Twelve with modular architecture and comprehensive UI components. Documentation is now served as static files in the `docs/` directory.

### ✨ Added

#### Documentation
- **Static Documentation** - Markdown documentation organized in a clean directory structure.

#### Architecture
- **Modular build system** - Separate builds for each component module
- **Layered SCSS structure** - abstracts, base, layout, components, utilities, themes
- **CSS Custom Properties** - Runtime theming support with CSS variables
- **BEM naming convention** - All classes use `.ax-` prefix for namespace protection

#### UI Components
- **Buttons** (`axis-buttons.css`) - Semantic variants, sizes, button groups, and high-contrast SVG icon support.
- **Forms** (`axis-forms.css`) - Inputs, selects, checkboxes, radios, floating labels, validation states.
- **Modals** (`axis-modals.css`) - Dialog components with backdrop and scroll lock.
- **Tooltips** (`axis-tooltips.css`) - CSS-only tooltips with robust positioning and arrow fixes.
- **Tables** (`axis-tables.css`) - Responsive tables with mobile card transformation.
- **Cards** (`axis-cards.css`) - Flexible card containers with shadow elevation and robust image handling.

#### Features
- **Accessibility-first design** - WCAG 2.1 compliant with keyboard navigation support.
- **Fluid typography** - Responsive font sizing using CSS clamp().
- **Comprehensive color system** - Neutral grays, semantic colors, theme maps.
- **Enhanced spacing scale** - Named and numeric values for precise control.
- **Centralized z-index management** - Prevents stacking context conflicts.

### 🛠 Fixed
- **Cards** - Fixed `.ax-card--shadow` modifier not appearing in compiled CSS.
- **Tooltips** - Fixed arrow detachment and positioning conflicts across all directions.
- **Tooltips** - Improved rendering on void elements (like inputs) via semantic mapping hints.
- **Buttons** - Improved color contrast for all semantic variants on dark/colored backgrounds.

### 🔄 Changed
- **Directory structure** - Reorganized from flat to layered architecture.
- **Import paths** - SCSS imports changed from `src/scss/style` to `src/builds/axis-twelve`.
- **Package main** - Now points to minified version by default.
- **Documentation** - Shifted from a dynamic Node.js viewer to a purely static approach.

#### Improvements
- **Better modularity** - Zero cross-component dependencies
- **Improved accessibility** - Minimum 44x44px touch targets, high contrast focus states
- **Enhanced documentation** - Inline comments and comprehensive README
- **Stricter linting** - Updated stylelint config for BEM naming

### 📊 Bundle Sizes

- **Full framework**: 103KB expanded, 77KB minified
- **Layout module**: 80KB expanded, 57KB minified
- **Buttons module**: 6.4KB expanded, 5.5KB minified
- **Forms module**: 9.5KB expanded, 8.6KB minified
- **Modals module**: 3.4KB expanded, 2.9KB minified
- **Tooltips module**: 3.4KB expanded, 3.0KB minified
- **Tables module**: 3.1KB expanded, 2.7KB minified
- **Cards module**: 3.2KB expanded, 2.8KB minified

---

[2.0.1]: https://github.com/dale-tomson/axis-twelve/compare/v2.0.0...v2.0.1
[2.0.0]: https://github.com/dale-tomson/axis-twelve/releases/tag/v2.0.0

