# Utilities Module

The `axis-utilities` module provides a comprehensive set of utility classes for borders, shadows, backgrounds, sizing, positioning, and display properties. These atomic CSS classes follow a mobile-first responsive approach and enable rapid UI development without writing custom CSS.

## 🚀 Installation

```html
<!-- Full Framework -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css" />

<!-- Module Only -->
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-utilities.min.css"
/>
```

## 💡 Basic Usage

### Borders

Add borders with various widths, styles, and colors.

```html
<div class="ax-border">Default border</div>
<div class="ax-border-2 ax-border-dashed ax-border-primary">Dashed primary border</div>
<div class="ax-border-t-4 ax-border-success">Top success border</div>
```

### Shadows

Apply box shadows for elevation and depth.

```html
<div class="ax-shadow-sm">Small shadow</div>
<div class="ax-shadow-md">Medium shadow</div>
<div class="ax-shadow-lg">Large shadow</div>
<div class="ax-shadow-xl">Extra large shadow</div>
```

### Backgrounds

Set background colors and gradients.

```html
<div class="ax-bg-primary ax-text-white">Primary background</div>
<div class="ax-bg-success ax-text-white">Success background</div>
<div class="ax-bg-gradient-to-r ax-from-primary ax-to-secondary">Gradient background</div>
```

### Sizing

Control width, height, and aspect ratio.

```html
<div class="ax-w-full ax-h-32">Full width, 32 units height</div>
<div class="ax-w-1/2 ax-h-auto">Half width, auto height</div>
<div class="ax-aspect-video">16:9 aspect ratio</div>
```

### Positioning

Position elements absolutely, relatively, or fixed.

```html
<div class="ax-relative">
  <div class="ax-absolute ax-top-0 ax-right-0">Absolute positioned</div>
</div>
<div class="ax-fixed ax-bottom-4 ax-right-4">Fixed to bottom right</div>
```

## 🛠 Classes Reference

### Border Classes

| Category    | Class                  | Description             |
| ----------- | ---------------------- | ----------------------- |
| **Width**   | `.ax-border`           | Default 1px border      |
|             | `.ax-border-0`         | No border               |
|             | `.ax-border-2`         | 2px border              |
|             | `.ax-border-4`         | 4px border              |
|             | `.ax-border-8`         | 8px border              |
| **Sides**   | `.ax-border-t`         | Top border              |
|             | `.ax-border-r`         | Right border            |
|             | `.ax-border-b`         | Bottom border           |
|             | `.ax-border-l`         | Left border             |
| **Style**   | `.ax-border-solid`     | Solid border style      |
|             | `.ax-border-dashed`    | Dashed border style     |
|             | `.ax-border-dotted`    | Dotted border style     |
|             | `.ax-border-double`    | Double border style     |
| **Color**   | `.ax-border-primary`   | Primary color border    |
|             | `.ax-border-secondary` | Secondary color border  |
|             | `.ax-border-success`   | Success color border    |
|             | `.ax-border-danger`    | Danger color border     |
|             | `.ax-border-warning`   | Warning color border    |
|             | `.ax-border-info`      | Info color border       |
| **Radius**  | `.ax-rounded`          | Small border radius     |
|             | `.ax-rounded-md`       | Medium border radius    |
|             | `.ax-rounded-lg`       | Large border radius     |
|             | `.ax-rounded-full`     | Full circle/oval        |
| **Logical** | `.ax-border-inline`    | Inline start/end border |
|             | `.ax-border-block`     | Block start/end border  |

### Shadow Classes

| Class              | Description        | Shadow Value                                                          |
| ------------------ | ------------------ | --------------------------------------------------------------------- |
| `.ax-shadow-xs`    | Extra small shadow | `0 1px 2px 0 rgb(0 0 0 / 0.05)`                                       |
| `.ax-shadow-sm`    | Small shadow       | `0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1)`       |
| `.ax-shadow`       | Default shadow     | `0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1)`    |
| `.ax-shadow-md`    | Medium shadow      | `0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1)`  |
| `.ax-shadow-lg`    | Large shadow       | `0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1)` |
| `.ax-shadow-xl`    | Extra large shadow | `0 25px 50px -12px rgb(0 0 0 / 0.25)`                                 |
| `.ax-shadow-2xl`   | 2x large shadow    | `0 50px 100px -20px rgb(0 0 0 / 0.25)`                                |
| `.ax-shadow-inner` | Inner shadow       | `inset 0 2px 4px 0 rgb(0 0 0 / 0.05)`                                 |
| `.ax-shadow-none`  | Remove shadow      | `none`                                                                |

