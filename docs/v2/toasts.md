# Toast Notifications

Toast notifications for user feedback and alerts.

## Basic Usage

```html
<div class="ax-toasts ax-toasts--top-right">
  <div class="ax-toast ax-toast--success">
    <div class="ax-toast__icon">✓</div>
    <div class="ax-toast__content">
      <div class="ax-toast__title">Success</div>
      <div class="ax-toast__description">Action completed</div>
    </div>
    <button class="ax-toast__close">×</button>
  </div>
</div>
```

## Variants

```html
<!-- Success -->
<div class="ax-toast ax-toast--success"></div>

<!-- Error -->
<div class="ax-toast ax-toast--error"></div>

<!-- Warning -->
<div class="ax-toast ax-toast--warning"></div>

<!-- Info -->
<div class="ax-toast ax-toast--info"></div>
```

## Positions

```html
<!-- Top right -->
<div class="ax-toasts ax-toasts--top-right"></div>

<!-- Top left -->
<div class="ax-toasts ax-toasts--top-left"></div>

<!-- Bottom right -->
<div class="ax-toasts ax-toasts--bottom-right"></div>

<!-- Bottom left -->
<div class="ax-toasts ax-toasts--bottom-left"></div>

<!-- Top center -->
<div class="ax-toasts ax-toasts--top-center"></div>
```

## JavaScript Example

```javascript
function showToast(type, title, message) {
  const container = document.querySelector('.ax-toasts') || createToastContainer();
  const toast = document.createElement('div');
  toast.className = `ax-toast ax-toast--${type}`;
  toast.innerHTML = `
    <div class="ax-toast__icon">${getIcon(type)}</div>
    <div class="ax-toast__content">
      <div class="ax-toast__title">${title}</div>
      <div class="ax-toast__description">${message}</div>
    </div>
    <button class="ax-toast__close">×</button>
  `;
  container.appendChild(toast);
  setTimeout(() => toast.remove(), 5000);
}
```
