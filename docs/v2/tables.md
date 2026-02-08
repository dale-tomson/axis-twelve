# Tables Module

The `axis-tables` module provides clean, responsive table styles with support for striped rows, hover states, and small variations.



## 🚀 Installation

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-tables.min.css">
```

## 💡 Basic Usage

Apply `.ax-table` to any `<table>` element.

```html
<table class="ax-table">
  <thead>
    <tr>
      <th>#</th>
      <th>First</th>
      <th>Last</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>John</td>
      <td>Doe</td>
    </tr>
  </tbody>
</table>
```

---

## 🛠 Classes Reference

| Class | Description |
|-------|-------------|
| `.ax-table` | Base table styling. |
| `.ax-table--striped`| Adds alternating background color to rows. |
| `.ax-table--hover`| Highlights rows on mouse hover. |
| `.ax-table--borderless`| Removes all borders. |
| `.ax-table--sm` | Compact table with reduced padding. |
| `.ax-table--responsive`| Enables mobile-friendly stacking behavior. |
| `.ax-table-wrapper`| Container for horizontal scroll on small screens. |

---

## 📱 Responsive Tables

To enable responsive mode, use `.ax-table--responsive` and add `data-label` to each `<td>`.

```html
<table class="ax-table ax-table--responsive">
  <thead>...</thead>
  <tbody>
    <tr>
      <td data-label="First">John</td>
      <td data-label="Last">Doe</td>
    </tr>
  </tbody>
</table>
```

> [!TIP]
> On mobile devices, the table columns will stack vertically, using the `data-label` attribute as the label for each row.

---

## 🎨 Variants

### Striped & Hover
Combine modifiers for best readability.

```html
<table class="ax-table ax-table--striped ax-table--hover">
  ...
</table>
```

### Small Table
```html
<table class="ax-table ax-table--sm">
  ...
</table>
```
