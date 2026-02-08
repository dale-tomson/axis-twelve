# Forms Module

The `axis-forms` module provides a comprehensive suite of accessible, mobile-friendly, and beautiful form controls. From basic inputs to floating labels and custom checkboxes, everything is designed for a consistent user experience.



## 🚀 Installation

```html
<!-- Full Framework -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css">

<!-- Module Only -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-forms.min.css">
```

## 💡 Basic Usage

A typical form field consists of a container, a label, and the input itself.

```html
<div class="ax-form-group">
  <label class="ax-label" for="email">Email Address</label>
  <input type="email" class="ax-input" id="email" placeholder="name@example.com">
</div>
```

---

## 🛠 Classes Reference

| Class | Description | Type |
|-------|-------------|------|
| `.ax-input` | Base class for `<input>` elements. | Base |
| `.ax-select`| Base class for `<select>` elements. | Base |
| `.ax-textarea`| Base class for `<textarea>` elements. | Base |
| `.ax-label` | Styled label for form controls. | Element |
| `.ax-form-group`| Container for a label and input pair. | Layout |
| `.ax-form-text`| Small helper text below a form control. | Element |
| `.ax-form-error`| Error message text for validation. | Element |
| `.ax-input--valid`| Green border for valid state. | State |
| `.ax-input--invalid`| Red border for invalid state. | State |
| `.ax-input--sm` / `.ax-input--lg`| Sizing variations. | Modifier |
| `.ax-checkbox` / `.ax-radio`| Custom checkbox and radio containers. | Component |

---

## 🎨 Input Varieties

### Select Menus
Custom styled select menus with a sleek arrow.

```html
<select class="ax-select">
  <option>Choose an option</option>
  <option>Option 1</option>
</select>
```

### Textareas
Automatically resizable and consistent with other inputs.

```html
<textarea class="ax-textarea" rows="3"></textarea>
```

---

## ✨ Advanced Features

### Floating Labels
Create modern floating labels by using `.ax-input-group`.

```html
<div class="ax-input-group">
  <input type="text" class="ax-input" placeholder=" " id="f-name">
  <label class="ax-label" for="f-name">Full Name</label>
</div>
```

### Custom Checkboxes & Radios
Fully accessible and CSS-only custom controls.

```html
<label class="ax-checkbox">
  <input type="checkbox">
  <span class="ax-checkbox__label">Accept terms and conditions</span>
</label>

<label class="ax-radio">
  <input type="radio" name="example">
  <span class="ax-radio__label">Option A</span>
</label>
```

---

## 📏 Sizing

| Size | Class |
|------|-------|
| Small | `.ax-input--sm` |
| Default | (None) |
| Large | `.ax-input--lg` |

---

## ♿ Accessibility

- **For/ID Matching**: Always use the `for` attribute on `.ax-label` matched with the `id` of the input.
- **Aria-describedby**: Use this to link `.ax-form-text` or `.ax-form-error` to the input.
- **Focus States**: High-contrast focus rings are applied automatically for keyboard navigation.

---

## ⚙️ Customization

| Variable | Default Value | Description |
|----------|---------------|-------------|
| `--ax-border-color` | `#d1d5db` | Border color for all inputs. |
| `--ax-color-primary` | `#3b82f6` | Focus ring and active state color. |
| `--ax-bg-surface` | `#f9fafb` | Background for disabled states. |

## 📜 API Evolution

| Version | Change Type | Description |
|---------|-------------|-------------|
| **v2.0.1** | Internal | Refactored input spacing and alignment to use logical properties. |
| **v2.0.0** | Major | Initial v2 release with physical spacing properties. |
