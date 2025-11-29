# Breakpoints

Responsive design with Axis Twelve's breakpoint system.

## Breakpoint Reference

Axis Twelve includes 6 predefined breakpoints for responsive design:

| Breakpoint | Class Prefix | Min Width | Typical Device |
|------------|--------------|-----------|-----------------|
| Extra Small | (none) | 0 | Mobile |
| Small | `sm:` | 576px | Mobile Landscape |
| Medium | `md:` | 768px | Tablet |
| Large | `lg:` | 992px | Desktop |
| Extra Large | `xl:` | 1200px | Large Desktop |
| Extra Extra Large | `xxl:` | 1400px | Very Large Desktop |

## Responsive Classes

Apply different styles at different breakpoints using prefixes:

```html
<!-- Column width changes at different breakpoints -->
<div class="col-12 sm:col-6 md:col-4 lg:col-3">
  Full width on mobile
  Half width on mobile landscape
  1/3 width on tablet
  1/4 width on desktop
</div>
```

## Common Responsive Patterns

### Mobile-First Approach

Start with mobile styles, then add larger breakpoint styles:

```html
<!-- Start with col-12 (full width) -->
<!-- Then adjust at larger breakpoints -->
<div class="grid gap-md">
  <div class="col-12 md:col-6 lg:col-4">Item 1</div>
  <div class="col-12 md:col-6 lg:col-4">Item 2</div>
  <div class="col-12 md:col-6 lg:col-4">Item 3</div>
</div>
```

### Flexbox Direction Changes

Change flex direction based on screen size:

```html
<div class="flex flex-column md:flex-row gap-md">
  <!-- Stacked on mobile -->
  <!-- Side-by-side on tablet+ -->
  <div class="flex-1">Sidebar</div>
  <div class="flex-1">Content</div>
</div>
```

### Spacing Changes

Adjust padding and margins for different screen sizes:

```html
<div class="p-2 md:p-4 lg:p-6">
  Small padding on mobile
  Medium padding on tablet
  Large padding on desktop
</div>

<div class="m-2 md:m-4 lg:m-0">
  Responsive margins
</div>
```

### Offset Changes

Change grid column offsets responsively:

```html
<div class="grid">
  <div class="col-12 lg:col-6 lg:offset-3">
    Full width on mobile/tablet
    Centered on desktop
  </div>
</div>
```

## Device-Specific Breakpoints

### Mobile First

```html
<div class="col-12">
  <!-- Mobile default: full width -->
</div>
```

### Mobile Landscape

```html
<div class="col-12 sm:col-6">
  <!-- Stack on mobile, split on landscape -->
</div>
```

### Tablet

```html
<div class="col-12 md:col-6">
  <!-- Mobile: full width, Tablet+: half width -->
</div>
```

### Desktop

```html
<div class="col-12 lg:col-4">
  <!-- Mobile to tablet: full width, Desktop+: 1/3 width -->
</div>
```

### Large Desktop

```html
<div class="col-12 xl:col-3">
  <!-- Mobile to large screen: full width, Extra large: 1/4 width -->
</div>
```

### Extra Large Desktop

```html
<div class="col-12 xxl:col-2">
  <!-- Very large screens: 1/6 width -->
</div>
```

## Complete Responsive Layout Example

