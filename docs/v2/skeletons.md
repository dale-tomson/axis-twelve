# Skeleton Loaders

Loading placeholders for content with shimmer animation.

## Basic Usage

```html
<!-- Text skeleton -->
<div class="ax-skeleton ax-skeleton--text"></div>

<!-- Circle skeleton -->
<div class="ax-skeleton ax-skeleton--circle"></div>

<!-- Rectangle skeleton -->
<div class="ax-skeleton ax-skeleton--rect"></div>
```

## Shapes

```html
<!-- Text line -->
<div class="ax-skeleton ax-skeleton--text"></div>

<!-- Circle (avatar) -->
<div class="ax-skeleton ax-skeleton--circle"></div>

<!-- Rectangle (card/image) -->
<div class="ax-skeleton ax-skeleton--rect"></div>

<!-- Image placeholder -->
<div class="ax-skeleton ax-skeleton--image"></div>

<!-- Rounded corners -->
<div class="ax-skeleton ax-skeleton--rounded"></div>
```

## Sizes

```html
<!-- Small -->
<div class="ax-skeleton ax-skeleton--text ax-skeleton--sm"></div>
<div class="ax-skeleton ax-skeleton--circle ax-skeleton--sm"></div>

<!-- Medium (default) -->
<div class="ax-skeleton ax-skeleton--text ax-skeleton--md"></div>
<div class="ax-skeleton ax-skeleton--circle ax-skeleton--md"></div>

<!-- Large -->
<div class="ax-skeleton ax-skeleton--text ax-skeleton--lg"></div>
<div class="ax-skeleton ax-skeleton--circle ax-skeleton--lg"></div>
```

## Width Utilities

```html
<!-- Fractional widths -->
<div class="ax-skeleton ax-skeleton--w-1/4"></div>
<div class="ax-skeleton ax-skeleton--w-1/3"></div>
<div class="ax-skeleton ax-skeleton--w-1/2"></div>
<div class="ax-skeleton ax-skeleton--w-2/3"></div>
<div class="ax-skeleton ax-skeleton--w-3/4"></div>
<div class="ax-skeleton ax-skeleton--w-full"></div>
```

## Container for Grouped Skeletons

```html
<div class="ax-skeleton-container">
  <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-3/4"></div>
  <div class="ax-skeleton ax-skeleton--text"></div>
  <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/2"></div>
</div>
```

## Examples

### Card Skeleton

```html
<div class="ax-card">
  <div class="ax-skeleton ax-skeleton--rect"></div>
  <div class="ax-card__body">
    <div class="ax-skeleton-container">
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-3/4 ax-mb-sm"></div>
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-full ax-mb-sm"></div>
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/2"></div>
    </div>
  </div>
</div>
```

### List Skeleton

```html
<div class="ax-skeleton-container">
  <!-- Item 1 -->
  <div style="display: flex; gap: 1rem; align-items: center;">
    <div
      class="ax-skeleton ax-skeleton--circle"
      style="width: 48px; height: 48px; flex-shrink: 0;"
    ></div>
    <div class="ax-skeleton-container" style="flex: 1;">
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/2"></div>
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-3/4"></div>
    </div>
  </div>

  <!-- Item 2 -->
  <div style="display: flex; gap: 1rem; align-items: center;">
    <div
      class="ax-skeleton ax-skeleton--circle"
      style="width: 48px; height: 48px; flex-shrink: 0;"
    ></div>
    <div class="ax-skeleton-container" style="flex: 1;">
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/2"></div>
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-3/4"></div>
    </div>
  </div>

  <!-- Item 3 -->
  <div style="display: flex; gap: 1rem; align-items: center;">
    <div
      class="ax-skeleton ax-skeleton--circle"
      style="width: 48px; height: 48px; flex-shrink: 0;"
    ></div>
    <div class="ax-skeleton-container" style="flex: 1;">
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/2"></div>
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-3/4"></div>
    </div>
  </div>
</div>
```

### Profile Card Skeleton

