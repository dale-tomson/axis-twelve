# Dark Mode

Dark mode support for Axis Twelve components using CSS custom properties.

## Usage

### Manual Toggle

```html
<!-- Toggle dark mode -->
<button onclick="document.body.classList.toggle('ax-dark')">
  Toggle Dark Mode
</button>

<!-- Dark mode container -->
<div class="ax-dark">
  <div class="ax-card">This card adapts to dark mode</div>
</div>
```

### CSS Classes

```html
<!-- Force dark mode -->
<div class="ax-dark">
  <!-- Dark mode content -->
</div>

<!-- Force light mode (override) -->
<div class="ax-dark-mode-off">
  <!-- Always light content -->
</div>
```

## Component Support

All components automatically adapt to dark mode:
- Cards
- Modals
- Buttons
- Forms
- Tables
- Navigation

## Customization

Override dark mode colors via CSS custom properties:

```css
.ax-dark {
  --ax-bg-body: #111827;
  --ax-bg-surface: #1f2937;
  --ax-color-dark: #f9fafb;
  --ax-border-color: #374151;
}
```
