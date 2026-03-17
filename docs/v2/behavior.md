# Behavior Module

The `axis-behavior` module provides CSS-only interactive components like dropdowns, accordions, and carousels that work without JavaScript. These components use modern CSS features like `:focus-within` and `:target` to create accessible, interactive UI patterns.

## 🚀 Installation

```html
<!-- Full Framework -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css" />

<!-- Module Only -->
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-behavior.min.css"
/>
```

## 💡 Basic Usage

### Dropdown

CSS-only dropdown using `:focus-within` for modern browsers (2020+).

```html
<div class="ax-dropdown">
  <button class="ax-dropdown__trigger">
    Options
    <span class="ax-dropdown__chevron"></span>
  </button>
  <div class="ax-dropdown__menu">
    <a href="#" class="ax-dropdown__item">Action</a>
    <a href="#" class="ax-dropdown__item">Another action</a>
    <hr class="ax-dropdown__divider" />
    <a href="#" class="ax-dropdown__item">Separated link</a>
  </div>
</div>
```

### Accordion

Collapsible sections using the `details` and `summary` HTML elements.

```html
<div class="ax-accordion">
  <details class="ax-accordion__item">
    <summary class="ax-accordion__summary">
      Accordion Item 1
      <span class="ax-accordion__icon"></span>
    </summary>
    <div class="ax-accordion__content">Content for accordion item 1 goes here.</div>
  </details>
</div>
```

### Carousel

CSS-only carousel using `:target` pseudo-class for navigation.

```html
<div class="ax-carousel">
  <div class="ax-carousel__container">
    <div class="ax-carousel__slide" id="slide1">Slide 1 content</div>
    <div class="ax-carousel__slide" id="slide2">Slide 2 content</div>
  </div>
  <div class="ax-carousel__nav">
    <a href="#slide1" class="ax-carousel__indicator">1</a>
    <a href="#slide2" class="ax-carousel__indicator">2</a>
  </div>
</div>
```

## 🛠 Classes Reference

### Dropdown Classes

| Class                   | Description                       | Type      |
| ----------------------- | --------------------------------- | --------- |
| `.ax-dropdown`          | Container for dropdown component  | Component |
| `.ax-dropdown__trigger` | Button/link that toggles dropdown | Element   |
| `.ax-dropdown__chevron` | Icon showing dropdown state       | Element   |
| `.ax-dropdown__menu`    | Container for dropdown items      | Element   |
| `.ax-dropdown__item`    | Individual dropdown item          | Element   |
| `.ax-dropdown__divider` | Horizontal divider between items  | Element   |
| `.ax-dropdown__header`  | Non-clickable header text         | Element   |

### Accordion Classes

| Class                    | Description                       | Type      |
| ------------------------ | --------------------------------- | --------- |
| `.ax-accordion`          | Container for accordion component | Component |
| `.ax-accordion__item`    | Individual accordion section      | Element   |
| `.ax-accordion__summary` | Clickable summary/header          | Element   |
| `.ax-accordion__icon`    | Arrow/chevron icon                | Element   |
| `.ax-accordion__content` | Collapsible content area          | Element   |

### Carousel Classes

| Class                                      | Description                      | Type      |
| ------------------------------------------ | -------------------------------- | --------- |
| `.ax-carousel`                             | Container for carousel component | Component |
| `.ax-carousel__container`                  | Wrapper for slides               | Element   |
| `.ax-carousel__slide`                      | Individual slide/content panel   | Element   |
| `.ax-carousel__nav`                        | Navigation controls container    | Element   |
| `.ax-carousel__indicator`                  | Slide indicator/dot              | Element   |
| `.ax-carousel__prev`, `.ax-carousel__next` | Previous/next buttons            | Element   |

## 🎨 Variants

### Dropdown Positioning

```html
<!-- Dropdown positioned to the right -->
<div class="ax-dropdown ax-dropdown--right">
  <button class="ax-dropdown__trigger">Right Aligned</button>
  <div class="ax-dropdown__menu">
    <!-- menu items -->
  </div>
</div>

<!-- Dropup (opens upward) -->
<div class="ax-dropdown ax-dropdown--up">
  <button class="ax-dropdown__trigger">Dropup</button>
  <div class="ax-dropdown__menu">
    <!-- menu items -->
  </div>
</div>
```

### Accordion Variants

```html
<!-- Bordered accordion -->
<div class="ax-accordion ax-accordion--bordered">
  <details class="ax-accordion__item">
    <summary class="ax-accordion__summary">Item 1</summary>
    <div class="ax-accordion__content">Content</div>
  </details>
</div>

<!-- Flush accordion (no borders) -->
<div class="ax-accordion ax-accordion--flush">
  <details class="ax-accordion__item">
    <summary class="ax-accordion__summary">Item 1</summary>
    <div class="ax-accordion__content">Content</div>
  </details>
</div>
```

