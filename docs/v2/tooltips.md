# Tooltips Module

The `axis-tooltips` module provides a CSS-only, data-driven tooltip system. It is extremely lightweight and requires no JavaScript or additional HTML elements—just a data attribute on your existing tags.



## 🚀 Installation

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-tooltips.min.css">
```

## 💡 Basic Usage

Simply add the `data-ax-tooltip` attribute to any element.

```html
<button class="ax-btn ax-btn--primary" data-ax-tooltip="Get started today!">
  Hover over me
</button>
```

---

## 🛠 Configuration (Attributes)

| Attribute | Description | Default |
|-----------|-------------|---------|
| `data-ax-tooltip` | The text content of the tooltip. | None |
| `data-ax-tooltip-position` | Position: `top`, `bottom`, `left`, `right`. | `top` |
| `data-ax-tooltip-multiline` | Enables wrapping for long text. | `false` |

---

## 🎨 Positioning

You can position the tooltip on any side of the element. Since **v2.0.1**, these positions use **logical properties**, meaning `left` and `right` automatically swap in RTL layouts.

```html
<span data-ax-tooltip="On the left" data-ax-tooltip-position="left">Left</span>
<span data-ax-tooltip="On the bottom" data-ax-tooltip-position="bottom">Bottom</span>
<span data-ax-tooltip="On the right" data-ax-tooltip-position="right">Right</span>
```

---

## ✨ Features

### Multiline Tooltips
By default, tooltips do not wrap. Add `data-ax-tooltip-multiline` for longer descriptions.

```html
<button data-ax-tooltip="This is a very long text that will wrap automatically." data-ax-tooltip-multiline>
  Multiline Tooltip
</button>
```

### CSS-Only Performance
Because it uses `::after` and `::before` pseudo-elements, it has zero impact on the DOM and is perfectly suited for high-performance applications.

---

## ⚠️ Important Note: Void Elements

Tooltips are rendered using `::before` and `::after` pseudo-elements. Because **void elements** (elements that cannot have content) like `<input>`, `<img>`, and `<br>` do not support pseudo-elements, tooltips will not work directly on them.

**To add a tooltip to an input or image, wrap it in a `<span>` or `<div>`:**

```html
<span data-ax-tooltip="Search for anything...">
  <input type="text" class="ax-input" placeholder="Search...">
</span>
```

---

## ♿ Accessibility

- **Keyboard Focus**: The tooltip is visible on both `:hover` and `:focus`, making it accessible to keyboard users.
- **Screen Readers**: For accessibility, ensure the tooltip text is also available as an `aria-label` if the element itself doesn't have descriptive text.

---

## 📜 API Evolution

| Version | Change Type | Description |
|---------|-------------|-------------|
| **v2.0.1** | Feature | Switched to **Logical Positioning** (`inset-inline-start/end`). Added physical fallbacks for legacy browser support. |
| **v2.0.0** | Major | Initial v2 release with **Physical Positioning** (`left/right`). |
