# Dark Mode Component Overrides

This document details how each component adapts to dark mode. When the `.ax-dark` class is applied, components automatically adjust their colors and styles for optimal dark mode viewing.

## Overview

Axis Twelve's dark mode system uses CSS custom properties to provide component-specific overrides. Each component is designed to maintain readability, accessibility, and visual hierarchy in dark mode.

## Forms Dark Mode

### Inputs, Selects, and Textareas

Input fields adapt with darker backgrounds and adjusted border colors.

```html
<html class="ax-dark">
  <input type="text" class="ax-input" placeholder="Dark mode input" />
  <select class="ax-select">
    <option>Option 1</option>
  </select>
  <textarea class="ax-textarea" placeholder="Dark mode textarea"></textarea>
</html>
```

**Changes:**

- Background: `var(--ax-bg-surface, #1f2937)`
- Border: `var(--ax-border-primary, #374151)`
- Text: `var(--ax-text-primary, #f9fafb)`
- Placeholder: `var(--ax-text-tertiary, #9ca3af)`

### Checkboxes and Radios

Custom checkboxes and radios adapt with dark backgrounds.

```html
<html class="ax-dark">
  <label class="ax-checkbox">
    <input type="checkbox" />
    <span class="ax-checkbox__label">Checkbox</span>
  </label>

  <label class="ax-radio">
    <input type="radio" />
    <span class="ax-radio__label">Radio</span>
  </label>
</html>
```

### File Uploads

File upload components adapt with dark backgrounds and borders.

```html
<html class="ax-dark">
  <div class="ax-file-upload">
    <div class="ax-file-upload__icon">📁</div>
    <div class="ax-file-upload__title">Upload files</div>
  </div>
</html>
```

### Range Sliders

Range sliders adapt with dark track and thumb colors.

```html
<html class="ax-dark">
  <div class="ax-range">
    <input type="range" min="0" max="100" value="50" />
  </div>
</html>
```

## Layout Components

### Cards

Cards adapt with dark backgrounds and subtle shadows.

```html
<html class="ax-dark">
  <div class="ax-card">
    <h3>Card Title</h3>
    <p>Card content with dark background</p>
  </div>
</html>
```

**Changes:**

- Background: `var(--ax-bg-surface, #1f2937)`
- Border: `var(--ax-border-primary, #374151)`
- Shadow: Darker, more transparent shadow

### Tables

Tables adapt with dark row backgrounds and borders.

```html
<html class="ax-dark">
  <table class="ax-table">
    <thead>
      <tr>
        <th>Header</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Cell</td>
      </tr>
    </tbody>
  </table>
</html>
```

**Changes:**

- Header background: `var(--ax-bg-surface-2, #374151)`
- Row background (striped): `var(--ax-bg-surface-2, #374151)`
- Border: `var(--ax-border-primary, #374151)`

### Navigation

Navigation components adapt with dark backgrounds and adjusted link colors.

```html
<html class="ax-dark">
  <nav class="ax-navbar">
    <a href="#" class="ax-nav-link">Link</a>
  </nav>
</html>
```

**Changes:**

- Navbar background: `var(--ax-bg-surface, #1f2937)`
- Link color: `var(--ax-text-secondary, #d1d5db)`
- Hover background: `var(--ax-bg-surface-2, #374151)`

## Overlays

### Modals

Modals adapt with dark backgrounds and overlays.

```html
<html class="ax-dark">
  <div class="ax-modal">
    <div class="ax-modal__content">
      <div class="ax-modal__header">
        <h3>Modal Title</h3>
      </div>
      <div class="ax-modal__body">Modal content</div>
    </div>
  </div>
</html>
```

**Changes:**

- Overlay: `rgba(0, 0, 0, 0.75)`
- Content background: `var(--ax-bg-surface, #1f2937)`
- Border: `var(--ax-border-primary, #374151)`

### Tooltips

Tooltips adapt with dark backgrounds.

```html
<html class="ax-dark">
  <div class="ax-tooltip">
    <div class="ax-tooltip__content">Tooltip text</div>
  </div>
</html>
```

**Changes:**

- Background: `var(--ax-bg-surface-3, #4b5563)`
- Text: `var(--ax-text-primary, #f9fafb)`
- Border: `var(--ax-border-primary, #374151)`

### Toasts

Toast notifications adapt with dark backgrounds.

```html
<html class="ax-dark">
  <div class="ax-toast ax-toast--success">
    <div class="ax-toast__content">Success message</div>
  </div>
</html>
```

## Interactive Elements

### Buttons

All button variants adapt for dark mode.

```html
<html class="ax-dark">
  <button class="ax-btn ax-btn--primary">Primary</button>
  <button class="ax-btn ax-btn--secondary">Secondary</button>
  <button class="ax-btn ax-btn--outline">Outline</button>
  <button class="ax-btn ax-btn--ghost">Ghost</button>
</html>
```

**Changes by variant:**

