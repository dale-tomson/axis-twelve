# Print Styles

Optimized styles for printing web pages to paper or PDF.

## Overview

Print styles automatically apply when printing or saving to PDF. Interactive elements are hidden, typography is optimized for readability, and layouts are adjusted for paper.

## Automatic Optimizations

When printing, the following changes are applied automatically:

### Hidden Elements

- Buttons and interactive controls
- Toast notifications
- Modals and overlays
- Tooltips
- File upload components
- Navigation menus
- Sidebars
- Footers with navigation

### Typography

- Font size optimized to 12pt
- Line height set to 1.5 for readability
- Headings sized appropriately (h1: 24pt, h2: 18pt, h3: 14pt)
- Links show URLs (except anchors)

### Layout

- Full width containers
- No backgrounds or shadows
- Page breaks avoided in cards and tables
- Images scaled to fit

## Utility Classes

### Hide on Print

```html
<!-- Hide this element when printing -->
<div class="ax-hidden-print">This won't appear in print</div>

<!-- Alternative class name -->
<div class="print-hidden">This also won't appear in print</div>
```

### Show Only on Print

```html
<!-- Show only when printing -->
<div class="ax-print-only">Print-only content</div>

<!-- Alternative class names -->
<div class="print-only">Also print-only</div>
```

### Page Break Control

```html
<!-- Force page break before -->
<div class="ax-page-break">New page starts here</div>

<!-- Force page break after -->
<div class="ax-page-break-after">Next content starts on new page</div>

<!-- Prevent page break inside -->
<div class="ax-no-break">This stays together on one page</div>
```

### Width Utilities

```html
<!-- Full width -->
<div class="ax-print-w-full">Takes full width when printing</div>

<!-- Auto width -->
<div class="ax-print-w-auto">Width adjusts to content</div>
```

## Component Behavior

### Cards

```html
<div class="ax-card">
  <div class="ax-card__body">
    <h3>Card Content</h3>
    <p>Cards print with borders and no shadows.</p>
  </div>
</div>
```

Print behavior:

- Border: 1px solid #ccc
- No shadow
- Page break avoided inside card

### Tables

```html
<table class="ax-table">
  <thead>
    <tr>
      <th>Header</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Content</td>
    </tr>
  </tbody>
</table>
```

Print behavior:

- Full width
- Borders on all cells
- Header grouped at top of page
- Page breaks avoided in rows

### Forms

```html
<form class="ax-form">
  <label>Label</label>
  <input type="text" value="Value" />

  <label>Checkbox</label>
  <input type="checkbox" checked />
</form>
```

Print behavior:

- Labels bold
- Inputs show values only
- Checkboxes show ✓ when checked
- Radios show • when checked

### Buttons

Buttons are hidden by default in print. To show action text:

```html
<button class="ax-btn">Print This</button>

<!-- Alternative: show as text -->
<span class="ax-print-only">Action: Print This</span>
```

### Progress Indicators

```html
<progress value="75" max="100"></progress>
```

Print behavior:

- Border shows progress track
- Filled portion shows progress
- Black and white styling

### Badges

```html
<span class="ax-badge">Status</span>
```

Print behavior:

- Border instead of background
- Black text
- No background color

### Code Blocks

```html
<pre><code>print("Hello World");</code></pre>
```

Print behavior:

- Monospace font
- Border around block
- Light background
- Word wrapping enabled

### Blockquotes

```html
<blockquote>This is a quote that will print with italic styling and left border.</blockquote>
```

Print behavior:

- Italic text
- Left border (3px)
- Proper indentation

## Examples

### Print Header

```html
<header class="ax-print-only">
  <h1>Document Title</h1>
  <p>
    Printed on:
    <script>
      document.write(new Date().toLocaleDateString());
    </script>
  </p>
</header>
```

### Print Footer

```html
<footer class="ax-print-only">
  <p>Page <span class="page-number"></span> of <span class="total-pages"></span></p>
  <p>© 2024 Company Name</p>
</footer>
```

### Printable Report

```html
<article class="ax-no-break">
  <header>
    <h1>Quarterly Report</h1>
    <p class="ax-print-only">Generated: 2024-01-15</p>
  </header>

  <section>
    <h2>Summary</h2>
    <p>Content here...</p>
  </section>

  <div class="ax-page-break"></div>

  <section>
    <h2>Details</h2>
    <table class="ax-table">
      <!-- table content -->
    </table>
  </section>
</article>
```

### Invoice Example

```html
<div class="ax-card ax-no-break">
  <header class="ax-card__header">
    <h1>Invoice #12345</h1>
    <p class="ax-print-only">Printed: 2024-01-15</p>
  </header>

  <div class="ax-card__body">
    <table class="ax-table">
      <thead>
        <tr>
          <th>Item</th>
          <th>Qty</th>
          <th>Price</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Product A</td>
          <td>2</td>
          <td>$10.00</td>
        </tr>
      </tbody>
    </table>
  </div>

  <footer class="ax-card__footer">
    <p><strong>Total: $20.00</strong></p>
  </footer>
</div>
```

## Browser Support

Print styles work in all browsers that support printing:

- Chrome/Edge: Full support
- Firefox: Full support
- Safari: Full support
- IE: Basic support (some modern features may not apply)

## Testing Print Styles

### Chrome/Edge

1. Press `Ctrl+P` (Windows) or `Cmd+P` (Mac)
2. Preview shows print styles
3. Save as PDF to test output

### Firefox

1. Press `Ctrl+P` (Windows) or `Cmd+P` (Mac)
2. Preview shows print styles

### Safari

1. Press `Cmd+P`
2. Preview shows print styles

## Best Practices

1. **Hide Interactive Elements**: Buttons, forms, navigation should be hidden
2. **Optimize Typography**: Use readable font sizes (12pt base)
3. **Avoid Page Breaks**: Keep related content together
4. **Show URLs**: Links should show destination URLs
5. **Remove Decorations**: No backgrounds, shadows, or animations
6. **Test Regularly**: Test print output during development
7. **Provide Print Options**: Let users know what will print

## Performance

Print styles have minimal performance impact as they only apply during print preview and printing operations.

## Accessibility

Print styles improve accessibility by:

- Removing visual distractions
- Optimizing text size for reading
- Ensuring sufficient contrast
- Maintaining logical reading order
