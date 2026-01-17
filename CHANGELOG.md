# Changelog

All notable changes to Axis Twelve will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2026-01-17

### 🎉 Major Release - Modular Architecture

Complete rewrite of Axis Twelve with modular architecture and comprehensive UI components.

### ✨ Added

#### Architecture
- **Modular build system** - Separate builds for each component module
- **Layered SCSS structure** - abstracts, base, layout, components, utilities, themes
- **CSS Custom Properties** - Runtime theming support with CSS variables
- **BEM naming convention** - All classes use `.ax-` prefix for namespace protection

#### New Component Modules
- **Buttons** (`axis-buttons.css`) - Semantic variants, sizes, button groups, icon buttons
- **Forms** (`axis-forms.css`) - Inputs, selects, checkboxes, radios, floating labels, validation states
- **Modals** (`axis-modals.css`) - Dialog components with backdrop and scroll lock
- **Tooltips** (`axis-tooltips.css`) - CSS-only tooltips with positioning variants
- **Tables** (`axis-tables.css`) - Responsive tables with mobile card transformation
- **Cards** (`axis-cards.css`) - Flexible card containers with media, body, footer sections

#### Features
- **Accessibility-first design** - WCAG 2.1 compliant with keyboard navigation support
- **Fluid typography** - Responsive font sizing using CSS clamp()
- **Comprehensive color system** - Neutral grays, semantic colors, theme maps
- **Enhanced spacing scale** - Named and numeric values for precise control
- **Centralized z-index management** - Prevents stacking context conflicts
- **Legacy v1.x build** - Backward compatibility support (deprecated, removal in v2.2)

#### Build System
- **20 CSS output files** - Full framework + 7 modules + legacy (expanded + minified)
- **Package exports** - Direct imports for all modules
- **Optimized builds** - Individual modules from 2.7KB to 77KB minified

### 🔄 Changed

#### Breaking Changes
- **All classes renamed** - Now use `.ax-` prefix (`.grid` → `.ax-grid`, `.flex` → `.ax-flex`, etc.)
- **Directory structure** - Completely reorganized from flat to layered architecture
- **Import paths** - SCSS imports changed from `src/scss/style` to `src/builds/axis-twelve`
- **Package main** - Now points to minified version by default
- **Version bump** - 1.0.1 → 2.0.0

#### Improvements
- **Better modularity** - Zero cross-component dependencies
- **Improved accessibility** - Minimum 44x44px touch targets, high contrast focus states
- **Enhanced documentation** - Inline comments and comprehensive README
- **Stricter linting** - Updated stylelint config for BEM naming

### 🗑️ Deprecated

- **Legacy v1.x build** - Available as `axis-twelve-legacy.css` but will be removed in v2.2
- **Old class names** - Non-prefixed classes (`.grid`, `.flex`, etc.) only in legacy build

### 📦 Migration Guide

#### For HTML Users

**v1.x:**
```html
<link rel="stylesheet" href="node_modules/axis-twelve/dist/axis-twelve.css">
<div class="grid gap-lg">
  <div class="col-6">Content</div>
</div>
```

**v2.0 (Option 1 - Legacy):**
```html
<link rel="stylesheet" href="node_modules/axis-twelve/dist/axis-twelve-legacy.min.css">
<!-- No changes needed, but deprecated -->
```

**v2.0 (Option 2 - Recommended):**
```html
<link rel="stylesheet" href="node_modules/axis-twelve/dist/axis-twelve.min.css">
<div class="ax-grid ax-gap-lg">
  <div class="ax-col-6">Content</div>
</div>
```

**v2.0 (Option 3 - Modular):**
```html
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-layout.min.css">
<link rel="stylesheet" href="node_modules/axis-twelve/dist/modules/axis-buttons.min.css">
```

#### For SCSS Users

**v1.x:**
```scss
@use 'axis-twelve/src/scss/style';
```

**v2.0:**
```scss
// Full framework
@use 'axis-twelve/src/builds/axis-twelve';

// Or modular
@use 'axis-twelve/src/abstracts' as ax;
@use 'axis-twelve/src/components/buttons';
```

### 📊 Bundle Sizes

- **Full framework**: 103KB expanded, 77KB minified
- **Layout module**: 80KB expanded, 57KB minified
- **Buttons module**: 6.4KB expanded, 5.5KB minified
- **Forms module**: 9.5KB expanded, 8.6KB minified
- **Modals module**: 3.4KB expanded, 2.9KB minified
- **Tooltips module**: 3.4KB expanded, 3.0KB minified
- **Tables module**: 3.1KB expanded, 2.7KB minified
- **Cards module**: 3.2KB expanded, 2.8KB minified
- **Legacy build**: 57KB expanded, 40KB minified

---

## [1.0.1] - 2025-12-07

### Fixed
- Build workflow improvements
- Documentation updates
- Version consistency across files

## [1.0.0] - 2025-12-07

### Added
- Initial release
- 12-column grid system
- Flexbox utilities
- Centering components
- Spacing utilities
- Responsive breakpoints
- SCSS support

---

[2.0.0]: https://github.com/dale-tomson/axis-twelve/compare/v1.0.1...v2.0.0
[1.0.1]: https://github.com/dale-tomson/axis-twelve/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/dale-tomson/axis-twelve/releases/tag/v1.0.0