- **Primary**: Brighter blue (`#60a5fa`) on dark background
- **Secondary**: Dark background (`#374151`)
- **Outline**: Transparent with dark border
- **Ghost**: Dark text with subtle hover

### Dropdowns

Dropdown menus adapt with dark backgrounds.

```html
<html class="ax-dark">
  <div class="ax-dropdown">
    <div class="ax-dropdown__content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
    </div>
  </div>
</html>
```

**Changes:**

- Background: `var(--ax-bg-surface, #1f2937)`
- Border: `var(--ax-border-primary, #374151)`
- Shadow: Darker shadow

### Accordions

Accordion components adapt with dark backgrounds.

```html
<html class="ax-dark">
  <div class="ax-accordion">
    <div class="ax-accordion__item">
      <div class="ax-accordion__header">Header</div>
      <div class="ax-accordion__content">Content</div>
    </div>
  </div>
</html>
```

## Indicators

### Badges

Badge variants adapt with dark backgrounds.

```html
<html class="ax-dark">
  <span class="ax-badge ax-badge--primary">Primary</span>
  <span class="ax-badge ax-badge--success">Success</span>
  <span class="ax-badge ax-badge--danger">Danger</span>
  <span class="ax-badge ax-badge--warning">Warning</span>
</html>
```

**Changes:**

- Background: Muted color with opacity
- Text: Brighter variant of the color

### Alerts

Alert components adapt with dark backgrounds.

```html
<html class="ax-dark">
  <div class="ax-alert ax-alert--success">Success message</div>
</html>
```

### Progress Bars

Progress bars adapt with dark track backgrounds.

```html
<html class="ax-dark">
  <div class="ax-progress">
    <div class="ax-progress__bar ax-progress__bar--primary" style="width: 50%"></div>
  </div>
</html>
```

**Changes:**

- Track background: `var(--ax-bg-surface-2, #374151)`
- Bar colors: Brighter variants

### Skeletons

Skeleton loaders adapt with dark gradients.

```html
<html class="ax-dark">
  <div class="ax-skeleton" style="height: 20px; width: 200px;"></div>
</html>
```

**Changes:**

- Gradient: Darker shades (`#374151` to `#4b5563`)

## Customization Guide

### How to Override for Custom Components

Create dark mode overrides using CSS custom properties:

```scss
.your-component {
  background-color: var(--ax-bg-surface, #fff);
  color: var(--ax-text-primary, #1f2937);
  border-color: var(--ax-border-primary, #e5e7eb);
}

.ax-dark .your-component {
  background-color: var(--ax-bg-surface, #1f2937);
  color: var(--ax-text-primary, #f9fafb);
  border-color: var(--ax-border-primary, #374151);
}
```

### Using CSS Custom Properties

All dark mode colors are available as CSS custom properties:

```scss
// Backgrounds
var(--ax-bg-body)         // Main body background
var(--ax-bg-surface)      // Surface background
var(--ax-bg-surface-2)    // Secondary surface
var(--ax-bg-surface-3)    // Tertiary surface

// Text
var(--ax-text-primary)    // Primary text
var(--ax-text-secondary)  // Secondary text
var(--ax-text-tertiary)   // Tertiary text
var(--ax-text-inverse)    // Inverse text

// Borders
var(--ax-border-primary)  // Primary border
var(--ax-border-secondary)// Secondary border

// Semantic colors
var(--ax-color-primary)   // Primary color
var(--ax-color-success)   // Success color
var(--ax-color-danger)    // Danger color
var(--ax-color-warning)   // Warning color
var(--ax-color-info)      // Info color
```

### Example: Custom Component Dark Mode

```scss
.custom-card {
  background-color: var(--ax-bg-surface, #fff);
  border: 1px solid var(--ax-border-primary, #e5e7eb);
  color: var(--ax-text-primary, #1f2937);

  .custom-card__title {
    color: var(--ax-text-primary, #1f2937);
  }

  .custom-card__text {
    color: var(--ax-text-secondary, #6b7280);
  }
}

// Dark mode automatically applied
.ax-dark .custom-card {
  background-color: var(--ax-bg-surface, #1f2937);
  border-color: var(--ax-border-primary, #374151);
  color: var(--ax-text-primary, #f9fafb);

  .custom-card__title {
    color: var(--ax-text-primary, #f9fafb);
  }

  .custom-card__text {
    color: var(--ax-text-secondary, #9ca3af);
  }
}
```

## Best Practices

1. **Always use CSS custom properties** for colors to ensure dark mode compatibility
2. **Test components** in both light and dark modes
3. **Maintain sufficient contrast** (WCAG 2.1 AA minimum)
4. **Respect user preferences** with `prefers-color-scheme`
5. **Use semantic color names** (primary, success, etc.) rather than hardcoded values

## Related Documentation

- [Dark Mode](dark-mode.md) - Main dark mode documentation
- [Forms](forms.md) - Form components
- [Components](index.md#components) - All component documentation

## See Also

- [Dark Mode Example](../examples/dark-mode.html) - Interactive demo
- [Forms Example](../examples/forms.html) - Form components demo