### Background Classes

| Category     | Class                  | Description                |
| ------------ | ---------------------- | -------------------------- |
| **Color**    | `.ax-bg-primary`       | Primary background color   |
|              | `.ax-bg-secondary`     | Secondary background color |
|              | `.ax-bg-success`       | Success background color   |
|              | `.ax-bg-danger`        | Danger background color    |
|              | `.ax-bg-warning`       | Warning background color   |
|              | `.ax-bg-info`          | Info background color      |
|              | `.ax-bg-dark`          | Dark background color      |
|              | `.ax-bg-light`         | Light background color     |
|              | `.ax-bg-white`         | White background           |
|              | `.ax-bg-transparent`   | Transparent background     |
| **Gradient** | `.ax-bg-gradient-to-r` | Gradient left to right     |
|              | `.ax-bg-gradient-to-l` | Gradient right to left     |
|              | `.ax-bg-gradient-to-t` | Gradient bottom to top     |
|              | `.ax-bg-gradient-to-b` | Gradient top to bottom     |
| **From/To**  | `.ax-from-primary`     | Gradient start color       |
|              | `.ax-to-secondary`     | Gradient end color         |
| **Opacity**  | `.ax-bg-opacity-10`    | 10% background opacity     |
|              | `.ax-bg-opacity-25`    | 25% background opacity     |
|              | `.ax-bg-opacity-50`    | 50% background opacity     |
|              | `.ax-bg-opacity-75`    | 75% background opacity     |
|              | `.ax-bg-opacity-90`    | 90% background opacity     |

### Sizing Classes

| Category    | Class                 | Description             |
| ----------- | --------------------- | ----------------------- |
| **Width**   | `.ax-w-auto`          | Auto width              |
|             | `.ax-w-full`          | 100% width              |
|             | `.ax-w-screen`        | 100vw width             |
|             | `.ax-w-1/2`           | 50% width               |
|             | `.ax-w-1/3`           | 33.333% width           |
|             | `.ax-w-2/3`           | 66.666% width           |
|             | `.ax-w-1/4`           | 25% width               |
|             | `.ax-w-3/4`           | 75% width               |
| **Height**  | `.ax-h-auto`          | Auto height             |
|             | `.ax-h-full`          | 100% height             |
|             | `.ax-h-screen`        | 100vh height            |
|             | `.ax-h-4`             | 1rem (16px) height      |
|             | `.ax-h-8`             | 2rem (32px) height      |
|             | `.ax-h-12`            | 3rem (48px) height      |
|             | `.ax-h-16`            | 4rem (64px) height      |
|             | `.ax-h-24`            | 6rem (96px) height      |
| **Min/Max** | `.ax-min-w-0`         | 0 minimum width         |
|             | `.ax-min-w-full`      | Full minimum width      |
|             | `.ax-max-w-full`      | Full maximum width      |
|             | `.ax-max-w-screen-md` | Medium screen max width |
| **Aspect**  | `.ax-aspect-auto`     | Auto aspect ratio       |
|             | `.ax-aspect-square`   | 1:1 aspect ratio        |
|             | `.ax-aspect-video`    | 16:9 aspect ratio       |

### Positioning Classes

