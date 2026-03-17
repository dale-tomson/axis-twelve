# Forms Module

The `axis-forms` module provides a comprehensive suite of accessible, mobile-friendly, and beautiful form controls. From basic inputs to floating labels and custom checkboxes, everything is designed for a consistent user experience.

## 🚀 Installation

```html
<!-- Full Framework -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css" />

<!-- Module Only -->
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-forms.min.css"
/>
```

## 💡 Basic Usage

A typical form field consists of a container, a label, and the input itself.

```html
<div class="ax-form-group">
  <label class="ax-label" for="email">Email Address</label>
  <input type="email" class="ax-input" id="email" placeholder="name@example.com" />
</div>
```

---

## 🛠 Classes Reference

| Class                             | Description                             | Type      |
| --------------------------------- | --------------------------------------- | --------- |
| `.ax-input`                       | Base class for `<input>` elements.      | Base      |
| `.ax-select`                      | Base class for `<select>` elements.     | Base      |
| `.ax-textarea`                    | Base class for `<textarea>` elements.   | Base      |
| `.ax-label`                       | Styled label for form controls.         | Element   |
| `.ax-form-group`                  | Container for a label and input pair.   | Layout    |
| `.ax-form-text`                   | Small helper text below a form control. | Element   |
| `.ax-form-error`                  | Error message text for validation.      | Element   |
| `.ax-input--valid`                | Green border for valid state.           | State     |
| `.ax-input--invalid`              | Red border for invalid state.           | State     |
| `.ax-input--sm` / `.ax-input--lg` | Sizing variations.                      | Modifier  |
| `.ax-checkbox` / `.ax-radio`      | Custom checkbox and radio containers.   | Component |
| `.ax-toggle`                      | Toggle switch component (iOS-style).    | Component |
| `.ax-rating`                      | Star rating component.                  | Component |

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
  <input type="text" class="ax-input" placeholder=" " id="f-name" />
  <label class="ax-label" for="f-name">Full Name</label>
</div>
```

### Custom Checkboxes & Radios

Fully accessible and CSS-only custom controls.

```html
<label class="ax-checkbox">
  <input type="checkbox" />
  <span class="ax-checkbox__label">Accept terms and conditions</span>
</label>

<label class="ax-radio">
  <input type="radio" name="example" />
  <span class="ax-radio__label">Option A</span>
</label>
```

---

## 📏 Sizing

| Size    | Class           |
| ------- | --------------- |
| Small   | `.ax-input--sm` |
| Default | (None)          |
| Large   | `.ax-input--lg` |

---

## ♿ Accessibility

- **For/ID Matching**: Always use the `for` attribute on `.ax-label` matched with the `id` of the input.
- **Aria-describedby**: Use this to link `.ax-form-text` or `.ax-form-error` to the input.
- **Focus States**: High-contrast focus rings are applied automatically for keyboard navigation.

---

## ⚙️ Customization

| Variable             | Default Value | Description                        |
| -------------------- | ------------- | ---------------------------------- |
| `--ax-border-color`  | `#d1d5db`     | Border color for all inputs.       |
| `--ax-color-primary` | `#3b82f6`     | Focus ring and active state color. |
| `--ax-bg-surface`    | `#f9fafb`     | Background for disabled states.    |

---

## 🔀 Toggle Switch

The Toggle Switch is an iOS-style toggle control for binary on/off states.

### Basic Usage

```html
<label class="ax-toggle ax-toggle--primary">
  <input type="checkbox" class="ax-toggle__input" />
  <span class="ax-toggle__slider"></span>
  <span class="ax-toggle__label">Enable</span>
</label>
```

### Size Variants

- `.ax-toggle--sm` - Small (36px)
- `.ax-toggle--md` - Medium (44px, default)
- `.ax-toggle--lg` - Large (52px)

### Color Variants

- `.ax-toggle--primary` - Blue
- `.ax-toggle--success` - Green
- `.ax-toggle--danger` - Red
- `.ax-toggle--warning` - Yellow
- `.ax-toggle--info` - Cyan

### Installation

```html
<!-- Module Only -->
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-toggle-switch.min.css"
/>
```

**Full Documentation:** [Toggle Switch Component](toggle-switch.md)

**Example:** [Toggle Switch Demo](../examples/toggle-switch.html)

---

## ⭐ Star Rating

The Star Rating component provides a visual star-based rating system.

### Basic Usage

```html
<div class="ax-rating ax-rating--md ax-rating--warning">
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <!-- Repeat for 5 stars -->
</div>
```

### Size Variants

- `.ax-rating--sm` - Small (16px)
- `.ax-rating--md` - Medium (24px, default)
- `.ax-rating--lg` - Large (32px)

### Color Variants

- `.ax-rating--primary` - Blue
- `.ax-rating--success` - Green
- `.ax-rating--warning` - Yellow (default)
- `.ax-rating--danger` - Red
- `.ax-rating--info` - Cyan

### Installation

```html
<!-- Module Only -->
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-rating.min.css"
/>
```

**Full Documentation:** [Star Rating Component](rating.md)

**Example:** [Rating Demo](../examples/rating.html)

---

## 📜 API Evolution

| Version    | Change Type | Description                                                       |
| ---------- | ----------- | ----------------------------------------------------------------- |
| **v2.0.1** | Internal    | Refactored input spacing and alignment to use logical properties. |
| **v2.0.0** | Major       | Initial v2 release with physical spacing properties.              |