### Carousel Variants

```html
<!-- Auto-advancing carousel -->
<div class="ax-carousel ax-carousel--auto" style="--ax-carousel-duration: 5s">
  <!-- slides -->
</div>

<!-- Fade transition -->
<div class="ax-carousel ax-carousel--fade">
  <!-- slides -->
</div>
```

## 📏 Sizing

### Dropdown Sizing

| Size    | Class                       |
| ------- | --------------------------- |
| Small   | `.ax-dropdown__trigger--sm` |
| Default | (None)                      |
| Large   | `.ax-dropdown__trigger--lg` |

```html
<button class="ax-dropdown__trigger ax-dropdown__trigger--sm">Small Dropdown</button>
<button class="ax-dropdown__trigger ax-dropdown__trigger--lg">Large Dropdown</button>
```

## ✨ Advanced Features

### Dropdown with Icons

```html
<div class="ax-dropdown">
  <button class="ax-dropdown__trigger">
    <span class="ax-icon">⚙️</span>
    Settings
    <span class="ax-dropdown__chevron"></span>
  </button>
  <div class="ax-dropdown__menu">
    <a href="#" class="ax-dropdown__item">
      <span class="ax-icon">👤</span>
      Profile
    </a>
    <a href="#" class="ax-dropdown__item">
      <span class="ax-icon">🔒</span>
      Security
    </a>
  </div>
</div>
```

### Nested Accordions

```html
<div class="ax-accordion">
  <details class="ax-accordion__item">
    <summary class="ax-accordion__summary">Main Category</summary>
    <div class="ax-accordion__content">
      <div class="ax-accordion">
        <details class="ax-accordion__item">
          <summary class="ax-accordion__summary">Subcategory</summary>
          <div class="ax-accordion__content">Nested content</div>
        </details>
      </div>
    </div>
  </details>
</div>
```

### Carousel with Thumbnails

```html
<div class="ax-carousel">
  <div class="ax-carousel__container">
    <div class="ax-carousel__slide" id="slide1">Slide 1</div>
    <div class="ax-carousel__slide" id="slide2">Slide 2</div>
  </div>
  <div class="ax-carousel__thumbnails">
    <a href="#slide1" class="ax-carousel__thumbnail">
      <img src="thumb1.jpg" alt="Slide 1" />
    </a>
    <a href="#slide2" class="ax-carousel__thumbnail">
      <img src="thumb2.jpg" alt="Slide 2" />
    </a>
  </div>
</div>
```

## ♿ Accessibility

### Dropdown Accessibility

- **Keyboard Navigation**: Use `Tab` to focus trigger, `Enter/Space` to open, `Arrow keys` to navigate items
- **Screen Readers**: Proper `aria-expanded` states and `aria-haspopup` attributes
- **Focus Management**: Automatic focus trapping when dropdown is open

### Accordion Accessibility

- **Native HTML**: Uses `details`/`summary` elements for built-in accessibility
- **Keyboard Support**: `Tab` to focus, `Enter/Space` to toggle
- **Screen Readers**: Proper `aria-expanded` states communicated

### Carousel Accessibility

- **ARIA Labels**: Each slide has `aria-label` describing content
- **Keyboard Navigation**: `Tab` to focus indicators, `Enter` to select
- **Screen Reader Announcements**: Slide changes announced to screen readers

## ⚙️ Customization

### CSS Custom Properties

```css
.ax-dropdown {
  /* Animation timing */
  --ax-dropdown-transition: 150ms ease;

  /* Positioning */
  --ax-dropdown-z-index: 50;

  /* Colors */
  --ax-dropdown-bg: #fff;
  --ax-dropdown-border-color: var(--ax-border-color);
}

.ax-accordion {
  /* Transition timing */
  --ax-accordion-transition: 200ms ease;

  /* Spacing */
  --ax-accordion-gap: 0.5rem;
}

.ax-carousel {
  /* Animation */
  --ax-carousel-transition: 500ms ease;
  --ax-carousel-duration: 5s;

  /* Indicators */
  --ax-carousel-indicator-size: 0.75rem;
  --ax-carousel-indicator-active-bg: var(--ax-color-primary);
}
```

## 📜 API Evolution

| Version    | Change Type   | Description                                                                  |
| ---------- | ------------- | ---------------------------------------------------------------------------- |
| **v2.1.0** | Added Feature | Initial release of Behavior module with dropdowns, accordions, and carousels |
| **v2.0.2** | Internal      | Refactored focus management and accessibility improvements                   |
| **v2.0.1** | Internal      | Transitioned to logical properties for RTL support                           |