| Category      | Class           | Description          |
| ------------- | --------------- | -------------------- |
| **Position**  | `.ax-static`    | Static positioning   |
|               | `.ax-relative`  | Relative positioning |
|               | `.ax-absolute`  | Absolute positioning |
|               | `.ax-fixed`     | Fixed positioning    |
|               | `.ax-sticky`    | Sticky positioning   |
| **Top/Right** | `.ax-top-0`     | Top: 0               |
|               | `.ax-right-0`   | Right: 0             |
|               | `.ax-bottom-0`  | Bottom: 0            |
|               | `.ax-left-0`    | Left: 0              |
| **Insets**    | `.ax-inset-0`   | All sides: 0         |
|               | `.ax-inset-x-0` | Left/right: 0        |
|               | `.ax-inset-y-0` | Top/bottom: 0        |
| **Z-index**   | `.ax-z-0`       | z-index: 0           |
|               | `.ax-z-10`      | z-index: 10          |
|               | `.ax-z-20`      | z-index: 20          |
|               | `.ax-z-30`      | z-index: 30          |
|               | `.ax-z-40`      | z-index: 40          |
|               | `.ax-z-50`      | z-index: 50          |
|               | `.ax-z-auto`    | Auto z-index         |

### Display Classes

| Class              | Description          | CSS Property            |
| ------------------ | -------------------- | ----------------------- |
| `.ax-block`        | Block display        | `display: block`        |
| `.ax-inline-block` | Inline block display | `display: inline-block` |
| `.ax-inline`       | Inline display       | `display: inline`       |
| `.ax-flex`         | Flex display         | `display: flex`         |
| `.ax-inline-flex`  | Inline flex display  | `display: inline-flex`  |
| `.ax-grid`         | Grid display         | `display: grid`         |
| `.ax-inline-grid`  | Inline grid display  | `display: inline-grid`  |
| `.ax-hidden`       | Hidden display       | `display: none`         |
| `.ax-table`        | Table display        | `display: table`        |
| `.ax-table-row`    | Table row display    | `display: table-row`    |
| `.ax-table-cell`   | Table cell display   | `display: table-cell`   |

### Overflow Classes

| Class                   | Description            | CSS Property         |
| ----------------------- | ---------------------- | -------------------- |
| `.ax-overflow-auto`     | Auto overflow          | `overflow: auto`     |
| `.ax-overflow-hidden`   | Hidden overflow        | `overflow: hidden`   |
| `.ax-overflow-visible`  | Visible overflow       | `overflow: visible`  |
| `.ax-overflow-scroll`   | Scroll overflow        | `overflow: scroll`   |
| `.ax-overflow-x-auto`   | X-axis auto overflow   | `overflow-x: auto`   |
| `.ax-overflow-y-auto`   | Y-axis auto overflow   | `overflow-y: auto`   |
| `.ax-overflow-x-hidden` | X-axis hidden overflow | `overflow-x: hidden` |
| `.ax-overflow-y-hidden` | Y-axis hidden overflow | `overflow-y: hidden` |

## 🎨 Variants

### Border Combinations

```html
<!-- Rounded primary border -->
<div class="ax-border ax-border-primary ax-rounded-lg">Primary bordered card</div>

<!-- Dashed success border on top -->
<div class="ax-border-t-2 ax-border-dashed ax-border-success">Success top border</div>

<!-- Double border with radius -->
<div class="ax-border-4 ax-border-double ax-border-warning ax-rounded-full">
  Warning double border
</div>

<!-- Individual side borders -->
<div class="ax-border-t ax-border-r-2 ax-border-b-4 ax-border-l">Mixed border widths</div>
```

### Shadow Depth Hierarchy

```html
<!-- Card with subtle shadow -->
<div class="ax-shadow-sm ax-rounded ax-p-4">Subtle elevation</div>

<!-- Modal/dialog shadow -->
<div class="ax-shadow-lg ax-rounded-lg ax-p-6">Prominent elevation</div>

<!-- Floating action button -->
<button class="ax-shadow-xl ax-rounded-full ax-p-4">Floating action</button>

<!-- Inner shadow for inputs -->
<input class="ax-shadow-inner ax-rounded ax-border ax-p-2" placeholder="Type here" />
```

### Background Patterns

```html
<!-- Solid color background -->
<div class="ax-bg-primary ax-text-white ax-p-4">Primary solid background</div>

<!-- Gradient background -->
<div class="ax-bg-gradient-to-r ax-from-primary ax-to-secondary ax-text-white ax-p-6">
  Primary to secondary gradient
</div>

<!-- Transparent with opacity -->
<div class="ax-bg-primary ax-bg-opacity-10 ax-border ax-border-primary ax-p-4">
  Transparent primary background
</div>

<!-- Multiple background layers -->
<div class="ax-bg-white ax-bg-opacity-80 ax-backdrop-blur-sm ax-p-4">Glass morphism effect</div>
```

