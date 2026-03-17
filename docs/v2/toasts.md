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

## ♿ Accessibility

### Toast Accessibility

- **ARIA Roles**: Use `role="alert"` or `role="status"` for live announcements
- **Screen Readers**: Icons have `aria-hidden="true"`, text is announced
- **Focus Management**: Dismiss buttons are focusable and operable via keyboard
- **Live Regions**: Use appropriate `aria-live` attributes (`assertive` for errors, `polite` for info)
- **Color Contrast**: All toast variants meet WCAG AA contrast requirements

### Implementation Guidelines

- **Keyboard Navigation**: Ensure toast notifications don't trap keyboard focus
- **Screen Reader Announcements**: Announce toast appearance and content
- **Timing Controls**: Allow users to pause or extend toast duration
- **Reduced Motion**: Respect `prefers-reduced-motion` for animations

## ⚙️ Customization

### CSS Custom Properties

```css
.ax-toast {
  /* Animation */
  --ax-toast-duration: 5s;
  --ax-toast-transition: 0.3s ease-out;

  /* Colors */
  --ax-toast-bg: #fff;
  --ax-toast-color: var(--ax-color-dark);
  --ax-toast-border-color: var(--ax-border-color);

  /* Success variant */
  --ax-toast-success-bg: #d1fae5;
  --ax-toast-success-color: #065f46;
  --ax-toast-success-border-color: #10b981;

  /* Error variant */
  --ax-toast-error-bg: #fee2e2;
  --ax-toast-error-color: #7f1d1d;
  --ax-toast-error-border-color: #ef4444;

  /* Warning variant */
  --ax-toast-warning-bg: #fef3c7;
  --ax-toast-warning-color: #92400e;
  --ax-toast-warning-border-color: #f59e0b;

  /* Info variant */
  --ax-toast-info-bg: #dbeafe;
  --ax-toast-info-color: #1e40af;
  --ax-toast-info-border-color: #3b82f6;

  /* Progress bar */
  --ax-toast-progress-height: 0.25rem;
  --ax-toast-progress-bg: rgba(0, 0, 0, 0.1);
  --ax-toast-progress-color: currentColor;
}

/* Toast container positioning */
.ax-toasts--top-right {
  --ax-toasts-top: 1rem;
  --ax-toasts-right: 1rem;
  --ax-toasts-z-index: 1000;
}

.ax-toasts--top-left {
  --ax-toasts-top: 1rem;
  --ax-toasts-left: 1rem;
  --ax-toasts-z-index: 1000;
}

.ax-toasts--bottom-right {
  --ax-toasts-bottom: 1rem;
  --ax-toasts-right: 1rem;
  --ax-toasts-z-index: 1000;
}
```

### Animation Customization

```css
/* Custom toast animations */
@keyframes ax-toast-custom-in {
  0% {
    opacity: 0;
    transform: translateX(100%) scale(0.9);
  }
  100% {
    opacity: 1;
    transform: translateX(0) scale(1);
  }
}

@keyframes ax-toast-custom-out {
  0% {
    opacity: 1;
    transform: translateX(0) scale(1);
  }
  100% {
    opacity: 0;
    transform: translateX(100%) scale(0.9);
  }
}

/* Custom progress animation */
@keyframes ax-toast-custom-progress {
  0% {
    transform: scaleX(1);
  }
  100% {
    transform: scaleX(0);
  }
}

/* Apply custom animations */
.ax-toast.custom-toast {
  animation: ax-toast-custom-in var(--ax-toast-transition);
}

.ax-toast.custom-toast.ax-toast--exiting {
  animation: ax-toast-custom-out var(--ax-toast-transition);
}

.ax-toast__progress-bar.custom-progress {
  animation: ax-toast-custom-progress linear forwards;
  transform-origin: left center;
}
```

## 📜 API Evolution

| Version    | Change Type   | Description                                                            |
| ---------- | ------------- | ---------------------------------------------------------------------- |
| **v2.1.0** | Added Feature | Enhanced toast notifications with progress bars and position utilities |
| **v2.0.2** | Internal      | Improved accessibility with ARIA roles and screen reader support       |
| **v2.0.1** | Internal      | Added CSS custom properties for comprehensive theming                  |
| **v2.0.0** | Major         | Initial toast component with basic variants and JavaScript API         |
