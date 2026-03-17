# Typography Module

The `axis-typography` module provides a comprehensive set of typography utilities for controlling font sizes, weights, alignment, line heights, letter spacing, and text decoration. These utilities follow a mobile-first responsive approach and work seamlessly with the Axis Twelve design system.

## 🚀 Installation

```html
<!-- Full Framework -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css" />

<!-- Module Only -->
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-typography.min.css"
/>
```

## 💡 Basic Usage

### Font Sizes

Control text size using predefined scale classes.

```html
<p class="ax-text-xs">Extra small text</p>
<p class="ax-text-sm">Small text</p>
<p class="ax-text-base">Base text (default)</p>
<p class="ax-text-lg">Large text</p>
<p class="ax-text-xl">Extra large text</p>
```

### Font Weights

Adjust font weight for emphasis.

```html
<p class="ax-font-light">Light weight text</p>
<p class="ax-font-normal">Normal weight text</p>
<p class="ax-font-medium">Medium weight text</p>
<p class="ax-font-semibold">Semibold weight text</p>
<p class="ax-font-bold">Bold weight text</p>
```

### Text Alignment

Align text horizontally.

```html
<p class="ax-text-left">Left aligned text</p>
<p class="ax-text-center">Center aligned text</p>
<p class="ax-text-right">Right aligned text</p>
<p class="ax-text-justify">Justified text</p>
```

## 🛠 Classes Reference

### Font Size Classes

| Class           | Description       | Font Size         |
| --------------- | ----------------- | ----------------- |
| `.ax-text-xs`   | Extra small text  | `0.75rem` (12px)  |
| `.ax-text-sm`   | Small text        | `0.875rem` (14px) |
| `.ax-text-base` | Base/default text | `1rem` (16px)     |
| `.ax-text-lg`   | Large text        | `1.125rem` (18px) |
| `.ax-text-xl`   | Extra large text  | `1.25rem` (20px)  |
| `.ax-text-2xl`  | 2x large text     | `1.5rem` (24px)   |
| `.ax-text-3xl`  | 3x large text     | `1.875rem` (30px) |
| `.ax-text-4xl`  | 4x large text     | `2.25rem` (36px)  |
| `.ax-text-5xl`  | 5x large text     | `3rem` (48px)     |

### Font Weight Classes

| Class                 | Description             | Font Weight |
| --------------------- | ----------------------- | ----------- |
| `.ax-font-thin`       | Thin font weight        | `100`       |
| `.ax-font-extralight` | Extra light font weight | `200`       |
| `.ax-font-light`      | Light font weight       | `300`       |
| `.ax-font-normal`     | Normal font weight      | `400`       |
| `.ax-font-medium`     | Medium font weight      | `500`       |
| `.ax-font-semibold`   | Semibold font weight    | `600`       |
| `.ax-font-bold`       | Bold font weight        | `700`       |
| `.ax-font-extrabold`  | Extra bold font weight  | `800`       |
| `.ax-font-black`      | Black font weight       | `900`       |

### Text Alignment Classes

| Class              | Description                 | CSS Property          |
| ------------------ | --------------------------- | --------------------- |
| `.ax-text-left`    | Left align text             | `text-align: left`    |
| `.ax-text-center`  | Center align text           | `text-align: center`  |
| `.ax-text-right`   | Right align text            | `text-align: right`   |
| `.ax-text-justify` | Justify text                | `text-align: justify` |
| `.ax-text-start`   | Start align (LTR/RTL aware) | `text-align: start`   |
| `.ax-text-end`     | End align (LTR/RTL aware)   | `text-align: end`     |

### Line Height (Leading) Classes

| Class                 | Description         | Line Height |
| --------------------- | ------------------- | ----------- |
| `.ax-leading-none`    | No line height      | `1`         |
| `.ax-leading-tight`   | Tight line height   | `1.25`      |
| `.ax-leading-snug`    | Snug line height    | `1.375`     |
| `.ax-leading-normal`  | Normal line height  | `1.5`       |
| `.ax-leading-relaxed` | Relaxed line height | `1.625`     |
| `.ax-leading-loose`   | Loose line height   | `2`         |

### Letter Spacing (Tracking) Classes