### Responsive Sizing

```html
<!-- Full width on mobile, half on desktop -->
<div class="ax-w-full ax-lg-w-1/2 ax-h-48">Responsive width container</div>

<!-- Fixed height on mobile, auto on desktop -->
<div class="ax-h-32 ax-md-h-auto">Responsive height container</div>

<!-- Aspect ratio responsive -->
<div class="ax-aspect-square ax-md-aspect-video">Square on mobile, 16:9 on desktop</div>
```

### Positioning Contexts

```html
<!-- Sticky header -->
<header class="ax-sticky ax-top-0 ax-z-50 ax-bg-white ax-shadow">Sticky navigation</header>

<!-- Fixed footer -->
<footer class="ax-fixed ax-bottom-0 ax-left-0 ax-right-0 ax-bg-dark ax-text-white">
  Fixed footer
</footer>

<!-- Absolute positioned badge -->
<div class="ax-relative">
  <div
    class="ax-absolute ax-top-0 ax-right-0 ax-bg-danger ax-text-white ax-rounded-full ax-w-6 ax-h-6 ax-flex ax-items-center ax-justify-center"
  >
    3
  </div>
  Content with badge
</div>

<!-- Centered modal -->
<div class="ax-fixed ax-inset-0 ax-flex ax-items-center ax-justify-center">
  <div class="ax-bg-white ax-rounded-lg ax-shadow-xl ax-p-6 ax-max-w-md">Centered modal</div>
</div>
```

## 📏 Responsive Variants

All utility classes support responsive breakpoint prefixes:

| Breakpoint        | Prefix | Minimum Width |
| ----------------- | ------ | ------------- |
| Small             | `sm:`  | `576px`       |
| Medium            | `md:`  | `768px`       |
| Large             | `lg:`  | `992px`       |
| Extra Large       | `xl:`  | `1200px`      |
| Extra Extra Large | `xxl:` | `1400px`      |

### Responsive Examples

```html
<!-- Small shadow on mobile, large on desktop -->
<div class="ax-shadow-sm ax-lg-shadow-lg">Responsive shadow</div>

<!-- Full width on mobile, auto width on desktop -->
<div class="ax-w-full ax-lg-w-auto">Responsive width</div>

<!-- Block on mobile, flex on tablet -->
<div class="ax-block ax-md-flex">Responsive display</div>

<!-- Hidden on mobile, visible on desktop -->
<div class="ax-hidden ax-md-block">Responsive visibility</div>

<!-- No border on mobile, border on desktop -->
<div class="ax-border-0 ax-md-border">Responsive border</div>

<!-- Small padding on mobile, large on desktop -->
<div class="ax-p-2 ax-lg-p-8">Responsive spacing</div>
```

## ✨ Advanced Features

### Border Gradients

```html
<div class="ax-border-gradient ax-border-gradient-primary ax-rounded-lg ax-p-6">
  Gradient border card
</div>

<style>
  .ax-border-gradient {
    border: 2px solid transparent;
    background:
      linear-gradient(white, white) padding-box,
      linear-gradient(90deg, #3b82f6, #8b5cf6) border-box;
  }

  .ax-border-gradient-primary {
    background:
      linear-gradient(white, white) padding-box,
      linear-gradient(90deg, var(--ax-color-primary), var(--ax-color-secondary)) border-box;
  }
</style>
```

### Custom Shadows with CSS Variables

```html
<div class="ax-custom-shadow ax-p-6">Custom shadow with CSS variables</div>

<style>
  .ax-custom-shadow {
    --ax-shadow-color: 0 0% 0%;
    --ax-shadow-strength: 1%;
    box-shadow:
      0 2px 8px hsl(var(--ax-shadow-color) / calc(var(--ax-shadow-strength) + 2%)),
      0 8px 16px hsl(var(--ax-shadow-color) / calc(var(--ax-shadow-strength) + 4%));
  }
</style>
```