```html
<div class="ax-card">
  <div class="ax-card__body" style="text-align: center;">
    <!-- Avatar -->
    <div
      class="ax-skeleton ax-skeleton--circle"
      style="width: 80px; height: 80px; margin: 0 auto 1rem;"
    ></div>

    <!-- Name and bio -->
    <div class="ax-skeleton-container">
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-3/4" style="margin: 0 auto;"></div>
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/2" style="margin: 0 auto;"></div>
    </div>
  </div>
</div>
```

### Table Skeleton

```html
<table class="ax-table">
  <thead>
    <tr>
      <th><div class="ax-skeleton ax-skeleton--text ax-skeleton--w-3/4"></div></th>
      <th><div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/2"></div></th>
      <th><div class="ax-skeleton ax-skeleton--text ax-skeleton--w-2/3"></div></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><div class="ax-skeleton ax-skeleton--text"></div></td>
      <td><div class="ax-skeleton ax-skeleton--text"></div></td>
      <td><div class="ax-skeleton ax-skeleton--text"></div></td>
    </tr>
    <tr>
      <td><div class="ax-skeleton ax-skeleton--text"></div></td>
      <td><div class="ax-skeleton ax-skeleton--text"></div></td>
      <td><div class="ax-skeleton ax-skeleton--text"></div></td>
    </tr>
  </tbody>
</table>
```

### Dashboard Skeleton

```html
<div style="display: grid; gap: 1rem; grid-template-columns: repeat(3, 1fr);">
  <!-- Stat Card 1 -->
  <div class="ax-card">
    <div class="ax-card__body">
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/2 ax-mb-sm"></div>
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--lg ax-skeleton--w-3/4"></div>
    </div>
  </div>

  <!-- Stat Card 2 -->
  <div class="ax-card">
    <div class="ax-card__body">
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/2 ax-mb-sm"></div>
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--lg ax-skeleton--w-3/4"></div>
    </div>
  </div>

  <!-- Stat Card 3 -->
  <div class="ax-card">
    <div class="ax-card__body">
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/2 ax-mb-sm"></div>
      <div class="ax-skeleton ax-skeleton--text ax-skeleton--lg ax-skeleton--w-3/4"></div>
    </div>
  </div>
</div>
```

### Form Skeleton

```html
<div class="ax-card">
  <div class="ax-card__body">
    <!-- Label -->
    <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/4 ax-mb-sm"></div>

    <!-- Input field -->
    <div
      class="ax-skeleton ax-skeleton--text ax-skeleton--w-full ax-mb-md"
      style="height: 2.5rem;"
    ></div>

    <!-- Label -->
    <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/3 ax-mb-sm"></div>

    <!-- Textarea -->
    <div class="ax-skeleton ax-skeleton--rect ax-skeleton--w-full" style="height: 6rem;"></div>
  </div>
</div>
```

### Image Gallery Skeleton

```html
<div style="display: grid; gap: 1rem; grid-template-columns: repeat(2, 1fr);">
  <div class="ax-skeleton ax-skeleton--image"></div>
  <div class="ax-skeleton ax-skeleton--image"></div>
  <div class="ax-skeleton ax-skeleton--image"></div>
  <div class="ax-skeleton ax-skeleton--image"></div>
</div>
```

### Chat Message Skeleton

```html
<div style="display: flex; gap: 0.75rem;">
  <div
    class="ax-skeleton ax-skeleton--circle"
    style="width: 40px; height: 40px; flex-shrink: 0;"
  ></div>
  <div class="ax-skeleton-container" style="flex: 1;">
    <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/4 ax-mb-xs"></div>
    <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-full ax-mb-xs"></div>
    <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-2/3"></div>
  </div>
</div>
```

## Custom Styles

```css
/* Custom height */
.ax-skeleton.ax-skeleton--custom {
  height: 2rem;
}

/* Custom width with inline style */
<div class="ax-skeleton ax-skeleton--text" style="width: 200px;"></div>

/* Custom animation speed */
.ax-skeleton {
  animation-duration: 2s; /* Default: 1.5s */
}
```

## Animation Control

