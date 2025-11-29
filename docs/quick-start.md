# Quick Start

Get your first layout built with Axis Twelve in 5 minutes.

## Basic HTML Structure

Start with a simple HTML template:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="path/to/axis-twelve.css">
  <title>My First Axis Twelve Layout</title>
</head>
<body>
  <!-- Your content here -->
</body>
</html>
```

## Your First Grid Layout

Create a simple 2-column layout:

```html
<div class="grid gap-md">
  <div class="col-6">
    <h2>Left Column</h2>
    <p>This takes up 6 columns (50% width)</p>
  </div>
  <div class="col-6">
    <h2>Right Column</h2>
    <p>This also takes up 6 columns (50% width)</p>
  </div>
</div>
```

## Adding Padding and Margins

Add spacing with padding and margin utilities:

```html
<div class="grid gap-lg">
  <div class="col-6 p-4 m-2">
    <h3>Content Area</h3>
    <p>p-4 adds padding on all sides</p>
    <p>m-2 adds margin on all sides</p>
  </div>
  <div class="col-6 p-4 m-2">
    <h3>Another Area</h3>
    <p>Both areas have consistent spacing</p>
  </div>
</div>
```

## Responsive Layouts

Make your layout responsive for different screen sizes:

```html
<div class="grid gap-md">
  <!-- Full width on mobile, half width on tablet and up -->
  <div class="col-12 md:col-6 lg:col-4">
    Column 1
  </div>
  <div class="col-12 md:col-6 lg:col-4">
    Column 2
  </div>
  <div class="col-12 md:col-6 lg:col-4">
    Column 3
  </div>
</div>
```

Breakpoint prefixes:
- `sm:` - Small screens (576px+)
- `md:` - Medium screens (768px+)
- `lg:` - Large screens (992px+)
- `xl:` - Extra large screens (1200px+)
- `xxl:` - Extra extra large screens (1400px+)

## Using Flexbox

Create flexible layouts with flexbox utilities:

```html
<div class="flex justify-center items-center" style="height: 200px;">
  <div>
    <p>This content is centered both horizontally and vertically</p>
  </div>
</div>
```

Useful flex classes:
- `.flex` - Enable flexbox
- `.flex-column` - Stack items vertically
- `.justify-center` - Center items horizontally
- `.items-center` - Center items vertically
- `.gap-md` - Add space between items

## Common Patterns

### Card Layout

```html
<div class="grid gap-md">
  <div class="col-4 p-3">
    <div style="background: #f8f9fa; padding: 1rem; border-radius: 4px;">
      <h4>Card 1</h4>
      <p>Card content goes here</p>
    </div>
  </div>
  <div class="col-4 p-3">
    <div style="background: #f8f9fa; padding: 1rem; border-radius: 4px;">
      <h4>Card 2</h4>
      <p>Card content goes here</p>
    </div>
  </div>
  <div class="col-4 p-3">
    <div style="background: #f8f9fa; padding: 1rem; border-radius: 4px;">
      <h4>Card 3</h4>
      <p>Card content goes here</p>
    </div>
  </div>
</div>
```

### Sidebar + Content

```html
<div class="grid gap-lg">
  <div class="col-3">
    <!-- Sidebar -->
    <nav>
      <ul>
        <li><a href="#">Link 1</a></li>
        <li><a href="#">Link 2</a></li>
        <li><a href="#">Link 3</a></li>
      </ul>
    </nav>
  </div>
  <div class="col-9">
    <!-- Main content -->
    <h2>Main Content</h2>
    <p>Your main content goes here</p>
  </div>
</div>
```

### Centered Hero Section

```html
<div class="row p-6">
  <div class="column">
    <h1>Welcome to Axis Twelve</h1>
    <p>Build faster, center easier. The 12-column solution.</p>
    <button style="padding: 0.75rem 1.5rem; background: #007bff; color: white; border: none; cursor: pointer;">
      Get Started
    </button>
  </div>
</div>
```

## Next Steps

- Learn about the [Grid System](grid.md) in detail
- Explore [Flexbox](flexbox.md) utilities
- Discover [Centering](centering.md) components
- Check out [Spacing](spacing.md) utilities
- Review [Best Practices](best-practices.md) for development

You're ready to start building! 🚀