| Class                  | Description            | Letter Spacing |
| ---------------------- | ---------------------- | -------------- |
| `.ax-tracking-tighter` | Tighter letter spacing | `-0.05em`      |
| `.ax-tracking-tight`   | Tight letter spacing   | `-0.025em`     |
| `.ax-tracking-normal`  | Normal letter spacing  | `0`            |
| `.ax-tracking-wide`    | Wide letter spacing    | `0.025em`      |
| `.ax-tracking-wider`   | Wider letter spacing   | `0.05em`       |
| `.ax-tracking-widest`  | Widest letter spacing  | `0.1em`        |

### Text Decoration Classes

| Class              | Description        | CSS Property                    |
| ------------------ | ------------------ | ------------------------------- |
| `.ax-underline`    | Underline text     | `text-decoration: underline`    |
| `.ax-line-through` | Strikethrough text | `text-decoration: line-through` |
| `.ax-no-underline` | Remove underline   | `text-decoration: none`         |
| `.ax-overline`     | Overline text      | `text-decoration: overline`     |

### Text Transform Classes

| Class             | Description      | CSS Property                 |
| ----------------- | ---------------- | ---------------------------- |
| `.ax-uppercase`   | Uppercase text   | `text-transform: uppercase`  |
| `.ax-lowercase`   | Lowercase text   | `text-transform: lowercase`  |
| `.ax-capitalize`  | Capitalize text  | `text-transform: capitalize` |
| `.ax-normal-case` | Normal case text | `text-transform: none`       |

### Text Overflow Classes

| Class               | Description                 | CSS Property                                                     |
| ------------------- | --------------------------- | ---------------------------------------------------------------- |
| `.ax-truncate`      | Truncate text with ellipsis | `overflow: hidden; text-overflow: ellipsis; white-space: nowrap` |
| `.ax-text-ellipsis` | Text overflow ellipsis      | `text-overflow: ellipsis`                                        |
| `.ax-text-clip`     | Text overflow clip          | `text-overflow: clip`                                            |
| `.ax-text-wrap`     | Wrap text normally          | `white-space: normal`                                            |
| `.ax-text-nowrap`   | Prevent text wrapping       | `white-space: nowrap`                                            |
| `.ax-text-balance`  | Balance text wrapping       | `text-wrap: balance`                                             |
| `.ax-text-pretty`   | Pretty text wrapping        | `text-wrap: pretty`                                              |

### Text Color Classes

| Class                | Description           | Color                       |
| -------------------- | --------------------- | --------------------------- |
| `.ax-text-primary`   | Primary brand color   | `var(--ax-color-primary)`   |
| `.ax-text-secondary` | Secondary brand color | `var(--ax-color-secondary)` |
| `.ax-text-success`   | Success state color   | `var(--ax-color-success)`   |
| `.ax-text-danger`    | Danger/error color    | `var(--ax-color-danger)`    |
| `.ax-text-warning`   | Warning color         | `var(--ax-color-warning)`   |
| `.ax-text-info`      | Info color            | `var(--ax-color-info)`      |
| `.ax-text-dark`      | Dark text color       | `var(--ax-color-dark)`      |
| `.ax-text-muted`     | Muted/subdued text    | `var(--ax-gray-600)`        |
| `.ax-text-white`     | White text            | `#fff`                      |
| `.ax-text-black`     | Black text            | `#000`                      |

## 🎨 Variants

### Responsive Font Sizes

```html
<!-- Base size on mobile, medium on tablet, large on desktop -->
<p class="ax-text-base ax-text-md-lg ax-text-lg-xl">Responsive text</p>

<!-- Extra small on mobile, medium on desktop -->
<p class="ax-text-xs ax-text-md-base">Growing text</p>

<!-- Large on mobile, extra large on desktop -->
<p class="ax-text-lg ax-text-lg-2xl">Headline text</p>
```

### Combined Typography Classes

```html
<!-- Headline style -->
<h1 class="ax-text-3xl ax-font-bold ax-tracking-tight ax-text-center">Welcome to Our Site</h1>

<!-- Subtitle style -->
<h2 class="ax-text-xl ax-font-semibold ax-text-muted ax-leading-relaxed">
  Discover Amazing Features
</h2>

<!-- Body text style -->
<p class="ax-text-base ax-font-normal ax-leading-normal ax-text-justify">
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut
  labore et dolore magna aliqua.
</p>

<!-- Caption style -->
<p class="ax-text-sm ax-font-light ax-text-muted ax-uppercase ax-tracking-wide">
  Updated 5 minutes ago
</p>
```

