# Gaps

Control spacing between grid and flexbox items with gap utilities. Gap utilities are centralized in the spacing module and work seamlessly with both `.flex` and `.grid` containers.

## Gap Sizes

Gaps are the preferred way to space items in grid and flexbox containers:

| Size | Class | Value |
|------|-------|-------|
| xs | `.gap-xs` | 0.25rem (4px) |
| sm | `.gap-sm` | 0.5rem (8px) |
| md | `.gap-md` | 1rem (16px) |
| lg | `.gap-lg` | 1.5rem (24px) |
| xl | `.gap-xl` | 2rem (32px) |
| 2xl | `.gap-2xl` | 3rem (48px) |
| 3xl | `.gap-3xl` | 4rem (64px) |

## Gap vs Margin

**Use gap utilities when:**
- Spacing items in a grid or flexbox
- Want consistent spacing between all items
- Need responsive spacing

**Use margin utilities when:**
- Need different spacing for specific items
- Spacing individual elements
- Combining margins with other layout techniques

```html
<!-- ✅ Good: Use gap for grid items -->
<div class="grid gap-md">
  <div class="col-4">Item 1</div>
  <div class="col-4">Item 2</div>
  <div class="col-4">Item 3</div>
</div>

<!-- ❌ Avoid: Don't use margin for grid items -->
<div class="grid">
  <div class="col-4 m-2">Item 1</div>
  <div class="col-4 m-2">Item 2</div>
  <div class="col-4 m-2">Item 3</div>
</div>
```

## Grid Gaps

Add spacing between grid columns and rows:

```html
<div class="grid gap-md">
  <div class="col-6">Column 1</div>
  <div class="col-6">Column 2</div>
  <div class="col-6">Column 3</div>
  <div class="col-6">Column 4</div>
</div>
```

### Different Gap Sizes

```html
<!-- Small gap -->
<div class="grid gap-sm">
  <div class="col-3">Compact</div>
  <div class="col-3">Spacing</div>
  <div class="col-3">Layout</div>
  <div class="col-3">Here</div>
</div>

<!-- Large gap -->
<div class="grid gap-lg">
  <div class="col-6">Spacious</div>
  <div class="col-6">Layout</div>
</div>

<!-- Extra large gap -->
<div class="grid gap-xl">
  <div class="col-4">Very</div>
  <div class="col-4">Spacious</div>
  <div class="col-4">Layout</div>
</div>
```

## Flexbox Gaps

Add spacing between flex items:

```html
<div class="flex gap-md">
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>

<div class="flex flex-column gap-lg">
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>
```

## Common Gap Patterns

### Card Grid

```html
<div class="grid gap-lg">
  <div class="col-4 p-3" style="background: #f8f9fa; border-radius: 4px;">
    <h3>Card 1</h3>
    <p>Content</p>
  </div>
  <div class="col-4 p-3" style="background: #f8f9fa; border-radius: 4px;">
    <h3>Card 2</h3>
    <p>Content</p>
  </div>
  <div class="col-4 p-3" style="background: #f8f9fa; border-radius: 4px;">
    <h3>Card 3</h3>
    <p>Content</p>
  </div>
</div>
```

### Responsive Card Grid

```html
<div class="grid gap-md">
  <div class="col-12 md:col-6 lg:col-4 p-3" style="background: #f8f9fa;">
    <h3>Responsive Card</h3>
    <p>Full width on mobile, half on tablet, 1/3 on desktop</p>
  </div>
  <div class="col-12 md:col-6 lg:col-4 p-3" style="background: #f8f9fa;">
    <h3>Responsive Card</h3>
    <p>Full width on mobile, half on tablet, 1/3 on desktop</p>
  </div>
  <div class="col-12 md:col-6 lg:col-4 p-3" style="background: #f8f9fa;">
    <h3>Responsive Card</h3>
    <p>Full width on mobile, half on tablet, 1/3 on desktop</p>
  </div>
</div>
```

### Navigation with Gaps

```html
<div class="flex gap-md p-3" style="background: #f8f9fa;">
  <a href="#">Home</a>
  <a href="#">About</a>
  <a href="#">Services</a>
  <a href="#">Contact</a>
</div>
```

### Form Layout with Gaps

```html
<form class="flex flex-column gap-md p-4">
  <div>
    <label>First Name</label>
    <input type="text" style="width: 100%; padding: 0.5rem;">
  </div>
  <div>
    <label>Email</label>
    <input type="email" style="width: 100%; padding: 0.5rem;">
  </div>
  <div>
    <label>Message</label>
    <textarea style="width: 100%; padding: 0.5rem; min-height: 150px;"></textarea>
  </div>
  <button>Submit</button>
</form>
```

### Button Group with Gap

```html
<div class="flex gap-sm">
  <button style="padding: 0.5rem 1rem; background: #007bff; color: white; border: none; cursor: pointer;">
    Primary
  </button>
  <button style="padding: 0.5rem 1rem; background: #6c757d; color: white; border: none; cursor: pointer;">
    Secondary
  </button>
  <button style="padding: 0.5rem 1rem; background: #f8f9fa; border: 1px solid #ccc; cursor: pointer;">
    Tertiary
  </button>
</div>
```

## Responsive Gaps

Apply different gap sizes at different breakpoints:

```html
<!-- Small gap on mobile, medium on tablet, large on desktop -->
<div class="grid gap-sm md:gap-md lg:gap-lg">
  <div class="col-12 md:col-6 lg:col-4">Item 1</div>
  <div class="col-12 md:col-6 lg:col-4">Item 2</div>
  <div class="col-12 md:col-6 lg:col-4">Item 3</div>
</div>

<!-- Column layout with responsive gaps -->
<div class="flex flex-column gap-sm md:gap-lg">
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
</div>
```

## Gap Best Practices

1. **Prefer gaps over margins** for grid/flexbox items
2. **Use consistent gap sizes** across your layout
3. **Combine gap sizes** responsively for different screens
4. **Remember gap affects both axes** in CSS Grid
5. **Gaps don't affect outer spacing** (use padding on container for outer space)

### Good Example

```html
<div class="grid gap-md p-4">
  <!-- Container has padding (outer spacing) -->
  <!-- Grid items have gap between them -->
  <div class="col-6">Item 1</div>
  <div class="col-6">Item 2</div>
</div>
```

### Bad Example

```html
<div class="grid">
  <!-- Manual margins make gaps inconsistent -->
  <div class="col-6 m-2">Item 1</div>
  <div class="col-6 m-2">Item 2</div>
</div>
```

## Gap Size Selection

| Use Case | Gap Size |
|----------|----------|
| Tight, compact layouts | `.gap-xs` or `.gap-sm` |
| Normal layouts | `.gap-md` |
| Spacious layouts | `.gap-lg` |
| Feature sections | `.gap-xl` |
| Large feature sections | `.gap-2xl` or `.gap-3xl` |

See [Spacing](spacing.md) for padding and margin utilities, and [Best Practices](best-practices.md) for layout patterns.
