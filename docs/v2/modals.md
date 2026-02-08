# Modals Module

The `axis-modals` module provides a powerful, CSS-only dialog system. It allows you to create interactive overlays for menus, confirmations, or complex forms without requiring a single line of JavaScript.



## 🚀 Installation

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-modals.min.css">
```

## 💡 How it Works (CSS-Only)

Axis Twelve modals use data-attributes and CSS transitions to control visibility. To open a modal, you typically use a small bit of state logic (or a checkbox hack) to set `data-open="true"` on the main `.ax-modal` container.

```html
<!-- The Modal Structure -->
<div class="ax-modal" id="exampleModal" data-open="false">
  <div class="ax-modal__backdrop"></div>
  <div class="ax-modal__dialog">
    <div class="ax-modal__header">
      <h5 class="ax-modal__title">Modal title</h5>
      <button class="ax-modal__close">&times;</button>
    </div>
    <div class="ax-modal__body">
      Modal body text goes here.
    </div>
    <div class="ax-modal__footer">
      <button class="ax-btn ax-btn--secondary">Close</button>
      <button class="ax-btn ax-btn--primary">Save changes</button>
    </div>
  </div>
</div>
```

---

## 🛠 Classes Reference

| Class | Description |
|-------|-------------|
| `.ax-modal` | Main container. Visibility is controlled by `data-open`. |
| `.ax-modal__backdrop`| The semi-transparent overlay. |
| `.ax-modal__dialog`| The actual modal box. |
| `.ax-modal__header`| Bottom border and flex alignment for Title/Close. |
| `.ax-modal__body`| Main content area with padding. |
| `.ax-modal__footer`| Top border and flex alignment for action buttons. |
| `.ax-modal__dialog--{sm|lg|xl|full}`| Sizing modifiers for the dialog width. |

---

## 🎨 Sizing Options

Modify the maximum width of the dialog box.

| Size | Class | Max Width |
|------|-------|-----------|
| Small | `.ax-modal__dialog--sm` | `300px` |
| Default | (None) | `500px` |
| Large | `.ax-modal__dialog--lg` | `800px` |
| Extra Large| `.ax-modal__dialog--xl` | `1140px` |
| Full Screen| `.ax-modal__dialog--full`| `100%` |

---

## ♿ Accessibility

- **Roles**: Add `role="dialog"` and `aria-modal="true"` to `.ax-modal`.
- **Labels**: Use `aria-labelledby` on the modal container pointing to the title ID.
- **Focus**: When open, focus should ideally be trapped within the modal (requires minimal JS).