### Text Overflow Examples

```html
<!-- Truncated single line -->
<div class="ax-truncate" style="width: 200px;">
  This is a very long text that will be truncated with an ellipsis
</div>

<!-- Multi-line truncation (requires line-clamp) -->
<div class="ax-line-clamp-2" style="width: 200px;">
  This is a longer paragraph that will be limited to two lines before being truncated with an
  ellipsis at the end.
</div>

<!-- Balance text wrapping -->
<h2 class="ax-text-balance ax-text-2xl">
  This headline will have balanced line wrapping for better readability
</h2>
```

## 📏 Responsive Variants

### Breakpoint-Specific Classes

All typography utilities support responsive breakpoint prefixes:

| Breakpoint        | Prefix | Minimum Width |
| ----------------- | ------ | ------------- |
| Small             | `sm:`  | `576px`       |
| Medium            | `md:`  | `768px`       |
| Large             | `lg:`  | `992px`       |
| Extra Large       | `xl:`  | `1200px`      |
| Extra Extra Large | `xxl:` | `1400px`      |

### Responsive Examples

```html
<!-- Small on mobile, medium on tablet, large on desktop -->
<p class="ax-text-sm ax-md-text-base ax-lg-text-lg">Responsive font size</p>

<!-- Left align on mobile, center on tablet+ -->
<p class="ax-text-left ax-md-text-center">Responsive alignment</p>

<!-- Normal weight on mobile, bold on desktop -->
<p class="ax-font-normal ax-lg-font-bold">Responsive font weight</p>

<!-- Tight leading on mobile, relaxed on desktop -->
<p class="ax-leading-tight ax-lg-leading-relaxed">Responsive line height</p>
```

## ✨ Advanced Features

### Vertical Rhythm with Line Height

```html
<div class="ax-leading-tight">
  <h1 class="ax-text-3xl">Main Heading</h1>
  <p class="ax-text-base">Supporting paragraph with consistent vertical rhythm.</p>
</div>

<div class="ax-leading-relaxed">
  <h2 class="ax-text-xl">Section Heading</h2>
  <p class="ax-text-base">More relaxed reading experience for longer content.</p>
</div>
```

### Typography Scale Hierarchy

```html
<!-- Display/hero text -->
<h1 class="ax-text-5xl ax-font-black ax-tracking-tighter">Hero Heading</h1>

<!-- Section heading -->
<h2 class="ax-text-3xl ax-font-bold ax-tracking-tight">Section Title</h2>

<!-- Subheading -->
<h3 class="ax-text-xl ax-font-semibold ax-text-muted">Subheading Text</h3>

<!-- Body text -->
<p class="ax-text-base ax-font-normal ax-leading-relaxed">
  Main content paragraph with comfortable reading experience.
</p>

<!-- Small text/captions -->
<small class="ax-text-sm ax-font-light ax-text-muted ax-uppercase ax-tracking-wide">
  CAPTION TEXT
</small>
```

### Text with Icons

```html
<p class="ax-text-lg ax-font-medium">
  <span class="ax-icon">✅</span>
  Success message with icon
</p>

<p class="ax-text-base ax-text-danger">
  <span class="ax-icon">⚠️</span>
  Warning message with icon
</p>

<p class="ax-text-sm ax-text-info">
  <span class="ax-icon">ℹ️</span>
  Information notice with icon
</p>
```

### Custom Text Gradients

```html
<h1 class="ax-text-4xl ax-font-bold ax-text-gradient">Gradient Text</h1>

<style>
  .ax-text-gradient {
    background: linear-gradient(90deg, #3b82f6, #8b5cf6);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
  }
</style>
```

## ♿ Accessibility

### Font Size Accessibility

- **Minimum Size**: All font sizes meet WCAG 2.1 AA requirements for readability
- **Scalable Text**: Text scales properly with browser zoom settings
- **Contrast Ratios**: Text colors maintain sufficient contrast against backgrounds

### Text Alignment Accessibility

