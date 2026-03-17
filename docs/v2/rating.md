# Star Rating

The Star Rating component provides a visual, SVG-based star rating system for user reviews, feedback forms, and rating displays.

## Installation

### Via CDN

```html
<link rel="stylesheet" href="https://unpkg.com/axis-twelve/dist/modules/axis-rating.min.css" />
```

### Via npm

```bash
npm install axis-twelve
```

```scss
@use 'axis-twelve/src/components/forms/rating';
```

## Basic Usage

```html
<div class="ax-rating ax-rating--md ax-rating--warning">
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
</div>
```

**Output:** A 4-out-of-5 star rating display.

## Size Variants

Star ratings are available in three sizes to fit different design contexts.

### Small (16px)

```html
<div class="ax-rating ax-rating--sm ax-rating--warning">
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
</div>
```

### Medium (24px) - Default

```html
<div class="ax-rating ax-rating--md ax-rating--warning">
  <!-- 5 stars as shown above -->
</div>
```

### Large (32px)

```html
<div class="ax-rating ax-rating--lg ax-rating--warning">
  <!-- 5 stars as shown above -->
</div>
```

## Color Variants

Star ratings support five semantic color variants.

### Primary (Blue)

```html
<div class="ax-rating ax-rating--primary">
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <!-- Repeat for desired stars -->
</div>
```

### Success (Green)

```html
<div class="ax-rating ax-rating--success">
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <!-- Repeat for desired stars -->
</div>
```

### Warning (Yellow) - Default

```html
<div class="ax-rating ax-rating--warning">
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <!-- Repeat for desired stars -->
</div>
```

### Danger (Red)

```html
<div class="ax-rating ax-rating--danger">
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <!-- Repeat for desired stars -->
</div>
```

### Info (Cyan)

```html
<div class="ax-rating ax-rating--info">
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <!-- Repeat for desired stars -->
</div>
```

## Interactive Mode

Enable hover effects and click handling for user input.

```html
<div class="ax-rating ax-rating--interactive ax-rating--lg ax-rating--warning" data-rating="0">
  <svg class="ax-rating__star" data-value="1">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star" data-value="2">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star" data-value="3">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star" data-value="4">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star" data-value="5">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
</div>
```

## Read-Only Mode

For displaying static ratings without interaction.

```html
<div class="ax-rating ax-rating--readonly ax-rating--md ax-rating--warning">
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <!-- Repeat for desired stars -->
</div>
```

## Dark Mode Support

Star ratings automatically adapt to dark mode.

```html
<html class="ax-dark">
  <head>
    <link rel="stylesheet" href="axis-twelve.css" />
    <link rel="stylesheet" href="axis-dark-mode.css" />
    <link rel="stylesheet" href="axis-rating.css" />
  </head>
  <body>
    <div class="ax-rating ax-rating--lg ax-rating--warning">
      <svg class="ax-rating__star ax-rating__star--filled">
        <path
          d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
        />
      </svg>
      <!-- Repeat for desired stars -->
    </div>
  </body>
</html>
```

## JavaScript Integration

### Basic Rating Handler

```html
<div class="ax-rating ax-rating--interactive ax-rating--lg" id="productRating" data-rating="0">
  <svg class="ax-rating__star" data-value="1">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star" data-value="2">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star" data-value="3">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star" data-value="4">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <svg class="ax-rating__star" data-value="5">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
</div>
<p>Rating: <span id="ratingValue">0</span>/5</p>

<script>
  const ratingContainer = document.getElementById('productRating');
  const stars = ratingContainer.querySelectorAll('.ax-rating__star');
  const ratingValue = document.getElementById('ratingValue');

  // Handle star click
  stars.forEach((star) => {
    star.addEventListener('click', function () {
      const value = parseInt(this.getAttribute('data-value'));
      ratingContainer.setAttribute('data-rating', value);
      ratingValue.textContent = value;

      // Update filled stars
      stars.forEach((s, index) => {
        if (index < value) {
          s.classList.add('ax-rating__star--filled');
        } else {
          s.classList.remove('ax-rating__star--filled');
        }
      });
    });
  });
</script>
```

## Accessibility

### ARIA Attributes

For enhanced accessibility, add ARIA attributes:

```html
<div class="ax-rating ax-rating--readonly" role="img" aria-label="4 out of 5 stars">
  <svg class="ax-rating__star ax-rating__star--filled">
    <path
      d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
    />
  </svg>
  <!-- Repeat for desired stars -->
</div>
```

### Keyboard Navigation

For interactive ratings, support keyboard interaction:

- **Tab**: Focus on rating container
- **Arrow Left/Right**: Navigate between stars
- **Space/Enter**: Select rating

## Component API

### Class Reference

| Class                      | Description                     |
| -------------------------- | ------------------------------- |
| `.ax-rating`               | Base rating component class     |
| `.ax-rating--sm`           | Small size (16px)               |
| `.ax-rating--md`           | Medium size (24px, default)     |
| `.ax-rating--lg`           | Large size (32px)               |
| `.ax-rating--primary`      | Primary color (blue)            |
| `.ax-rating--success`      | Success color (green)           |
| `.ax-rating--warning`      | Warning color (yellow, default) |
| `.ax-rating--danger`       | Danger color (red)              |
| `.ax-rating--info`         | Info color (cyan)               |
| `.ax-rating--interactive`  | Enable hover effects            |
| `.ax-rating--readonly`     | Disable interaction             |
| `.ax-rating__star`         | Individual star SVG             |
| `.ax-rating__star--filled` | Filled/active star              |
| `.ax-rating__star--half`   | Half-filled star                |

### Data Attributes

| Attribute     | Description                | Example           |
| ------------- | -------------------------- | ----------------- |
| `data-rating` | Current rating value (0-5) | `data-rating="4"` |
| `data-value`  | Star value (1-5)           | `data-value="3"`  |

### CSS Custom Properties

| Property             | Description         | Default                   |
| -------------------- | ------------------- | ------------------------- |
| `--ax-rating-color`  | Star color          | `var(--ax-color-warning)` |
| `--ax-color-warning` | Warning theme color | `#f59e0b`                 |

## Examples

### Product Review

```html
<div class="ax-card">
  <h3>Customer Reviews</h3>

  <div style="margin-bottom: 1rem;">
    <div class="ax-rating ax-rating--md ax-rating--warning">
      <svg class="ax-rating__star ax-rating__star--filled">
        <path
          d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
        />
      </svg>
      <svg class="ax-rating__star ax-rating__star--filled">
        <path
          d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
        />
      </svg>
      <svg class="ax-rating__star ax-rating__star--filled">
        <path
          d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
        />
      </svg>
      <svg class="ax-rating__star ax-rating__star--filled">
        <path
          d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
        />
      </svg>
      <svg class="ax-rating__star">
        <path
          d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
        />
      </svg>
    </div>
    <p>4.0 out of 5 stars</p>
  </div>
</div>
```

## Browser Support

| Browser | Version |
| ------- | ------- |
| Chrome  | Latest  |
| Firefox | Latest  |
| Safari  | Latest  |
| Edge    | Latest  |
| Opera   | Latest  |

## Related Components

- [Toggle Switch](toggle-switch.md) - Binary on/off control
- [Forms](forms.md) - Form layout and styling
- [Dark Mode](dark-mode.md) - Dark mode integration

## See Also

- [Rating Example](../examples/rating.html) - Interactive demo
- [Forms Example](../examples/forms.html) - Form integration examples
