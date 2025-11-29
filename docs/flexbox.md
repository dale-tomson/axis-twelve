# Flexbox

Flexible layouts with Axis Twelve's flexbox utilities.

## Enable Flexbox

Add the `.flex` class to any container to enable flexbox:

```html
<div class="flex">
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>
```

## Direction

Control how flex items are arranged:

```html
<!-- Row (default, horizontal) -->
<div class="flex">Items displayed horizontally</div>

<!-- Column (vertical) -->
<div class="flex-column">
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>
```

## Justify Content

Align items horizontally (in flex-row) or along the main axis:

```html
<div class="flex justify-start">Left-aligned items</div>
<div class="flex justify-center">Centered items</div>
<div class="flex justify-end">Right-aligned items</div>
<div class="flex justify-between">Space between items</div>
<div class="flex justify-around">Space around items</div>
<div class="flex justify-evenly">Even spacing between all items</div>
```

Available justify classes:
- `.justify-start` - Align to start (default)
- `.justify-center` - Center items
- `.justify-end` - Align to end
- `.justify-between` - Space between items
- `.justify-around` - Space around items
- `.justify-evenly` - Even space around all items

## Align Items

Align items vertically (in flex-row) or perpendicular to main axis:

```html
<div class="flex items-start" style="height: 200px;">
  Items aligned to top
</div>

<div class="flex items-center" style="height: 200px;">
  Items aligned to middle
</div>

<div class="flex items-end" style="height: 200px;">
  Items aligned to bottom
</div>

<div class="flex items-stretch" style="height: 200px;">
  Items stretched to fill height
</div>
```

Available align classes:
- `.items-start` - Align to start
- `.items-center` - Center items
- `.items-end` - Align to end
- `.items-stretch` - Stretch to fill space
- `.items-baseline` - Align to baseline

## Centering

Quick center alignment with combined classes:

```html
<!-- Center both horizontally and vertically -->
<div class="flex justify-center items-center" style="height: 300px;">
  <div>
    <h1>Perfectly Centered</h1>
    <p>Both horizontally and vertically</p>
  </div>
</div>
```

## Gap

Add consistent spacing between flex items:

```html
<div class="flex gap-md">
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>
```

Gap sizes available:
- `.gap-xs` - Extra small
- `.gap-sm` - Small
- `.gap-md` - Medium
- `.gap-lg` - Large
- `.gap-xl` - Extra large
- `.gap-2xl` - 2X large
- `.gap-3xl` - 3X large

## Wrapping

Control how flex items wrap:

```html
<!-- Default: items don't wrap -->
<div class="flex">
  <div>Item 1</div>
  <div>Item 2</div>
  <!-- More items... -->
</div>

<!-- Wrap items to next line -->
<div class="flex flex-wrap">
  <div>Item 1</div>
  <div>Item 2</div>
  <!-- Items wrap as needed -->
</div>
```

## Flex Grow and Shrink

Make items flexible within their space:

```html
<div class="flex gap-md">
  <!-- This item takes remaining space -->
  <div class="flex-1">
    Grows to fill available space
  </div>
  <div>
    Fixed width
  </div>
</div>
```

## Common Patterns

### Navigation Bar

```html
<div class="flex justify-between items-center p-3" style="background: #f8f9fa;">
  <div style="font-weight: bold;">Logo</div>
  <div class="flex gap-md">
    <a href="#">Home</a>
    <a href="#">About</a>
    <a href="#">Contact</a>
  </div>
  <div>User Menu</div>
</div>
```

### Horizontal Cards

```html
<div class="flex gap-md flex-wrap">
  <div class="flex-1" style="min-width: 250px; padding: 1rem; background: #f8f9fa;">
    <h3>Card 1</h3>
    <p>Card content here</p>
  </div>
  <div class="flex-1" style="min-width: 250px; padding: 1rem; background: #f8f9fa;">
    <h3>Card 2</h3>
    <p>Card content here</p>
  </div>
  <div class="flex-1" style="min-width: 250px; padding: 1rem; background: #f8f9fa;">
    <h3>Card 3</h3>
    <p>Card content here</p>
  </div>
</div>
```

### Sidebar + Content

```html
<div class="flex gap-lg">
  <div style="width: 250px;">
    <nav>
      <ul>
        <li><a href="#">Link 1</a></li>
        <li><a href="#">Link 2</a></li>
      </ul>
    </nav>
  </div>
  <div class="flex-1">
    <h2>Main Content</h2>
    <p>Content goes here</p>
  </div>
</div>
```

### Vertically Centered Content

```html
<div class="flex flex-column justify-center items-center" style="height: 500px; background: #e7f1ff;">
  <div>
    <h1>Centered Content</h1>
    <p>Vertically centered in full height container</p>
  </div>
</div>
```

## Responsive Flex

Use breakpoint prefixes with flex utilities:

```html
<div class="flex flex-column md:flex-row gap-md">
  <!-- Stacked on mobile, side-by-side on tablet+ -->
  <div class="flex-1">Item 1</div>
  <div class="flex-1">Item 2</div>
</div>
```

## Flex vs Grid

When to use flexbox vs grid:

- **Use Flexbox** for:
  - Navigation bars
  - Button groups
  - Centering content
  - Single-line or single-column layouts
  - Simple distribution of items

- **Use Grid** for:
  - Multi-column layouts
  - Complex grid-based designs
  - 2D layouts
  - Page layouts with defined columns

Combined, they form a powerful layout system. See [Grid System](grid.md) for grid-specific utilities.

## Browser Support

Flexbox is supported in all modern browsers:
- Chrome 21+
- Firefox 18+
- Safari 9+
- Edge 11+
- IE 11 (with prefix)

See [Best Practices](best-practices.md) for more layout patterns.
