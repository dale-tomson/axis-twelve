# Spacing

Control padding, margins, and spacing with Axis Twelve's comprehensive spacing utilities.

## Spacing Scale

Axis Twelve uses a consistent spacing scale derived from a base `$spacer` unit:

| Size | Class | Value |
|------|-------|-------|
| xs | `p-xs` `m-xs` | 0.25rem (4px) |
| sm | `p-sm` `m-sm` | 0.5rem (8px) |
| md | `p-md` `m-md` | 1rem (16px) |
| lg | `p-lg` `m-lg` | 1.5rem (24px) |
| xl | `p-xl` `m-xl` | 2rem (32px) |
| 2xl | `p-2xl` `m-2xl` | 3rem (48px) |
| 3xl | `p-3xl` `m-3xl` | 4rem (64px) |

Additionally, numeric scale from 0-96 is available (0, 1, 2, 3, ... 96).

## Padding

Add padding (internal spacing) to elements:

```html
<!-- All sides -->
<div class="p-md">All sides padded</div>
<div class="p-4">Numeric: 4 units</div>

<!-- Individual sides -->
<div class="pt-md">Top padding</div>
<div class="pr-lg">Right padding</div>
<div class="pb-xl">Bottom padding</div>
<div class="pl-2xl">Left padding</div>

<!-- Vertical/Horizontal -->
<div class="pv-md">Top and bottom padding</div>
<div class="ph-lg">Left and right padding</div>
```

### Padding Classes

- `.p-[size]` - All sides
- `.pt-[size]` - Top only
- `.pr-[size]` - Right only
- `.pb-[size]` - Bottom only
- `.pl-[size]` - Left only
- `.pv-[size]` - Vertical (top + bottom)
- `.ph-[size]` - Horizontal (left + right)

## Margins

Add margins (external spacing) to elements:

```html
<!-- All sides -->
<div class="m-md">Margin on all sides</div>

<!-- Individual sides -->
<div class="mt-lg">Top margin</div>
<div class="mr-xl">Right margin</div>
<div class="mb-2xl">Bottom margin</div>
<div class="ml-3xl">Left margin</div>

<!-- Vertical/Horizontal -->
<div class="mv-md">Top and bottom margin</div>
<div class="mh-lg">Left and right margin</div>

<!-- Auto margins (centering) -->
<div class="mh-auto" style="width: 500px;">Centered with auto margins</div>
```

### Margin Classes

- `.m-[size]` - All sides
- `.mt-[size]` - Top only
- `.mr-[size]` - Right only
- `.mb-[size]` - Bottom only
- `.ml-[size]` - Left only
- `.mv-[size]` - Vertical (top + bottom)
- `.mh-[size]` - Horizontal (left + right)
- `.mh-auto` - Auto horizontal (centers element)
- `.mx-auto` - Alias for `.mh-auto`
- `.my-auto` - Auto vertical

## Combining Padding and Margins

Use padding and margin utilities together:

```html
<div class="p-4 m-2">
  Both padding (inside) and margin (outside)
</div>

<div class="p-md mh-auto">
  Padded content, centered horizontally
</div>
```

## Practical Examples

### Card with Spacing

```html
<div class="m-3 p-4" style="background: #f8f9fa; border-radius: 4px;">
  <h3 class="m-0 mb-2">Card Title</h3>
  <p class="m-0">Card content with consistent spacing.</p>
</div>
```

### Article Layout

```html
<div class="p-6">
  <h1 class="mb-4">Article Title</h1>
  <p class="mb-3">First paragraph with margin below.</p>
  <p class="mb-3">Second paragraph with margin below.</p>
  <p>Final paragraph.</p>
</div>
```

### Spaced List

```html
<ul>
  <li class="mb-3">First item with spacing</li>
  <li class="mb-3">Second item with spacing</li>
  <li>Last item</li>
</ul>
```

### Form Layout

```html
<form class="p-4">
  <div class="mb-4">
    <label>Name</label>
    <input type="text" style="width: 100%; padding: 0.5rem;" class="mt-2">
  </div>
  <div class="mb-4">
    <label>Email</label>
    <input type="email" style="width: 100%; padding: 0.5rem;" class="mt-2">
  </div>
  <button class="mt-6">Submit</button>
</form>
```

## Responsive Spacing

Apply different spacing at different breakpoints:

```html
<div class="p-2 md:p-4 lg:p-6">
  Small padding on mobile, larger on desktop
</div>

<div class="mb-2 md:mb-4 lg:mb-6">
  Responsive bottom margin
</div>

<div class="m-0 md:m-2 lg:m-4">
  No margin on mobile, spacing on larger screens
</div>
```

## Numeric Spacing Scale

For precise control, use the numeric scale (0-96):

```html
<!-- Padding -->
<div class="p-0">No padding</div>
<div class="p-2">2 units padding</div>
<div class="p-4">4 units padding</div>
<div class="p-8">8 units padding</div>
<div class="p-16">16 units padding</div>

<!-- Margins -->
<div class="m-1">1 unit margin</div>
<div class="m-3">3 units margin</div>
<div class="m-5">5 units margin</div>
<div class="m-10">10 units margin</div>
```

## Negative Margins

Negative margins pull elements:

```html
<div class="m-0">No margin</div>
<div class="-mt-2">Negative top margin (pulls up)</div>
```

## Reset Spacing

Reset margins to zero:

```html
<!-- Remove all margins -->
<h1 class="m-0">Heading without margins</h1>

<!-- Remove individual margins -->
<p class="m-0 mb-2">No margin except bottom</p>

<!-- Remove padding -->
<div class="p-0">No padding</div>
```

## Spacing in Context

### Header with Spacing

```html
<header class="p-4 mb-6">
  <h1 class="m-0">Site Title</h1>
  <p class="m-0 mt-2">Subtitle</p>
</header>
```

### Spaced Sections

```html
<section class="p-4 mb-8">
  <h2 class="mb-4">Section Title</h2>
  <p class="mb-3">Content paragraph.</p>
</section>

<section class="p-4">
  <h2 class="mb-4">Another Section</h2>
  <p class="mb-3">More content.</p>
</section>
```

### Grid with Spacing

```html
<div class="grid gap-md p-4">
  <div class="col-6 p-3">Padded column 1</div>
  <div class="col-6 p-3">Padded column 2</div>
</div>
```

## Tips

1. **Use named sizes for consistency** (xs, sm, md, lg, xl, 2xl, 3xl)
2. **Use numeric for custom values** (p-5, p-7, p-9, etc.)
3. **Reset margins on headings** (`.m-0`) to control spacing
4. **Use gap utilities in grid/flex** instead of margins for items
5. **Stack padding and margin** for precise control

See [Best Practices](best-practices.md) for spacing patterns and [Gaps](gaps.md) for grid/flex spacing.
