# Best Practices

Development guidelines and patterns for building with Axis Twelve.

## Design Principles

### Mobile-First Approach

Always design for mobile first, then enhance for larger screens:

```html
<!-- ✅ Good: Start with mobile, enhance for larger screens -->
<div class="col-12 md:col-8 lg:col-6">
  Content flows well from mobile to desktop
</div>

<!-- ❌ Avoid: Desktop-first thinking -->
<div class="col-6">
  Too narrow on mobile
</div>
```

### Semantic HTML

Use semantic HTML elements for better accessibility:

```html
<!-- ✅ Good: Semantic structure -->
<header class="row p-4">
  <div class="column">
    <h1>Site Title</h1>
  </div>
</header>

<main class="grid gap-md p-4">
  <article class="col-8">Main content</article>
  <aside class="col-4">Sidebar</aside>
</main>

<footer class="row p-4">
  <div class="column">
    <p>&copy; 2024</p>
  </div>
</footer>

<!-- ❌ Avoid: Divs everywhere -->
<div class="row p-4">
  <div class="column">
    <div>Site Title</div>
  </div>
</div>
```

## Grid Patterns

### Container Width

Use `.row` and `.column` for consistent page width:

```html
<div class="row p-4">
  <div class="column">
    <h1>Consistent Width</h1>
    <p>Content stays centered with max-width</p>
  </div>
</div>
```

### Sidebar + Content

Create a sidebar layout:

```html
<div class="grid gap-lg">
  <aside class="col-3 p-3">
    <nav>
      <ul>
        <li><a href="#">Link 1</a></li>
        <li><a href="#">Link 2</a></li>
      </ul>
    </nav>
  </aside>
  <main class="col-9 p-3">
    <h2>Main Content</h2>
    <p>Your content here</p>
  </main>
</div>
```

### Card Grid

Create responsive card layouts:

```html
<div class="grid gap-md">
  <div class="col-12 md:col-6 lg:col-4 p-3">
    <div class="card">
      <h3>Card Title</h3>
      <p>Card content</p>
    </div>
  </div>
  <!-- More cards... -->
</div>
```

### Full Width Section

Full-width sections with centered content:

```html
<section class="p-6" style="background: #f8f9fa;">
  <div class="row">
    <div class="column">
      <h2>Section Title</h2>
      <p>Content is centered within the section</p>
    </div>
  </div>
</section>
```

## Flexbox Patterns

### Navigation Bar

```html
<nav class="flex justify-between items-center p-3" style="background: #f8f9fa;">
  <div style="font-weight: bold;">Logo</div>
  <div class="flex gap-md">
    <a href="#">Home</a>
    <a href="#">About</a>
    <a href="#">Contact</a>
  </div>
  <div>User Menu</div>
</nav>
```

### Centered Hero

```html
<div class="flex justify-center items-center" style="min-height: 500px; background: linear-gradient(135deg, #007bff, #0056b3); color: white;">
  <div style="text-align: center;">
    <h1 style="font-size: 3rem; margin-bottom: 1rem;">Welcome</h1>
    <p style="font-size: 1.25rem;">Your tagline here</p>
  </div>
</div>
```

### Flex Items with Spacing

```html
<div class="flex gap-md flex-wrap">
  <div class="flex-1" style="min-width: 200px;">Item 1</div>
  <div class="flex-1" style="min-width: 200px;">Item 2</div>
  <div class="flex-1" style="min-width: 200px;">Item 3</div>
</div>
```

## Spacing Patterns

### Consistent Section Spacing

```html
<section class="p-4 mb-6">
  <h2 class="mb-4">Section Title</h2>
  <p class="mb-3">First paragraph with margin.</p>
  <p class="mb-3">Second paragraph with margin.</p>
  <p>Last paragraph.</p>
</section>

<section class="p-4">
  <h2 class="mb-4">Another Section</h2>
  <p>Content here</p>
</section>
```

### Button Groups

```html
<div class="flex gap-sm">
  <button class="p-3">Primary</button>
  <button class="p-3">Secondary</button>
  <button class="p-3">Tertiary</button>
</div>
```

### Form Layout

```html
<form class="p-4">
  <div class="mb-4">
    <label>Name</label>
    <input type="text" class="mt-2" style="width: 100%; padding: 0.5rem;">
  </div>
  <div class="mb-4">
    <label>Email</label>
    <input type="email" class="mt-2" style="width: 100%; padding: 0.5rem;">
  </div>
  <div>
    <button class="mt-4" type="submit">Submit</button>
  </div>
</form>
```

## Responsive Patterns

### Responsive Grid

```html
<!-- Mobile: 1 column, Tablet: 2 columns, Desktop: 3 columns -->
<div class="grid gap-md">
  <div class="col-12 md:col-6 lg:col-4 p-3">Item 1</div>
  <div class="col-12 md:col-6 lg:col-4 p-3">Item 2</div>
  <div class="col-12 md:col-6 lg:col-4 p-3">Item 3</div>
</div>
```

### Responsive Navigation

