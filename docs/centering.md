# Centering

Axis Twelve provides dedicated components for centering content easily.

## Row Component

The `.row` component centers content horizontally and is perfect for page containers:

```html
<div class="row p-4">
  <div class="column">
    <h1>Centered Page Content</h1>
    <p>This content is horizontally centered with max-width constraints.</p>
  </div>
</div>
```

The `.row` component automatically:
- Centers content horizontally
- Applies consistent max-width
- Works with the `.column` child element

## Column Component

The `.column` component contains centered content:

```html
<div class="row">
  <div class="column">
    <!-- All content inside is centered -->
    <h2>Title</h2>
    <p>Content paragraph</p>
  </div>
</div>
```

Combine `.row` and `.column` for semantic, centered layouts.

## Box Component

The `.box` component creates a centered container with uniform padding:

```html
<div class="box p-4">
  <h2>Centered Box</h2>
  <p>This content is in a centered box with padding.</p>
</div>
```

## Flexbox Centering

Center content using flexbox utilities:

```html
<!-- Center horizontally only -->
<div class="flex justify-center p-4">
  <div>Horizontally centered</div>
</div>

<!-- Center vertically only (requires height) -->
<div class="flex items-center" style="height: 300px;">
  <div>Vertically centered</div>
</div>

<!-- Center both directions -->
<div class="flex justify-center items-center" style="height: 300px;">
  <div>
    <h1>Perfectly Centered</h1>
    <p>Both horizontally and vertically</p>
  </div>
</div>
```

## Grid Centering

Center a single grid column using offsets:

```html
<!-- Center a column using offsets -->
<div class="grid">
  <div class="col-6 offset-3">
    Centered column (6 + 3 + 3 = 12)
  </div>
</div>

<!-- Or use 4-4-4 split -->
<div class="grid">
  <div class="col-4 offset-4">
    Centered with 4-column offset
  </div>
</div>
```

## Common Centering Patterns

### Hero Section

```html
<div class="row p-6" style="background: linear-gradient(135deg, #007bff, #0056b3); color: white; text-align: center;">
  <div class="column">
    <h1 style="font-size: 3rem; margin-bottom: 1rem;">Welcome to Axis Twelve</h1>
    <p style="font-size: 1.25rem; margin-bottom: 2rem;">Build faster, center easier. The 12-column solution.</p>
    <button style="padding: 0.75rem 2rem; background: white; color: #007bff; border: none; cursor: pointer; font-weight: bold;">
      Get Started
    </button>
  </div>
</div>
```

### Centered Card

```html
<div class="flex justify-center items-center" style="min-height: 100vh; background: #f8f9fa;">
  <div class="box p-4" style="background: white; width: 400px; border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
    <h2>Sign In</h2>
    <form>
      <div style="margin-bottom: 1rem;">
        <label>Email</label>
        <input type="email" style="width: 100%; padding: 0.5rem; margin-top: 0.5rem;">
      </div>
      <div style="margin-bottom: 1rem;">
        <label>Password</label>
        <input type="password" style="width: 100%; padding: 0.5rem; margin-top: 0.5rem;">
      </div>
      <button type="submit" style="width: 100%; padding: 0.75rem; background: #007bff; color: white; border: none; cursor: pointer;">
        Sign In
      </button>
    </form>
  </div>
</div>
```

### Centered Text with Sidebar

```html
<div class="grid gap-lg">
  <div class="col-2">
    <nav>
      <ul>
        <li><a href="#">Link</a></li>
      </ul>
    </nav>
  </div>
  <div class="col-8">
    <div class="box p-4">
      <h2>Article Title</h2>
      <p>Article content is centered here with comfortable reading width.</p>
    </div>
  </div>
  <div class="col-2">
    <aside>
      <h4>Sidebar</h4>
      <p>Additional info</p>
    </aside>
  </div>
</div>
```

### Full-Screen Centered Content

```html
<div class="flex justify-center items-center" style="min-height: 100vh;">
  <div style="text-align: center;">
    <h1>404</h1>
    <p>Page not found</p>
    <a href="/">Go Home</a>
  </div>
</div>
```

## Vertical Centering with Different Heights

For dynamic content where you can't set explicit heights:

```html
<!-- Use padding for visual centering -->
<div class="p-6" style="text-align: center;">
  <h2>Padded Centered Content</h2>
  <p>This appears centered visually with padding.</p>
</div>

<!-- Use flexbox for true center -->
<div class="flex flex-column justify-center items-center gap-md p-4">
  <h2>Flexbox Centered</h2>
  <p>Always centered vertically.</p>
</div>
```

## Centering Text

Center text content within elements:

```html
<!-- Center all text -->
<div style="text-align: center;">
  <h1>Centered Heading</h1>
  <p>Centered paragraph</p>
</div>

<!-- Center inline elements -->
<div class="flex justify-center gap-md">
  <a href="#">Link 1</a>
  <a href="#">Link 2</a>
  <a href="#">Link 3</a>
</div>
```

## Responsive Centering

Apply centering at specific breakpoints:

```html
<div class="flex flex-column md:flex-row justify-center items-center gap-md p-4">
  <div class="col-12 md:col-6">Content 1</div>
  <div class="col-12 md:col-6">Content 2</div>
</div>
```

## When to Use Each Method

| Goal | Method | Class |
|------|--------|-------|
| Center page content | Row + Column | `.row` `.column` |
| Center container | Box | `.box` |
| Center horizontally (flex) | Justify | `.flex .justify-center` |
| Center vertically (flex) | Align items | `.flex .items-center` |
| Center grid column | Offset | `.col-X .offset-Y` |
| Center text | Text align | `text-align: center` |

## Best Practices

1. **For page layouts**, use `.row` and `.column`
2. **For interactive content**, use `.flex` with `.justify-center` and `.items-center`
3. **For single columns**, use grid offsets (`.col-6 .offset-3`)
4. **For text**, use `text-align: center`
5. **For true center** (both axes), combine flex justify and align

See more patterns in [Best Practices](best-practices.md).
