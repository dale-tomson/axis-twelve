# Toggle Switch

The Toggle Switch component provides an iOS-style toggle control for binary on/off states. It's a modern, accessible alternative to traditional checkboxes.

## Installation

### Via CDN

```html
<link
  rel="stylesheet"
  href="https://unpkg.com/axis-twelve/dist/modules/axis-toggle-switch.min.css"
/>
```

### Via npm

```bash
npm install axis-twelve
```

```scss
@use 'axis-twelve/src/components/forms/toggle-switch';
```

## Basic Usage

```html
<label class="ax-toggle">
  <input type="checkbox" class="ax-toggle__input" />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Enable notifications</span>
</label>
```

**Output:** A toggle switch with default size (md) and default color (primary).

## Size Variants

Toggle switches are available in three sizes to fit different design contexts.

### Small (36px width)

```html
<label class="ax-toggle ax-toggle--sm">
  <input type="checkbox" class="ax-toggle__input" />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Small</span>
</label>
```

### Medium (44px width) - Default

```html
<label class="ax-toggle ax-toggle--md">
  <input type="checkbox" class="ax-toggle__input" />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Medium</span>
</label>
```

### Large (52px width)

```html
<label class="ax-toggle ax-toggle--lg">
  <input type="checkbox" class="ax-toggle__input" />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Large</span>
</label>
```

## Color Variants

Toggle switches support five semantic color variants.

### Primary (Blue)

```html
<label class="ax-toggle ax-toggle--primary">
  <input type="checkbox" class="ax-toggle__input" checked />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Primary</span>
</label>
```

### Success (Green)

```html
<label class="ax-toggle ax-toggle--success">
  <input type="checkbox" class="ax-toggle__input" checked />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Success</span>
</label>
```

### Danger (Red)

```html
<label class="ax-toggle ax-toggle--danger">
  <input type="checkbox" class="ax-toggle__input" checked />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Danger</span>
</label>
```

### Warning (Yellow)

```html
<label class="ax-toggle ax-toggle--warning">
  <input type="checkbox" class="ax-toggle__input" checked />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Warning</span>
</label>
```

### Info (Cyan)

```html
<label class="ax-toggle ax-toggle--info">
  <input type="checkbox" class="ax-toggle__input" checked />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Info</span>
</label>
```

## States

### Disabled State

```html
<label class="ax-toggle ax-toggle--primary">
  <input type="checkbox" class="ax-toggle__input" disabled />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Disabled (unchecked)</span>
</label>

<label class="ax-toggle ax-toggle--primary">
  <input type="checkbox" class="ax-toggle__input" checked disabled />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Disabled (checked)</span>
</label>
```

### Loading State

```html
<label class="ax-toggle ax-toggle--primary ax-toggle--loading">
  <input type="checkbox" class="ax-toggle__input" disabled />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Loading...</span>
</label>
```

## With Icons

Add on/off indicators to the toggle slider.

```html
<label class="ax-toggle ax-toggle--primary ax-toggle--with-icons">
  <input type="checkbox" class="ax-toggle__input" checked />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">With Icons</span>
</label>
```

## Dark Mode Support

Toggle switches automatically adapt to dark mode when the `.ax-dark` class is present.

```html
<html class="ax-dark">
  <head>
    <link rel="stylesheet" href="axis-twelve.css" />
    <link rel="stylesheet" href="axis-dark-mode.css" />
  </head>
  <body>
    <label class="ax-toggle ax-toggle--primary">
      <input type="checkbox" class="ax-toggle__input" checked />
      <span class="ax-toggle__slider"></span>
      <span class="ax-toggle__label">Dark Mode Enabled</span>
    </label>
  </body>
</html>
```

## JavaScript Integration

### Basic Event Handling

```html
<label class="ax-toggle ax-toggle--primary">
  <input type="checkbox" id="myToggle" class="ax-toggle__input" />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Toggle me</span>
</label>

<script>
  const toggle = document.getElementById('myToggle');

  toggle.addEventListener('change', function () {
    console.log('Toggle is now:', this.checked);
    // Perform action based on toggle state
  });
</script>
```

### Loading State with Async Operation

```html
<label class="ax-toggle ax-toggle--primary" id="syncToggle">
  <input type="checkbox" class="ax-toggle__input" />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Sync Data</span>
</label>

<script>
  const toggle = document.getElementById('syncToggle');
  const input = toggle.querySelector('input');

  input.addEventListener('change', async function () {
    // Add loading state
    toggle.classList.add('ax-toggle--loading');
    input.disabled = true;

    try {
      // Simulate async operation
      await fetchData();
      // Keep toggle on if successful
    } catch (error) {
      // Revert toggle on error
      input.checked = false;
      console.error('Sync failed:', error);
    } finally {
      // Remove loading state
      toggle.classList.remove('ax-toggle--loading');
      input.disabled = false;
    }
  });

  async function fetchData() {
    // Your async operation here
    return new Promise((resolve) => setTimeout(resolve, 2000));
  }
</script>
```

