# Buttons Module

The `axis-buttons` module provides a set of highly customizable button styles, including variants for colors, outlines, sizes, and groups. It is designed to be accessible, responsive, and easy to integrate into any project.

[**View Live Examples &rarr;**](../examples/buttons.html)


## 🚀 Installation

You can use the button module by either importing the full framework or just the button module itself.

```html
<!-- Full Framework -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css">

<!-- Module Only -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-buttons.min.css">
```

## 💡 Basic Usage

To create a standard button, apply the `.ax-btn` base class along with a variant modifier.

```html
<button class="ax-btn ax-btn--primary">Primary Button</button>
```

---

## 🛠 Classes Reference

| Class | Description | Type |
|-------|-------------|------|
| `.ax-btn` | Base button class. Reset styles and sets basic layout. | Base |
| `.ax-btn--primary` | Primary action button color. | Modifier |
| `.ax-btn--secondary`| Secondary action button color. | Modifier |
| `.ax-btn--success`  | Success/Positive action color. | Modifier |
| `.ax-btn--danger`   | Danger/Negative action color. | Modifier |
| `.ax-btn--warning`  | Warning/Caution action color. | Modifier |
| `.ax-btn--info`     | Informational action color. | Modifier |
| `.ax-btn--outline-*`| Outline version of any color variant. | Modifier |
| `.ax-btn--sm`       | Small button size. | Modifier |
| `.ax-btn--lg`       | Large button size. | Modifier |
| `.ax-btn--block`    | Makes button span full width of parent. | Modifier |
| `.ax-btn--ghost`    | Transparent background without border. | Modifier |
| `.ax-btn--icon`     | Optimized padding for icon-only buttons. | Modifier |

---

## 🎨 Variants

### Solid Buttons
Classic filled buttons for high-emphasis actions.

```html
<button class="ax-btn ax-btn--primary">Primary</button>
<button class="ax-btn ax-btn--secondary">Secondary</button>
<button class="ax-btn ax-btn--success">Success</button>
<button class="ax-btn ax-btn--danger">Danger</button>
```

### Outline Buttons
Add `.ax-btn--outline-{color}` for a subtle, bordered look.

```html
<button class="ax-btn ax-btn--outline-primary">Primary Outline</button>
<button class="ax-btn ax-btn--outline-success">Success Outline</button>
```

### Ghost Buttons
Transparent background that appears on hover. Use `.ax-btn--ghost`.

```html
<button class="ax-btn ax-btn--ghost">Cancel</button>
```

---

## 📏 Sizing

Control the scale of your buttons with size modifiers.

| Size | Class |
|------|-------|
| Small | `.ax-btn--sm` |
| Default | (None) |
| Large | `.ax-btn--lg` |

---

## 👥 Button Groups

Wrap multiple buttons in an `.ax-btn-group` to combine them visually into a single unit.

```html
<div class="ax-btn-group">
  <button class="ax-btn ax-btn--primary">Left</button>
  <button class="ax-btn ax-btn--primary">Middle</button>
  <button class="ax-btn ax-btn--primary">Right</button>
</div>
```

---

## ♿ Accessibility

- **Native Elements**: Use `<button>` for actions and `<a>` for navigation.
- **Labels**: If a button only contains an icon, use `aria-label` to describe the action.
- **States**: The framework automatically handles `:focus` and `:disabled` states.

---

## ⚙️ Customization

You can override these CSS variables to customize the look of all buttons.

| Variable | Default Value | Description |
|----------|---------------|-------------|
| `--ax-color-primary` | `#3b82f6` | Primary brand color. |
| `--ax-spacing-sm` | `0.5rem` | Base for small padding. |
| `--ax-spacing-md` | `1rem` | Base for medium padding. |
