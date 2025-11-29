# Grid System

The 12-column grid is the foundation of Axis Twelve.

## How It Works

Axis Twelve uses a 12-column grid system. All responsive layouts are built by dividing content into columns:

- Container: `.grid` class
- Columns: `.col-1` through `.col-12` classes
- Gaps: `.gap-xs` through `.gap-3xl` for spacing between items

## Basic Grid

Create a grid with the `.grid` class and add columns:

```html
<div class="grid">
  <div class="col-4">1/3 width</div>
  <div class="col-4">1/3 width</div>
  <div class="col-4">1/3 width</div>
</div>
```

## Column Classes

| Class | Width |
|-------|-------|
| `.col-1` | 1/12 (8.33%) |
| `.col-2` | 2/12 (16.67%) |
| `.col-3` | 3/12 (25%) |
| `.col-4` | 4/12 (33.33%) |
| `.col-5` | 5/12 (41.67%) |
| `.col-6` | 6/12 (50%) |
| `.col-7` | 7/12 (58.33%) |
| `.col-8` | 8/12 (66.67%) |
| `.col-9` | 9/12 (75%) |
| `.col-10` | 10/12 (83.33%) |
| `.col-11` | 11/12 (91.67%) |
| `.col-12` | 12/12 (100%) |

## Gap Utilities

Add consistent spacing between grid items using gap classes:

```html
<div class="grid gap-md">
  <div class="col-6">Column 1</div>
  <div class="col-6">Column 2</div>
</div>
```

Available gap sizes:
- `.gap-xs` - Extra small gap
- `.gap-sm` - Small gap
- `.gap-md` - Medium gap (default is no gap)
- `.gap-lg` - Large gap
- `.gap-xl` - Extra large gap
- `.gap-2xl` - 2X large gap
- `.gap-3xl` - 3X large gap

## Offsets

Push columns to the right with offset classes:

```html
<div class="grid">
  <div class="col-4 offset-4">Centered column (4 + 4 = 12)</div>
</div>
```

Offset classes available:
- `.offset-0` through `.offset-12`
- Each offset shifts the column 1/12 width to the right

## Common Layouts

### 2-Column Equal

```html
<div class="grid gap-md">
  <div class="col-6">Left</div>
  <div class="col-6">Right</div>
</div>
```

### 3-Column Equal

```html
<div class="grid gap-md">
  <div class="col-4">Column 1</div>
  <div class="col-4">Column 2</div>
  <div class="col-4">Column 3</div>
</div>
```

### Sidebar + Main Content

```html
<div class="grid gap-lg">
  <div class="col-3">Sidebar</div>
  <div class="col-9">Main Content</div>
</div>
```

### Custom Layout

```html
<div class="grid gap-md">
  <div class="col-2">Small</div>
  <div class="col-7">Large</div>
  <div class="col-3">Medium</div>
</div>
```

## Responsive Grid

Use breakpoint prefixes to change column widths at different screen sizes:

```html
<div class="grid gap-md">
  <!-- Mobile: full width, Tablet+: half width, Desktop+: 1/3 width -->
  <div class="col-12 md:col-6 lg:col-4">
    Responsive Column 1
  </div>
  <div class="col-12 md:col-6 lg:col-4">
    Responsive Column 2
  </div>
  <div class="col-12 md:col-6 lg:col-4">
    Responsive Column 3
  </div>
</div>
```

## Responsive Offsets

Offsets also support responsive prefixes:

```html
<div class="grid gap-md">
  <div class="col-12 lg:col-6 lg:offset-3">
    Centered on large screens, full width on mobile
  </div>
</div>
```

## Nesting Grids

Grids can be nested within grid columns:

```html
<div class="grid gap-md">
  <div class="col-6">
    <div class="grid gap-sm">
      <div class="col-6">Nested 1</div>
      <div class="col-6">Nested 2</div>
    </div>
  </div>
  <div class="col-6">
    Main Content
  </div>
</div>
```

## Auto-Width Columns

When you don't specify column widths, they distribute equally:

```html
<div class="grid gap-md">
  <div>Column 1 - 1/4 width</div>
  <div>Column 2 - 1/4 width</div>
  <div>Column 3 - 1/4 width</div>
  <div>Column 4 - 1/4 width</div>
</div>
```

## Configuration

The grid system is defined in `_variables.scss`:

```scss
$grid-columns: 12;
$grid-gutter: 1rem;
$grid-breakpoints: (
  xs: 0,
  sm: 576px,
  md: 768px,
  lg: 992px,
  xl: 1200px,
  xxl: 1400px
);
```

To customize, edit the variables and recompile:

```bash
npm run build
```

## Best Practices

1. **Always use `.grid` container** - Never use columns without a grid container
2. **Keep columns under 12** - Column widths should add up to 12 (or less for flexible layouts)
3. **Use gaps consistently** - Use gap utilities instead of manual margins for spacing
4. **Responsive first** - Design mobile-first, then add responsive prefixes for larger screens
5. **Test on multiple screens** - Always check your layout on different device sizes

See more in [Best Practices](best-practices.md).
