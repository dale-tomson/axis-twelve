# Container Queries

Component-level responsive design using CSS Container Queries.

## Overview

Container queries allow components to adapt based on their container's size rather than the viewport size, enabling truly modular responsive design.

## Browser Support

Container queries are supported in:

- Chrome 90+
- Firefox 110+
- Safari 15.2+
- Edge 90+

For older browsers, the styles gracefully degrade to the base styles.

## Basic Usage

```html
<!-- Container Parent -->
<div class="ax-container">
  <!-- Component responds to container width -->
  <div class="ax-cq:text-base">This text adapts to container size</div>
</div>
```

## Container Types

```html
<!-- Inline Size Container -->
<div class="ax-container">
  <div class="ax-cq:text-base">Content</div>
</div>

<!-- Named Container -->
<div class="ax-container--card">
  <div class="ax-cq-card:text-lg">Card Content</div>
</div>

<!-- Sidebar Container -->
<div class="ax-container--sidebar">
  <div class="ax-cq-sidebar:expanded">Sidebar Content</div>
</div>
```

## Font Size Utilities

```html
<!-- Text adapts at 640px container width -->
<div class="ax-container">
  <div class="ax-cq:text-sm">Small text in narrow containers</div>
  <div class="ax-cq:text-base">Base text</div>
  <div class="ax-cq:text-lg">Large text in wider containers</div>
  <div class="ax-cq:text-xl">Extra large in widest containers</div>
</div>
```

## Display Utilities

```html
<div class="ax-container">
  <!-- Block at 640px+ -->
  <div class="ax-cq:block-sm">Block on small containers</div>

  <!-- Block at 768px+ -->
  <div class="ax-cq:block-md">Block on medium containers</div>

  <!-- Flex layouts -->
  <div class="ax-cq:flex-sm">Flex on small containers</div>
  <div class="ax-cq:flex-md">Flex on medium containers</div>

  <!-- Grid layouts -->
  <div class="ax-cq:grid-md">Grid on medium containers</div>
</div>
```

## Grid Layout

```html
<div class="ax-container">
  <!-- 2 columns at 768px+ -->
  <div class="ax-cq:grid-cols-2">
    <div>Column 1</div>
    <div>Column 2</div>
  </div>

  <!-- 3 columns at 768px+ -->
  <div class="ax-cq:grid-cols-3">
    <div>Column 1</div>
    <div>Column 2</div>
    <div>Column 3</div>
  </div>

  <!-- 4 columns at 1024px+ -->
  <div class="ax-cq:grid-cols-4">
    <div>Column 1</div>
    <div>Column 2</div>
    <div>Column 3</div>
    <div>Column 4</div>
  </div>
</div>
```

## Spacing Utilities

```html
<div class="ax-container">
  <!-- Padding adapts to container -->
  <div class="ax-cq:p-sm">Small padding on narrow</div>
  <div class="ax-cq:p-md">Medium padding</div>
  <div class="ax-cq:p-lg">Large padding on wide</div>

  <!-- Gap adapts -->
  <div class="ax-cq:gap-md">
    <div>Item 1</div>
    <div>Item 2</div>
  </div>
</div>
```

## Flex Direction

```html
<div class="ax-container">
  <!-- Column on small, row on large -->
  <div class="ax-cq:flex-col-sm ax-cq:flex-row">
    <div>Item 1</div>
    <div>Item 2</div>
  </div>
</div>
```

## Visibility Control

```html
<div class="ax-container">
  <!-- Hidden on small containers -->
  <div class="ax-cq:hidden-sm">Hidden when container < 640px</div>

  <!-- Hidden on large containers -->
  <div class="ax-cq:hidden-sm-up">Hidden when container >= 640px</div>
</div>
```

## Card Component Example

```html
<div class="ax-card ax-container--card">
  <div class="ax-card__media">
    <img src="image.jpg" alt="Card image" />
  </div>
  <div class="ax-card__body">
    <!-- Title adapts to container -->
    <h3 class="ax-cq-card:text-lg">Card Title</h3>

    <!-- Show actions on wide cards -->
    <div class="ax-cq-card:show-actions">
      <button class="ax-btn ax-btn--primary">Action</button>
    </div>
  </div>
</div>
```

## Sidebar Navigation Example

```html
<aside class="ax-container--sidebar">
  <nav>
    <a href="#" class="ax-cq-sidebar:show-label">
      <span class="ax-icon">🏠</span>
      <span class="ax-cq-sidebar:hide-label">Home</span>
    </a>
    <a href="#" class="ax-cq-sidebar:show-label">
      <span class="ax-icon">📊</span>
      <span class="ax-cq-sidebar:hide-label">Dashboard</span>
    </a>
  </nav>
</aside>
```

## Panel Layout Example