### Background Patterns

```html
<!-- Grid pattern -->
<div class="ax-bg-grid ax-bg-grid-gray-200 ax-p-8">Grid pattern background</div>

<!-- Dot pattern -->
<div class="ax-bg-dots ax-bg-dots-gray-300 ax-p-8">Dot pattern background</div>

<!-- Noise texture -->
<div class="ax-bg-noise ax-bg-opacity-5 ax-p-8">Noise texture background</div>

<style>
  .ax-bg-grid {
    background-image:
      linear-gradient(to right, currentColor 1px, transparent 1px),
      linear-gradient(to bottom, currentColor 1px, transparent 1px);
    background-size: 20px 20px;
  }

  .ax-bg-dots {
    background-image: radial-gradient(currentColor 1px, transparent 1px);
    background-size: 20px 20px;
  }

  .ax-bg-noise {
    background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 200 200' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noiseFilter'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.65' numOctaves='3' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noiseFilter)'/%3E%3C/svg%3E");
  }
</style>
```

### Aspect Ratio with Content

```html
<!-- 16:9 video container -->
<div class="ax-aspect-video ax-bg-gray-900 ax-flex ax-items-center ax-justify-center">
  <div class="ax-text-white">Video Player</div>
</div>

<!-- Square avatar container -->
<div class="ax-aspect-square ax-rounded-full ax-overflow-hidden">
  <img src="avatar.jpg" alt="Avatar" class="ax-w-full ax-h-full ax-object-cover" />
</div>

<!-- Custom aspect ratio -->
<div class="ax-aspect-[4/3] ax-bg-gray-100">4:3 aspect ratio container</div>
```

## ♿ Accessibility

### Border Accessibility

- **Focus Indicators**: Use `ax-border-primary` or `ax-border-2` for interactive element focus states
- **Color Contrast**: Border colors maintain sufficient contrast against backgrounds
- **Non-Color Indicators**: Don't rely on border color alone to convey information

### Shadow Accessibility

- **Depth Perception**: Shadows help convey hierarchy but shouldn't be the only indicator
- **Reduced Motion**: Consider users with motion sensitivity when using animated shadows
- **Screen Readers**: Shadows don't interfere with screen reader navigation

### Background Accessibility

- **Color Contrast**: Background colors must maintain sufficient contrast with text colors
- **Text Readability**: Ensure text remains readable on gradient or patterned backgrounds
- **Reduced Transparency**: Consider users who need higher contrast when using opacity utilities

### Positioning Accessibility

- **Focus Order**: Absolutely positioned elements should maintain logical focus order
- **Screen Reader Navigation**: Fixed/sticky elements shouldn't interfere with screen reader navigation
- **Touch Targets**: Ensure positioned interactive elements have sufficient touch targets

## ⚙️ Customization

### CSS Custom Properties