- **Logical Properties**: `.ax-text-start` and `.ax-text-end` respect RTL/LTR text direction
- **Screen Readers**: Proper reading order maintained regardless of visual alignment
- **Justified Text**: Avoid `.ax-text-justify` for body text as it can reduce readability

### Line Height Accessibility

- **Minimum Line Height**: All line heights provide sufficient spacing for readability
- **Dyslexia Support**: Adequate line spacing helps users with dyslexia
- **Screen Readers**: Line height doesn't interfere with screen reader pronunciation

### Text Decoration Accessibility

- **Underline Links**: Use `.ax-underline` for links to maintain visual distinction
- **Non-Color Indicators**: Don't rely on color alone to convey meaning
- **Focus States**: Interactive text maintains visible focus indicators

## ⚙️ Customization

### CSS Custom Properties

```css
:root {
  /* Type Scale */
  --ax-font-size-xs: 0.75rem;
  --ax-font-size-sm: 0.875rem;
  --ax-font-size-base: 1rem;
  --ax-font-size-lg: 1.125rem;
  --ax-font-size-xl: 1.25rem;
  --ax-font-size-2xl: 1.5rem;
  --ax-font-size-3xl: 1.875rem;
  --ax-font-size-4xl: 2.25rem;
  --ax-font-size-5xl: 3rem;

  /* Font Weights */
  --ax-font-weight-thin: 100;
  --ax-font-weight-extralight: 200;
  --ax-font-weight-light: 300;
  --ax-font-weight-normal: 400;
  --ax-font-weight-medium: 500;
  --ax-font-weight-semibold: 600;
  --ax-font-weight-bold: 700;
  --ax-font-weight-extrabold: 800;
  --ax-font-weight-black: 900;

  /* Line Heights */
  --ax-leading-none: 1;
  --ax-leading-tight: 1.25;
  --ax-leading-snug: 1.375;
  --ax-leading-normal: 1.5;
  --ax-leading-relaxed: 1.625;
  --ax-leading-loose: 2;

  /* Letter Spacing */
  --ax-tracking-tighter: -0.05em;
  --ax-tracking-tight: -0.025em;
  --ax-tracking-normal: 0;
  --ax-tracking-wide: 0.025em;
  --ax-tracking-wider: 0.05em;
  --ax-tracking-widest: 0.1em;

  /* Text Colors */
  --ax-text-primary: var(--ax-color-primary);
  --ax-text-secondary: var(--ax-color-secondary);
  --ax-text-success: var(--ax-color-success);
  --ax-text-danger: var(--ax-color-danger);
  --ax-text-warning: var(--ax-color-warning);
  --ax-text-info: var(--ax-color-info);
  --ax-text-dark: var(--ax-color-dark);
  --ax-text-muted: var(--ax-gray-600);
}
```

### Custom Type Scale

```css
/* Override default type scale */
:root {
  --ax-font-size-xs: 0.625rem; /* 10px */
  --ax-font-size-sm: 0.75rem; /* 12px */
  --ax-font-size-base: 0.875rem; /* 14px */
  --ax-font-size-lg: 1rem; /* 16px */
  --ax-font-size-xl: 1.125rem; /* 18px */
  --ax-font-size-2xl: 1.25rem; /* 20px */
  --ax-font-size-3xl: 1.5rem; /* 24px */
  --ax-font-size-4xl: 1.875rem; /* 30px */
  --ax-font-size-5xl: 2.25rem; /* 36px */
}

/* Custom line heights */
:root {
  --ax-leading-tight: 1.2;
  --ax-leading-normal: 1.4;
  --ax-leading-relaxed: 1.6;
}
```

## 📜 API Evolution

| Version    | Change Type   | Description                                                                           |
| ---------- | ------------- | ------------------------------------------------------------------------------------- |
| **v2.1.0** | Added Feature | Initial release of Typography module with comprehensive utilities                     |
| **v2.0.2** | Internal      | Added `.ax-text-balance` and `.ax-text-pretty` for modern text wrapping               |
| **v2.0.1** | Internal      | Transitioned to logical properties for RTL support (`.ax-text-start`, `.ax-text-end`) |
| **v2.0.0** | Major         | Initial v2 release with physical property alignment                                   |