```html
<nav class="flex flex-column md:flex-row gap-md p-3">
  <a href="#">Home</a>
  <a href="#">About</a>
  <a href="#">Services</a>
  <a href="#">Contact</a>
</nav>
```

### Responsive Padding

```html
<div class="p-2 md:p-4 lg:p-6">
  Tight on mobile, spacious on desktop
</div>
```

## Common Pitfalls

### Don't Mix Column Systems

```html
<!-- ❌ Wrong: Mixing grid columns with manual widths -->
<div class="grid">
  <div class="col-6" style="width: 50%;">Confusing</div>
  <div style="width: 50%;">No class</div>
</div>

<!-- ✅ Right: Use consistent grid columns -->
<div class="grid">
  <div class="col-6">Half width</div>
  <div class="col-6">Half width</div>
</div>
```

### Don't Forget Responsive Prefixes

```html
<!-- ❌ Wrong: Fixed sizes at all breakpoints -->
<div class="col-4">
  Too narrow on mobile
</div>

<!-- ✅ Right: Mobile-first with breakpoints -->
<div class="col-12 md:col-6 lg:col-4">
  Full width on mobile, responsive on larger screens
</div>
```

### Don't Use Margins for Grid Spacing

```html
<!-- ❌ Wrong: Manual margins -->
<div class="grid">
  <div class="col-4 m-2">Item 1</div>
  <div class="col-4 m-2">Item 2</div>
  <div class="col-4 m-2">Item 3</div>
</div>

<!-- ✅ Right: Use gap utility -->
<div class="grid gap-md">
  <div class="col-4">Item 1</div>
  <div class="col-4">Item 2</div>
  <div class="col-4">Item 3</div>
</div>
```

### Don't Skip Outer Padding

```html
<!-- ❌ Wrong: No padding on container -->
<div class="grid gap-md">
  Content is flush to edges
</div>

<!-- ✅ Right: Add padding to container -->
<div class="grid gap-md p-4">
  Content has proper spacing from edges
</div>
```

## Performance Tips

1. **Use CSS classes, not inline styles** - Reusable and maintainable
2. **Minimize custom CSS** - Leverage Axis Twelve utilities
3. **Compile once, use everywhere** - Build once, serve minified CSS
4. **Test on real devices** - Browser simulation isn't always accurate
5. **Check CSS file size** - Minified CSS should be under 20KB

## Accessibility

### Always Provide Semantic Structure

```html
<!-- ✅ Good: Semantic elements -->
<header>...</header>
<main>...</main>
<footer>...</footer>

<!-- ❌ Avoid: All divs -->
<div>...</div>
<div>...</div>
<div>...</div>
```

### Use Proper Heading Hierarchy

```html
<!-- ✅ Good: Proper heading order -->
<h1>Page Title</h1>
<h2>Section</h2>
<h3>Subsection</h3>

<!-- ❌ Avoid: Skipping levels -->
<h1>Title</h1>
<h3>Wrong level</h3>
```

### Include Alt Text

```html
<!-- ✅ Good: Descriptive alt text -->
<img src="logo.png" alt="Company Logo">

<!-- ❌ Avoid: Missing alt text -->
<img src="logo.png">
```

### Sufficient Color Contrast

Ensure text has sufficient contrast with background:

```html
<!-- ✅ Good: High contrast -->
<div style="background: #f8f9fa; color: #343a40;">
  High contrast text
</div>

<!-- ❌ Avoid: Low contrast -->
<div style="background: #f8f9fa; color: #f0f0f0;">
  Hard to read
</div>
```

## Testing Checklist

- [ ] Layout looks good on mobile (375px+)
- [ ] Layout looks good on tablet (768px+)
- [ ] Layout looks good on desktop (1024px+)
- [ ] All links are accessible
- [ ] Form fields are properly labeled
- [ ] Images have alt text
- [ ] Color contrast is sufficient
- [ ] No horizontal scrolling on mobile
- [ ] Touch targets are large enough (44px+)
- [ ] Page loads quickly

## Customization Guide

To customize Axis Twelve:

1. **Edit `/src/scss/_variables.scss`** for colors, spacing, breakpoints
2. **Create custom SCSS file** importing Axis Twelve
3. **Add custom classes** for your specific needs
4. **Run `npm run build`** to compile

Example custom theme:

```scss
// custom-theme.scss
$primary: #2196F3;
$secondary: #424242;
$success: #4CAF50;

@use 'axis-twelve/src/scss/style';

// Custom styles
.custom-card {
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1rem;
}
```

## Resources

- [Grid System](grid.md) - 12-column grid reference
- [Flexbox](flexbox.md) - Flex utilities guide
- [Spacing](spacing.md) - Padding and margin utilities
- [Breakpoints](breakpoints.md) - Responsive design guide
- [Variables](variables.md) - Customization reference

## Getting Help

- Check the [Quick Start](quick-start.md) guide
- Review specific feature documentation
- See common patterns in this guide
- Check browser console for errors

Build faster, center easier. Happy coding! 🚀