```html
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="axis-twelve.css">
</head>
<body>
  <!-- Header -->
  <header class="p-3 md:p-4 lg:p-6" style="background: #f8f9fa; margin-bottom: 2rem;">
    <h1>Responsive Layout</h1>
  </header>

  <!-- Main Content -->
  <div class="grid gap-md p-3 md:p-4 lg:p-6">
    <!-- Sidebar: hidden on mobile, visible on tablet+ -->
    <aside class="col-12 md:col-3" style="display: none;" class="md:display-block">
      <nav>
        <ul>
          <li><a href="#">Link 1</a></li>
          <li><a href="#">Link 2</a></li>
        </ul>
      </nav>
    </aside>

    <!-- Main Content -->
    <main class="col-12 md:col-9">
      <h2>Main Content</h2>
      <p>This content is full width on mobile, 3/4 width on tablet and up.</p>
    </main>
  </div>

  <!-- Features Grid -->
  <div class="grid gap-md p-3 md:gap-lg md:p-4 lg:gap-xl lg:p-6">
    <!-- Each card: full width on mobile, half on tablet, 1/3 on desktop -->
    <div class="col-12 md:col-6 lg:col-4 p-3" style="background: #f8f9fa;">
      <h3>Feature 1</h3>
      <p>Responsive card</p>
    </div>
    <div class="col-12 md:col-6 lg:col-4 p-3" style="background: #f8f9fa;">
      <h3>Feature 2</h3>
      <p>Responsive card</p>
    </div>
    <div class="col-12 md:col-6 lg:col-4 p-3" style="background: #f8f9fa;">
      <h3>Feature 3</h3>
      <p>Responsive card</p>
    </div>
  </div>

  <!-- Footer -->
  <footer class="p-3 md:p-4 lg:p-6 mt-6" style="background: #f8f9fa; text-align: center;">
    <p>&copy; 2024. All rights reserved.</p>
  </footer>
</body>
</html>
```

## Responsive Display Utilities

Combine responsive classes with other utilities:

```html
<!-- Hide on mobile, show on tablet+ -->
<div class="md:block">Visible on tablet and larger</div>

<!-- Show on mobile, hide on tablet+ -->
<div class="lg:none">Visible only on mobile</div>

<!-- Different text sizes at breakpoints -->
<h1 style="font-size: 1.5rem; md: font-size: 2rem; lg: font-size: 3rem;">
  Responsive heading
</h1>
```

## Media Query Approach

If writing custom CSS, use media queries matching Axis Twelve breakpoints:

```css
/* Mobile first (no prefix needed) */
.my-element {
  width: 100%;
  padding: 1rem;
}

/* Tablet (768px+) */
@media (min-width: 768px) {
  .my-element {
    width: 50%;
    padding: 1.5rem;
  }
}

/* Desktop (992px+) */
@media (min-width: 992px) {
  .my-element {
    width: 33.333%;
    padding: 2rem;
  }
}

/* Large Desktop (1200px+) */
@media (min-width: 1200px) {
  .my-element {
    width: 25%;
    padding: 2.5rem;
  }
}
```

## Testing Responsive Design

### Browser DevTools

1. Open DevTools (F12)
2. Click Device Toolbar (Ctrl+Shift+M)
3. Select device or drag to test breakpoints

### Common Device Widths

- **Mobile**: 375px - 480px
- **Mobile Landscape**: 568px - 600px
- **Tablet**: 768px - 820px
- **Laptop**: 1024px - 1440px
- **Desktop**: 1920px+

## Responsive Design Best Practices

1. **Start with mobile** - Design for mobile first, then enhance for larger screens
2. **Test all breakpoints** - Verify layout at each breakpoint
3. **Use the grid** - The 12-column grid scales beautifully
4. **Adjust spacing** - Use responsive padding/margin for better spacing
5. **Test with real devices** - Browser simulation is helpful but real devices are best
6. **Progressive enhancement** - Ensure site works without CSS
7. **Touch-friendly on mobile** - Make buttons and links easy to tap

## Troubleshooting

**Breakpoint not working?**
- Check the prefix is correct (sm:, md:, lg:, etc.)
- Make sure the CSS file is compiled
- Verify breakpoint in DevTools (check which CSS is applied)

**Layout broken at breakpoint?**
- Ensure column widths add up to 12
- Check for conflicting styles
- Test in incognito/private window (clear cache)

See [Variables](variables.md) for breakpoint configuration and [Best Practices](best-practices.md) for design patterns.