## Accessibility

### Keyboard Navigation

Toggle switches support keyboard interaction:

- **Tab**: Focus on toggle
- **Space**: Toggle on/off
- **Enter**: Toggle on/off

### ARIA Attributes

For enhanced accessibility, add ARIA attributes:

```html
<label class="ax-toggle ax-toggle--primary" role="switch" aria-checked="true">
  <input type="checkbox" class="ax-toggle__input" aria-label="Enable notifications" />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Enable notifications</span>
</label>
```

### Focus Indicators

Toggle switches include visible focus indicators for keyboard users:

```css
.ax-toggle__input:focus + .ax-toggle__slider {
  outline: 2px solid var(--ax-color-primary, #3b82f6);
  outline-offset: 2px;
}
```

## Component API

### Class Reference

| Class                    | Description                  |
| ------------------------ | ---------------------------- |
| `.ax-toggle`             | Base toggle switch class     |
| `.ax-toggle__input`      | Hidden checkbox input        |
| `.ax-toggle__slider`     | Visible slider element       |
| `.ax-toggle__label`      | Optional text label          |
| `.ax-toggle--sm`         | Small size (36px)            |
| `.ax-toggle--md`         | Medium size (44px, default)  |
| `.ax-toggle--lg`         | Large size (52px)            |
| `.ax-toggle--primary`    | Primary color (blue)         |
| `.ax-toggle--success`    | Success color (green)        |
| `.ax-toggle--danger`     | Danger color (red)           |
| `.ax-toggle--warning`    | Warning color (yellow)       |
| `.ax-toggle--info`       | Info color (cyan)            |
| `.ax-toggle--disabled`   | Disabled state               |
| `.ax-toggle--loading`    | Loading state with animation |
| `.ax-toggle--with-icons` | Show on/off icons            |

### CSS Custom Properties

| Property             | Description                   | Default                   |
| -------------------- | ----------------------------- | ------------------------- |
| `--ax-toggle-bg`     | Background color when checked | `var(--ax-color-primary)` |
| `--ax-border-color`  | Border color                  | `var(--ax-border-color)`  |
| `--ax-color-primary` | Primary theme color           | `#3b82f6`                 |

## Examples

### Settings Panel

```html
<div class="ax-card">
  <h3>Settings</h3>

  <div style="margin-bottom: 1rem;">
    <label class="ax-toggle ax-toggle--primary">
      <input type="checkbox" class="ax-toggle__input" checked />
      <span class="ax-toggle__slider"></span>
      <span class="ax-toggle__label">Notifications</span>
    </label>
  </div>

  <div style="margin-bottom: 1rem;">
    <label class="ax-toggle ax-toggle--success">
      <input type="checkbox" class="ax-toggle__input" checked />
      <span class="ax-toggle__slider"></span>
      <span class="ax-toggle__label">Auto-save</span>
    </label>
  </div>

  <div style="margin-bottom: 1rem;">
    <label class="ax-toggle ax-toggle--danger">
      <input type="checkbox" class="ax-toggle__input" />
      <span class="ax-toggle__slider"></span>
      <span class="ax-toggle__label">Danger Zone</span>
    </label>
  </div>
</div>
```

### Form Integration

```html
<form>
  <div class="ax-form-group">
    <label class="ax-label">Account Settings</label>

    <label class="ax-toggle ax-toggle--primary" style="display: block; margin: 0.5rem 0;">
      <input type="checkbox" class="ax-toggle__input" name="notifications" />
      <span class="ax-toggle__slider"></span>
      <span class="ax-toggle__label">Email notifications</span>
    </label>

    <label class="ax-toggle ax-toggle--primary" style="display: block; margin: 0.5rem 0;">
      <input type="checkbox" class="ax-toggle__input" name="newsletter" />
      <span class="ax-toggle__slider"></span>
      <span class="ax-toggle__label">Newsletter subscription</span>
    </label>
  </div>
</form>
```

## Browser Support

| Browser | Version |
| ------- | ------- |
| Chrome  | Latest  |
| Firefox | Latest  |
| Safari  | Latest  |
| Edge    | Latest  |
| Opera   | Latest  |

## Related Components

- [Checkbox](forms.md#checkbox) - Traditional checkbox alternative
- [Radio](forms.md#radio) - For single selection from multiple options
- [Forms](forms.md) - Form layout and styling
- [Dark Mode](dark-mode.md) - Dark mode integration

## See Also

- [Toggle Switch Example](../examples/toggle-switch.html) - Interactive demo
- [Forms Example](../examples/forms.html) - Form integration examples
