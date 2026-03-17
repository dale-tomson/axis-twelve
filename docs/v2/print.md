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

## ♿ Print Accessibility

### Print-Specific Considerations

- **High Contrast**: Print styles maintain sufficient contrast for readability
- **Logical Reading Order**: Content prints in DOM order for screen readers
- **Link Clarity**: URLs are shown for non-anchor links
- **Focus Indicators**: Interactive elements are hidden, avoiding confusion
- **Text Scaling**: Font sizes use absolute units (pt) for consistent printing

### Screen Reader Support

- **Hidden Content**: Non-essential interactive elements are hidden from screen readers
- **Page Navigation**: Print-specific content (headers/footers) are properly labeled
- **Document Structure**: Semantic HTML elements maintain their structure
- **Alternative Text**: Images retain their alt text when printed

### User Control

- **Print Preview**: Users can review what will print before printing
- **Selective Printing**: Browser print dialogs allow selecting specific content
- **Page Range**: Users can choose which pages to print
- **Layout Options**: Portrait/landscape orientation and scaling options

## ⚙️ Customization

### CSS Custom Properties for Print

```css
/* Print-specific custom properties */
@media print {
  :root {
    /* Typography */
    --ax-print-font-size: 12pt;
    --ax-print-line-height: 1.5;
    --ax-print-font-family: 'Georgia', 'Times New Roman', serif;

    /* Colors */
    --ax-print-color: #000;
    --ax-print-bg: #fff;
    --ax-print-border-color: #ccc;

    /* Spacing */
    --ax-print-margin: 0.5in;
    --ax-print-padding: 0.25in;

    /* Page layout */
    --ax-print-page-width: 8.5in;
    --ax-print-page-height: 11in;
  }

  /* Component-specific print customization */
  .ax-card {
    --ax-card-print-border: 1px solid var(--ax-print-border-color);
    --ax-card-print-padding: var(--ax-print-padding);
    --ax-card-print-margin: 0 0 0.5in 0;
  }

  .ax-table {
    --ax-table-print-border: 1px solid var(--ax-print-border-color);
    --ax-table-print-cell-padding: 0.125in;
    --ax-table-print-header-bg: #f0f0f0;
  }

  .ax-code-block {
    --ax-code-print-font-family: 'Courier New', monospace;
    --ax-code-print-font-size: 10pt;
    --ax-code-print-bg: #f8f8f8;
    --ax-code-print-border: 1px solid var(--ax-print-border-color);
  }
}

/* Custom print styles */
@media print {
  /* Hide navigation and interactive elements */
  .ax-navbar,
  .ax-btn,
  .ax-form,
  .ax-toasts,
  .ax-modals,
  .ax-tooltips {
    display: none !important;
  }

  /* Show URLs for links */
  a[href]:not([href^='#']):not([href^='javascript:'])::after {
    content: ' (' attr(href) ')';
    font-size: 0.875em;
    font-weight: normal;
  }

  /* Page break control */
  .ax-no-break {
    page-break-inside: avoid;
  }

  .ax-page-break {
    page-break-before: always;
  }

  .ax-page-break-after {
    page-break-after: always;
  }

  /* Print headers and footers */
  @page {
    margin: var(--ax-print-margin);

    @top-left {
      content: element(header);
    }

    @bottom-center {
      content: 'Page ' counter(page) ' of ' counter(pages);
      font-size: 0.75em;
      color: #666;
    }
  }

  /* Table headers on each page */
  thead {
    display: table-header-group;
  }

  /* Keep rows together */
  tr {
    page-break-inside: avoid;
  }
}
```

### JavaScript Print Enhancement

```javascript
// Add page numbers dynamically
function addPageNumbers() {
  const totalPages = Math.ceil(document.body.scrollHeight / window.innerHeight);
  const pageNumbers = document.querySelectorAll('.page-number');
  const totalPagesElements = document.querySelectorAll('.total-pages');

  pageNumbers.forEach((el) => {
    el.textContent = currentPage;
  });

  totalPagesElements.forEach((el) => {
    el.textContent = totalPages;
  });
}

// Add print date
function addPrintDate() {
  const dateElements = document.querySelectorAll('.print-date');
  const now = new Date();
  const formattedDate = now.toLocaleDateString('en-US', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  });

  dateElements.forEach((el) => {
    el.textContent = formattedDate;
  });
}

// Print button handler
document.getElementById('print-button').addEventListener('click', () => {
  // Add print-only content
  addPageNumbers();
  addPrintDate();

  // Trigger print dialog
  window.print();
});

// Before print event
window.addEventListener('beforeprint', () => {
  // Hide interactive elements
  document.querySelectorAll('.ax-hidden-print').forEach((el) => {
    el.style.display = 'none';
  });

  // Show print-only content
  document.querySelectorAll('.ax-print-only').forEach((el) => {
    el.style.display = 'block';
  });
});

// After print event
window.addEventListener('afterprint', () => {
  // Restore normal display
  document.querySelectorAll('.ax-hidden-print').forEach((el) => {
    el.style.display = '';
  });

  document.querySelectorAll('.ax-print-only').forEach((el) => {
    el.style.display = 'none';
  });
});
```

## 📜 API Evolution

| Version    | Change Type   | Description                                                    |
| ---------- | ------------- | -------------------------------------------------------------- |
| **v2.1.0** | Added Feature | Enhanced print styles with page break controls and URL display |
| **v2.0.2** | Internal      | Improved typography optimization and contrast for print        |
| **v2.0.1** | Internal      | Added CSS custom properties for print customization            |
| **v2.0.0** | Major         | Initial print styles with basic element hiding and typography  |
