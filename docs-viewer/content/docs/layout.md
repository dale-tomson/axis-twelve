# Layout Module

The `axis-layout` module is the foundation of the Axis Twelve framework. It provides a robust 12-column grid system, flexible flexbox utilities, and a set of spacing/typography defaults to ensure a consistent and responsive layout across all devices.

## 🚀 Installation

```html
<!-- Full Framework (Recommended) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css">

<!-- Module Only -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-layout.min.css">
```

## 💡 Core Concepts

Axis Twelve uses a **Mobile-First** approach. Classes applied without a breakpoint prefix affect all screen sizes, while breakpoint-specific classes (e.g., `.ax-col-md-6`) apply from that width upwards.

### Breakpoints

| Prefix | Minimum Width |
|--------|---------------|
| `sm`   | `576px`       |
| `md`   | `768px`       |
| `lg`   | `992px`       |
| `xl`   | `1200px`      |
| `xxl`  | `1400px`      |

---

## 🛠 Classes Reference

### Grid System
The grid is built using CSS Grid with a 12-column template.

| Class | Description |
|-------|-------------|
| `.ax-grid` | The main grid container. Sets `display: grid` and a default gap. |
| `.ax-col-{1-12}`| Column span for all screen sizes. |
| `.ax-col-{breakpoint}-{1-12}`| Responsive column span (e.g., `.ax-col-md-6`). |
| `.ax-offset-{0-12}`| Starts a column at a specific position. |
| `.ax-container` | Centers content with a responsive max-width. |

### Flexbox Utilities
Quickly align and distribute items.

| Class | Description |
|-------|-------------|
| `.ax-flex` | Base flex container. |
| `.ax-justify-center`| Centers items along the main axis. |
| `.ax-items-center`| Centers items along the cross axis. |
| `.ax-flex-column`| Sets direction to column. |

---

## 🎨 Layout Examples

### Basic 12-Column Grid
```html
<div class="ax-grid">
  <div class="ax-col-4">Column 1 (4/12)</div>
  <div class="ax-col-8">Column 2 (8/12)</div>
</div>
```

### Responsive Columns
Stack on mobile, side-by-side on desktop.
```html
<div class="ax-grid">
  <div class="ax-col-12 ax-col-md-6">Half on Desktop</div>
  <div class="ax-col-12 ax-col-md-6">Half on Desktop</div>
</div>
```

### Centering Content
```html
<div class="ax-flex ax-justify-center ax-items-center" style="height: 200px;">
  <div>I am centered!</div>
</div>
```

---

## 📏 Spacing Utilities

Axis Twelve provides consistent spacing variables.

| Variable | Value |
|----------|-------|
| `--ax-spacing-xs`| `0.25rem` |
| `--ax-spacing-sm`| `0.5rem` |
| `--ax-spacing-md`| `1rem` |
| `--ax-spacing-lg`| `1.5rem` |
| `--ax-spacing-xl`| `3rem` |

---

## ⚙️ Customization

Override these variables in your `:root` or a specific container.

```css
:root {
  --ax-spacing-md: 1.25rem; /* Change the default gap/spacing */
  --ax-font-sans: "Inter", sans-serif; /* Change the brand font */
}
```