```css
:root {
  /* Border Variables */
  --ax-border-width: 1px;
  --ax-border-width-0: 0;
  --ax-border-width-2: 2px;
  --ax-border-width-4: 4px;
  --ax-border-width-8: 8px;

  /* Border Colors */
  --ax-border-primary: var(--ax-color-primary);
  --ax-border-secondary: var(--ax-color-secondary);
  --ax-border-success: var(--ax-color-success);
  --ax-border-danger: var(--ax-color-danger);
  --ax-border-warning: var(--ax-color-warning);
  --ax-border-info: var(--ax-color-info);

  /* Border Radius */
  --ax-radius: 0.375rem;
  --ax-radius-md: 0.5rem;
  --ax-radius-lg: 0.75rem;
  --ax-radius-xl: 1rem;
  --ax-radius-2xl: 1.5rem;
  --ax-radius-full: 9999px;

  /* Shadow Variables */
  --ax-shadow-color: 0 0% 0%;
  --ax-shadow-strength: 5%;
  --ax-shadow-xs: 0 1px 2px hsl(var(--ax-shadow-color) / calc(var(--ax-shadow-strength) + 5%));
  --ax-shadow-sm:
    0 1px 3px hsl(var(--ax-shadow-color) / calc(var(--ax-shadow-strength) + 10%)),
    0 1px 2px hsl(var(--ax-shadow-color) / calc(var(--ax-shadow-strength) + 6%));
  --ax-shadow-md:
    0 4px 6px hsl(var(--ax-shadow-color) / calc(var(--ax-shadow-strength) + 10%)),
    0 2px 4px hsl(var(--ax-shadow-color) / calc(var(--ax-shadow-strength) + 6%));

  /* Background Colors */
  --ax-bg-primary: var(--ax-color-primary);
  --ax-bg-secondary: var(--ax-color-secondary);
  --ax-bg-success: var(--ax-color-success);
  --ax-bg-danger: var(--ax-color-danger);
  --ax-bg-warning: var(--ax-color-warning);
  --ax-bg-info: var(--ax-color-info);
  --ax-bg-dark: var(--ax-color-dark);
  --ax-bg-light: var(--ax-color-light);

  /* Sizing Scale */
  --ax-size-0: 0;
  --ax-size-px: 1px;
  --ax-size-0-5: 0.125rem;
  --ax-size-1: 0.25rem;
  --ax-size-2: 0.5rem;
  --ax-size-3: 0.75rem;
  --ax-size-4: 1rem;
  --ax-size-5: 1.25rem;
  --ax-size-6: 1.5rem;
  --ax-size-8: 2rem;
  --ax-size-10: 2.5rem;
  --ax-size-12: 3rem;
  --ax-size-16: 4rem;
  --ax-size-20: 5rem;
  --ax-size-24: 6rem;

  /* Z-index Scale */
  --ax-z-0: 0;
  --ax-z-10: 10;
  --ax-z-20: 20;
  --ax-z-30: 30;
  --ax-z-40: 40;
  --ax-z-50: 50;
  --ax-z-auto: auto;
}
```

### Custom Utility Generation

```css
/* Generate custom border utilities */
@each $color, $value in $theme-colors {
  .ax-border-#{$color} {
    border-color: $value;
  }

  .ax-bg-#{$color} {
    background-color: $value;
  }
}

/* Generate custom spacing utilities */
@for $i from 0 through 12 {
  .ax-w-#{$i} {
    width: $i * 0.25rem;
  }

  .ax-h-#{$i} {
    height: $i * 0.25rem;
  }
}

/* Generate custom shadow utilities */
@each $size, $value in $shadow-scale {
  .ax-shadow-#{$size} {
    box-shadow: $value;
  }
}
```

## 🎬 Animation Utilities (v2.3.0+)

> **Note:** Starting in v2.3.0, comprehensive animation utilities are available.

The Utilities module now includes:

- **20+ Preset Animations**: fade, slide, scale, rotate, bounce, shake, etc.
- **Timing Controls**: 11 durations, 9 delays, 9 easing variants
- **State Classes**: Enter/exit states for JavaScript integration
- **Staggered Animations**: Sequential animation delays

### Basic Usage

```html
<!-- Preset animations -->
<div class="ax-fade-in">Fade in</div>
<div class="ax-slide-up">Slide up</div>

<!-- With timing -->
<div class="ax-fade-in ax-duration-500 ax-delay-100">Custom timing</div>

<!-- Staggered list -->
<div>
  <div class="ax-fade-in ax-stagger-1">Item 1</div>
  <div class="ax-fade-in ax-stagger-2">Item 2</div>
  <div class="ax-fade-in ax-stagger-3">Item 3</div>
</div>
```

**Full Documentation:** [Animation Utilities](animations.md)

**Example:** [Animations Demo](../examples/animations.html)

---

## 📜 API Evolution

| Version    | Change Type   | Description                                                                 |
| ---------- | ------------- | --------------------------------------------------------------------------- |
| **v2.3.0** | Added Feature | Animation utilities with 20+ presets, timing controls, and state management |
| **v2.1.0** | Added Feature | Initial release of Utilities module with comprehensive atomic classes       |
| **v2.0.2** | Internal      | Added logical property utilities (`.ax-border-inline`, `.ax-border-block`)  |
| **v2.0.1** | Internal      | Transitioned to CSS logical properties for RTL support                      |
| **v2.0.0** | Major         | Initial v2 release with physical property utilities                         |