```html
<div class="ax-container--panel">
  <!-- 2 columns at 500px+ -->
  <div class="ax-cq-panel:two-col">
    <div>Panel 1</div>
    <div>Panel 2</div>
  </div>

  <!-- 3 columns at 800px+ -->
  <div class="ax-cq-panel:three-col">
    <div>Panel 1</div>
    <div>Panel 2</div>
    <div>Panel 3</div>
  </div>
</div>
```

## Style Container Queries

```html
<div class="ax-container" style="--active: true;">
  <!-- Shows when container has --active: true -->
  <div class="ax-cq-if-active">Active content</div>
</div>

<div class="ax-container" style="--highlighted: true;">
  <!-- Highlights when container has --highlighted: true -->
  <div class="ax-cq-if-highlighted">Highlighted content</div>
</div>
```

## Aspect Ratio Queries

```html
<div class="ax-container">
  <!-- Landscape orientation -->
  <div class="ax-cq:landscape:h-full">Full height in landscape</div>

  <!-- Portrait orientation -->
  <div class="ax-cq:portrait:w-full">Full width in portrait</div>
</div>
```

## Combining with Media Queries

```css
/* Media query: viewport-based */
@media (min-width: 768px) {
  .sidebar {
    display: block;
  }
}

/* Container query: component-based */
@container (min-width: 300px) {
  .card {
    flex-direction: row;
  }
}
```

## Best Practices

1. **Use Named Containers**: Name containers for component-specific queries
2. **Progressive Enhancement**: Design mobile-first, enhance for larger containers
3. **Combine with Grid**: Use with CSS Grid for complex layouts
4. **Test Boundaries**: Test at container breakpoint boundaries
5. **Fallback Strategy**: Provide fallbacks for older browsers

## Migration from Media Queries

```css
/* Before: Media Query */
@media (min-width: 768px) {
  .card {
    flex-direction: row;
  }
}

/* After: Container Query */
@container (min-width: 768px) {
  .card {
    flex-direction: row;
  }
}
```

## Performance Considerations

- Container queries are efficient and don't cause reflows
- Use named containers for component-specific styling
- Avoid deeply nested container queries
- Test performance on lower-powered devices

## ♿ Accessibility

### Container Query Accessibility

- **Focus Management**: Components maintain focus order when layout changes
- **Screen Readers**: Layout changes are announced appropriately
- **Zoom Support**: Containers respect user zoom preferences
- **Reduced Motion**: Avoid excessive layout changes for users with motion sensitivity

### Best Practices

- **Maintain Reading Order**: Ensure content flows logically in all container sizes
- **Consistent Navigation**: Keep interactive elements accessible regardless of layout
- **Text Scaling**: Ensure text remains readable at all container sizes
- **Focus Indicators**: Maintain visible focus indicators during layout changes

## ⚙️ Customization

### CSS Custom Properties

```css
/* Container query breakpoints */
:root {
  --ax-cq-sm: 640px;
  --ax-cq-md: 768px;
  --ax-cq-lg: 1024px;
  --ax-cq-xl: 1280px;
  --ax-cq-2xl: 1536px;
}

/* Named container configuration */
.ax-container--card {
  container-type: inline-size;
  container-name: card;
}

.ax-container--sidebar {
  container-type: inline-size;
  container-name: sidebar;
}

/* Custom container queries */
@container (min-width: var(--ax-cq-md)) {
  .ax-cq:flex-row {
    flex-direction: row;
  }
}
```

### Component-Specific Container Queries

```css
/* Card-specific container queries */
@container card (min-width: 400px) {
  .ax-card {
    --ax-card-padding: var(--ax-spacing-lg);
    --ax-card-gap: var(--ax-spacing-md);
  }

  .ax-card__title {
    font-size: var(--ax-font-size-xl);
  }
}

/* Sidebar-specific container queries */
@container sidebar (min-width: 300px) {
  .ax-sidebar {
    --ax-sidebar-width: 16rem;
  }

  .ax-sidebar__item {
    padding: var(--ax-spacing-md);
  }
}

/* Panel-specific container queries */
@container panel (min-width: 600px) {
  .ax-panel {
    --ax-panel-columns: 2;
    grid-template-columns: repeat(var(--ax-panel-columns), 1fr);
  }
}
```

## 📜 API Evolution

| Version    | Change Type   | Description                                                               |
| ---------- | ------------- | ------------------------------------------------------------------------- |
| **v2.1.0** | Added Feature | Initial container query support with named containers and utility classes |
| **v2.0.2** | Internal      | Improved browser fallback strategies for older browsers                   |
| **v2.0.1** | Internal      | Added aspect ratio and style-based container queries                      |
| **v2.0.0** | Major         | Basic container query utilities for component-level responsive design     |
