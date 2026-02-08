# Cards Module

The `axis-cards` module provides versatile content containers that can be used for everything from simple boxes to complex content dashboards.



## 🚀 Installation

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-cards.min.css">
```

## 💡 Basic Usage

A card typically consists of a container, a header, a body, and a footer.

```html
<div class="ax-card">
  <div class="ax-card__header">Featured</div>
  <div class="ax-card__body">
    <h3 class="ax-card__title">Card Title</h3>
    <p class="ax-card__text">Some quick example text to build on the card title.</p>
  </div>
  <div class="ax-card__footer">Last updated 3 mins ago</div>
</div>
```

---

## 🛠 Classes Reference

| Class | Description |
|-------|-------------|
| `.ax-card` | Base card container. |
| `.ax-card__header`| Top section of the card. |
| `.ax-card__body`| Main content area. |
| `.ax-card__footer`| Bottom section for metadata or actions. |
| `.ax-card__title`| Styled title for use within `__body`. |
| `.ax-card__text` | Styled text for use within `__body`. |
| `.ax-card__image`| Full-width image that adheres to card rounding. |
| `.ax-card--shadow`| Adds a subtle box-shadow for depth. |

---

## 🎨 Variants

### Image Cards
Place an image at the top or bottom.

```html
<div class="ax-card">
  <img src="path/to/img.jpg" class="ax-card__image" alt="...">
  <div class="ax-card__body">
    <p>Card with image</p>
  </div>
</div>
```

### Shadow Cards
Use `.ax-card--shadow` for an elevated look.

```html
<div class="ax-card ax-card--shadow">
  <div class="ax-card__body">Elevated Card</div>
</div>
```
