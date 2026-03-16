# Toast Notifications

Toast notifications for user feedback and alerts with auto-dismiss and progress indicator.

## Basic Usage

```html
<div class="ax-toasts ax-toasts--top-right">
  <div class="ax-toast ax-toast--success">
    <div class="ax-toast__icon">✓</div>
    <div class="ax-toast__content">
      <div class="ax-toast__title">Success</div>
      <div class="ax-toast__description">Action completed successfully</div>
    </div>
    <button class="ax-toast__close">×</button>
  </div>
</div>
```

## Variants

```html
<!-- Success -->
<div class="ax-toast ax-toast--success">
  <div class="ax-toast__icon">✓</div>
  <div class="ax-toast__content">
    <div class="ax-toast__title">Success</div>
    <div class="ax-toast__description">Completed successfully</div>
  </div>
</div>

<!-- Error -->
<div class="ax-toast ax-toast--error">
  <div class="ax-toast__icon">✕</div>
  <div class="ax-toast__content">
    <div class="ax-toast__title">Error</div>
    <div class="ax-toast__description">Something went wrong</div>
  </div>
</div>

<!-- Warning -->
<div class="ax-toast ax-toast--warning">
  <div class="ax-toast__icon">⚠</div>
  <div class="ax-toast__content">
    <div class="ax-toast__title">Warning</div>
    <div class="ax-toast__description">Please review</div>
  </div>
</div>

<!-- Info -->
<div class="ax-toast ax-toast--info">
  <div class="ax-toast__icon">ℹ</div>
  <div class="ax-toast__content">
    <div class="ax-toast__title">Info</div>
    <div class="ax-toast__description">Heads up!</div>
  </div>
</div>
```

## Positions

```html
<!-- Top right -->
<div class="ax-toasts ax-toasts--top-right"></div>

<!-- Top left -->
<div class="ax-toasts ax-toasts--top-left"></div>

<!-- Top center -->
<div class="ax-toasts ax-toasts--top-center"></div>

<!-- Bottom right -->
<div class="ax-toasts ax-toasts--bottom-right"></div>

<!-- Bottom left -->
<div class="ax-toasts ax-toasts--bottom-left"></div>

<!-- Bottom center -->
<div class="ax-toasts ax-toasts--bottom-center"></div>
```

## With Progress Bar (Auto-dismiss timing)

```html
<div class="ax-toast ax-toast--info">
  <div class="ax-toast__icon">ℹ</div>
  <div class="ax-toast__content">
    <div class="ax-toast__title">Processing</div>
    <div class="ax-toast__description">This will auto-dismiss</div>
  </div>

  <!-- Progress bar for 5 second dismiss -->
  <div class="ax-toast__progress">
    <div class="ax-toast__progress-bar" style="animation-duration: 5s;"></div>
  </div>
</div>
```

## Dismissible Toast

```html
<div class="ax-toast ax-toast--dismisssible">
  <div class="ax-toast__icon">ℹ</div>
  <div class="ax-toast__content">
    <div class="ax-toast__title">Info</div>
    <div class="ax-toast__description">Click X to dismiss</div>
  </div>
  <button class="ax-toast__close">×</button>
</div>
```

## JavaScript Example

```javascript
// Create toast container if it doesn't exist
function getToastContainer() {
  let container = document.querySelector('.ax-toasts');
  if (!container) {
    container = document.createElement('div');
    container.className = 'ax-toasts ax-toasts--top-right';
    document.body.appendChild(container);
  }
  return container;
}

// Icon mapping
function getIcon(type) {
  const icons = {
    success: '✓',
    error: '✕',
    warning: '⚠',
    info: 'ℹ',
  };
  return icons[type] || 'ℹ';
}

// Show toast
function showToast(type, title, message, duration = 5000) {
  const container = getToastContainer();
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

  // Add progress bar for auto-dismiss
  if (duration) {
    const progress = document.createElement('div');
    progress.className = 'ax-toast__progress';
    progress.innerHTML = `<div class="ax-toast__progress-bar" style="animation-duration: ${duration}ms;"></div>`;
    toast.appendChild(progress);
  }

  container.appendChild(toast);

  // Auto dismiss
  if (duration) {
    setTimeout(() => {
      toast.style.animation = 'ax-toast-slide-out 0.3s ease-out';
      setTimeout(() => toast.remove(), 300);
    }, duration);
  }

  // Close button handler
  const closeBtn = toast.querySelector('.ax-toast__close');
  closeBtn.addEventListener('click', () => {
    toast.style.animation = 'ax-toast-slide-out 0.3s ease-out';
    setTimeout(() => toast.remove(), 300);
  });

  return toast;
}

// Usage examples
showToast('success', 'Saved!', 'Your changes have been saved.');
showToast('error', 'Error', 'Failed to save. Please try again.');
showToast('info', 'Uploading...', 'Your file is being uploaded.', 3000);
```

## Multiple Toasts

```html
<div class="ax-toasts ax-toasts--top-right">
  <div class="ax-toast ax-toast--success">
    <div class="ax-toast__icon">✓</div>
    <div class="ax-toast__content">
      <div class="ax-toast__title">First</div>
    </div>
  </div>

  <div class="ax-toast ax-toast--info">
    <div class="ax-toast__icon">ℹ</div>
    <div class="ax-toast__content">
      <div class="ax-toast__title">Second</div>
    </div>
  </div>

  <div class="ax-toast ax-toast--warning">
    <div class="ax-toast__icon">⚠</div>
    <div class="ax-toast__content">
      <div class="ax-toast__title">Third</div>
    </div>
  </div>
</div>
```

## Stacking Order

Toasts stack in the order they appear in the DOM. Newest toasts can be prepended:

```javascript
function showToastPrepend(type, title, message) {
  const container = getToastContainer();
  const toast = createToast(type, title, message);
  container.insertBefore(toast, container.firstChild);
}
```

## Customization

### CSS Custom Properties

```css
.ax-toast {
  --toast-duration: 5s;
  --toast-bg: #fff;
  --toast-border-radius: 0.5rem;
}
```

### Animation Timing

```css
.ax-toast {
  animation: ax-toast-slide-in 0.3s ease-out;
}

.ax-toast__progress-bar {
  animation: ax-toast-progress linear forwards;
}

@keyframes ax-toast-progress {
  from {
    width: 100%;
  }
  to {
    width: 0%;
  }
}
```

## Accessibility

```html
<div class="ax-toasts ax-toasts--top-right" role="region" aria-label="Notifications">
  <div class="ax-toast ax-toast--success" role="alert" aria-live="polite">
    <div class="ax-toast__icon" aria-hidden="true">✓</div>
    <div class="ax-toast__content">
      <div class="ax-toast__title">Success</div>
      <div class="ax-toast__description">Action completed</div>
    </div>
    <button class="ax-toast__close" aria-label="Close notification">×</button>
  </div>
</div>
```

## Best Practices

1. **Duration**: 3-5 seconds for most toasts
2. **Length**: Keep messages concise (1-2 lines)
3. **Position**: Top-right for most applications
4. **Stacking**: Limit to 3-4 visible toasts
5. **Priority**: Use appropriate variant for message type
6. **Dismissal**: Always provide manual dismiss option
7. **Timing**: Show progress indicator for auto-dismiss