```css
/* Reduce motion for users who prefer it */
@media (prefers-reduced-motion: reduce) {
  .ax-skeleton {
    animation: none;
  }
}

/* Pause animation */
.ax-skeleton--paused {
  animation-play-state: paused;
}
```

## Best Practices

1. **Match Content Shape**: Use skeleton shape that matches loaded content
2. **Approximate Content Size**: Match skeleton dimensions to expected content
3. **Use Width Utilities**: Create visual hierarchy with width variations
4. **Container for Groups**: Use `ax-skeleton-container` for grouped content
5. **Consistent Spacing**: Maintain spacing of actual content layout
6. **Smooth Transition**: Fade out skeletons when content loads

## Loading Pattern

```javascript
// Example loading pattern
function loadContent() {
  const skeleton = document.querySelector('.skeleton-placeholder');
  const content = document.querySelector('.content');

  fetch('/api/data')
    .then((response) => response.json())
    .then((data) => {
      // Hide skeleton, show content
      skeleton.style.display = 'none';
      content.textContent = data.text;
      content.style.display = 'block';
    });
}
```

## ♿ Accessibility

### Skeleton Accessibility

- **ARIA Attributes**: Use `aria-busy="true"` on loading containers
- **Screen Reader Announcements**: Announce loading state to screen readers
- **Focus Management**: Ensure focus isn't trapped on skeleton elements
- **Reduced Motion**: Respect `prefers-reduced-motion` for shimmer animations
- **Contrast Ratios**: Skeleton colors maintain sufficient contrast

### Implementation Guidelines

- **Loading Announcements**: Inform users when content is loading
- **Error States**: Provide fallback content if loading fails
- **Timing Indicators**: Consider showing estimated load times
- **Progressive Loading**: Load critical content first, show skeletons for secondary content

### Screen Reader Considerations

```html
<!-- Announce loading state -->
<div aria-busy="true" aria-live="polite">
  <div class="ax-skeleton ax-skeleton--text">Loading content...</div>
</div>

<!-- Hide skeletons from screen readers -->
<div class="ax-skeleton" aria-hidden="true"></div>

<!-- Provide loading status -->
<div role="status" aria-label="Content loading">
  <div class="ax-skeleton-container">
    <!-- skeleton content -->
  </div>
</div>
```

## ⚙️ Customization

### CSS Custom Properties

```css
.ax-skeleton {
  /* Animation */
  --ax-skeleton-duration: 1.5s;
  --ax-skeleton-timing: linear;
  --ax-skeleton-shimmer: linear-gradient(
    90deg,
    rgba(255, 255, 255, 0) 0%,
    rgba(255, 255, 255, 0.5) 50%,
    rgba(255, 255, 255, 0) 100%
  );

  /* Colors */
  --ax-skeleton-bg: var(--ax-gray-200);
  --ax-skeleton-highlight: var(--ax-gray-100);
  --ax-skeleton-color: transparent;

  /* Sizes */
  --ax-skeleton-height-sm: 0.5rem;
  --ax-skeleton-height-md: 0.75rem;
  --ax-skeleton-height-lg: 1rem;
  --ax-skeleton-height-xl: 1.25rem;

  /* Border radius */
  --ax-skeleton-radius-sm: 0.125rem;
  --ax-skeleton-radius-md: 0.25rem;
  --ax-skeleton-radius-lg: 0.5rem;
  --ax-skeleton-radius-full: 9999px;
}

/* Skeleton variants */
.ax-skeleton--text {
  --ax-skeleton-height: var(--ax-skeleton-height-md);
  --ax-skeleton-radius: var(--ax-skeleton-radius-sm);
}

.ax-skeleton--circle {
  --ax-skeleton-radius: var(--ax-skeleton-radius-full);
}

.ax-skeleton--rect {
  --ax-skeleton-radius: var(--ax-skeleton-radius-md);
}

.ax-skeleton--rounded {
  --ax-skeleton-radius: var(--ax-skeleton-radius-lg);
}

/* Size variants */
.ax-skeleton--sm {
  --ax-skeleton-height: var(--ax-skeleton-height-sm);
}

.ax-skeleton--md {
  --ax-skeleton-height: var(--ax-skeleton-height-md);
}

.ax-skeleton--lg {
  --ax-skeleton-height: var(--ax-skeleton-height-lg);
}

.ax-skeleton--xl {
  --ax-skeleton-height: var(--ax-skeleton-height-xl);
}

/* Container */
.ax-skeleton-container {
  --ax-skeleton-gap: 0.5rem;
  gap: var(--ax-skeleton-gap);
}
```

