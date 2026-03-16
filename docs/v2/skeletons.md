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