### Custom Animation Styles

```css
/* Custom shimmer animation */
@keyframes ax-skeleton-shimmer-custom {
  0% {
    background-position: -200px 0;
  }
  100% {
    background-position: calc(200px + 100%) 0;
  }
}

/* Custom pulse animation */
@keyframes ax-skeleton-pulse-custom {
  0%,
  100% {
    opacity: 1;
  }
  50% {
    opacity: 0.5;
  }
}

/* Apply custom animations */
.ax-skeleton.custom-shimmer {
  background: linear-gradient(
    90deg,
    var(--ax-skeleton-bg) 25%,
    var(--ax-skeleton-highlight) 50%,
    var(--ax-skeleton-bg) 75%
  );
  background-size: 200px 100%;
  animation: ax-skeleton-shimmer-custom var(--ax-skeleton-duration) infinite;
}

.ax-skeleton.custom-pulse {
  animation: ax-skeleton-pulse-custom 2s ease-in-out infinite;
}

/* Reduced motion support */
@media (prefers-reduced-motion: reduce) {
  .ax-skeleton {
    animation: none !important;
  }

  .ax-skeleton.custom-pulse {
    opacity: 0.8;
  }
}
```

### JavaScript Integration

```javascript
// Enhanced skeleton loading with error handling
class SkeletonLoader {
  constructor(containerId) {
    this.container = document.getElementById(containerId);
    this.skeletons = [];
    this.isLoading = false;
  }

  showSkeleton(type, count = 1) {
    this.isLoading = true;
    this.container.setAttribute('aria-busy', 'true');

    for (let i = 0; i < count; i++) {
      const skeleton = document.createElement('div');
      skeleton.className = `ax-skeleton ax-skeleton--${type}`;
      skeleton.setAttribute('aria-hidden', 'true');

      this.container.appendChild(skeleton);
      this.skeletons.push(skeleton);
    }
  }

  hideSkeleton() {
    this.isLoading = false;
    this.container.removeAttribute('aria-busy');

    // Fade out skeletons
    this.skeletons.forEach((skeleton) => {
      skeleton.style.opacity = '0';
      skeleton.style.transition = 'opacity 0.3s ease';

      setTimeout(() => {
        if (skeleton.parentNode) {
          skeleton.parentNode.removeChild(skeleton);
        }
      }, 300);
    });

    this.skeletons = [];
  }

  showError() {
    this.hideSkeleton();

    const errorDiv = document.createElement('div');
    errorDiv.className = 'ax-alert ax-alert--danger';
    errorDiv.innerHTML = `
      <div class="ax-alert__icon">⚠️</div>
      <div class="ax-alert__content">
        <div class="ax-alert__title">Failed to load content</div>
        <div class="ax-alert__description">Please try again later.</div>
      </div>
    `;

    this.container.appendChild(errorDiv);
  }
}

// Usage example
const loader = new SkeletonLoader('content-container');
loader.showSkeleton('text', 3);

// Simulate loading
setTimeout(() => {
  loader.hideSkeleton();
  document.getElementById('content-container').innerHTML = '<p>Loaded content!</p>';
}, 2000);
```

## 📜 API Evolution

| Version    | Change Type   | Description                                                                     |
| ---------- | ------------- | ------------------------------------------------------------------------------- |
| **v2.1.0** | Added Feature | Enhanced skeleton loaders with accessibility support and JavaScript integration |
| **v2.0.2** | Internal      | Improved color contrast and reduced motion support                              |
| **v2.0.1** | Internal      | Added CSS custom properties for comprehensive theming                           |
| **v2.0.0** | Major         | Initial skeleton components with basic shapes and shimmer animation             |
