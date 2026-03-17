# Layout Module

The `axis-layout` module is the foundation of the Axis Twelve framework. It provides a robust 12-column grid system, flexible flexbox utilities, and a set of spacing/typography defaults to ensure a consistent and responsive layout across all devices.

## 🚀 Installation

```html
<!-- Full Framework (Recommended) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css" />

<!-- Module Only -->
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-layout.min.css"
/>
```

## 💡 Core Concepts

Axis Twelve uses a **Mobile-First** approach. Classes applied without a breakpoint prefix affect all screen sizes, while breakpoint-specific classes (e.g., `.ax-col-md-6`) apply from that width upwards.

### Breakpoints

| Prefix | Minimum Width |
| ------ | ------------- |
| `sm`   | `576px`       |
| `md`   | `768px`       |
| `lg`   | `992px`       |
| `xl`   | `1200px`      |
| `xxl`  | `1400px`      |

---

## 🛠 Classes Reference

### Grid System

The grid is built using CSS Grid with a 12-column template.

| Class                         | Description                                                                  |
| ----------------------------- | ---------------------------------------------------------------------------- |
| `.ax-grid`                    | The main grid container. Sets `display: grid` and a default gap.             |
| `.ax-subgrid`                 | Enables subgrid support. Inherits parent grid tracks (with 12-col fallback). |
| `.ax-col-{1-12}`              | Column span for all screen sizes.                                            |
| `.ax-col-{breakpoint}-{1-12}` | Responsive column span (e.g., `.ax-col-md-6`).                               |
| `.ax-offset-{0-12}`           | Starts a column at a specific position.                                      |
| `.ax-container`               | Centers content with a responsive max-width.                                 |

### Flexbox Utilities

Quickly align and distribute items.

| Class                | Description                         |
| -------------------- | ----------------------------------- |
| `.ax-flex`           | Base flex container.                |
| `.ax-justify-center` | Centers items along the main axis.  |
| `.ax-items-center`   | Centers items along the cross axis. |
| `.ax-flex-column`    | Sets direction to column.           |

---

## 🎨 Layout Examples

### Basic 12-Column Grid

```html
<div class="ax-grid">
  <div class="ax-col-4">Column 1 (4/12)</div>
  <div class="ax-col-8">Column 2 (8/12)</div>
</div>
```

### Responsive Columns

Stack on mobile, side-by-side on desktop.

```html
<div class="ax-grid">
  <div class="ax-col-12 ax-col-md-6">Half on Desktop</div>
  <div class="ax-col-12 ax-col-md-6">Half on Desktop</div>
</div>
```

### Centering Content

```html
<div class="ax-flex ax-justify-center ax-items-center" style="height: 200px;">
  <div>I am centered!</div>
</div>
```

---

## 🎨 Layout Examples

### Basic 12-Column Grid

```html
<div class="ax-grid">
  <div class="ax-col-4">Column 1 (4/12)</div>
  <div class="ax-col-8">Column 2 (8/12)</div>
</div>
```

### Responsive Columns

Stack on mobile, side-by-side on desktop.

```html
<div class="ax-grid">
  <div class="ax-col-12 ax-col-md-6">Half on Desktop</div>
  <div class="ax-col-12 ax-col-md-6">Half on Desktop</div>
</div>
```

### Centering Content

```html
<div class="ax-flex ax-justify-center ax-items-center" style="height: 200px;">
  <div>I am centered!</div>
</div>
```

### Advanced Grid Examples

```html
<!-- Grid with gaps -->
<div class="ax-grid ax-gap-4">
  <div class="ax-col-6">Column with gap</div>
  <div class="ax-col-6">Column with gap</div>
</div>

<!-- Nested grid -->
<div class="ax-grid">
  <div class="ax-col-8">
    <div class="ax-grid ax-subgrid">
      <div class="ax-col-6">Nested column 1</div>
      <div class="ax-col-6">Nested column 2</div>
    </div>
  </div>
  <div class="ax-col-4">Sidebar</div>
</div>

<!-- Grid template areas -->
<div class="ax-grid ax-grid-areas-[header_header_header,sidebar_main_main,footer_footer_footer]">
  <div class="ax-area-header">Header</div>
  <div class="ax-area-sidebar">Sidebar</div>
  <div class="ax-area-main">Main Content</div>
  <div class="ax-area-footer">Footer</div>
</div>
```

### Flexbox Examples

```html
<!-- Flex container -->
<div class="ax-flex ax-flex-col ax-md-flex-row ax-gap-4">
  <div class="ax-flex-1">Flex item 1</div>
  <div class="ax-flex-1">Flex item 2</div>
  <div class="ax-flex-2">Flex item 3 (2x width)</div>
</div>

<!-- Flex wrapping -->
<div class="ax-flex ax-flex-wrap ax-gap-2">
  <div class="ax-w-32 ax-h-32">Item 1</div>
  <div class="ax-w-32 ax-h-32">Item 2</div>
  <!-- More items will wrap -->
</div>

<!-- Space between -->
<div class="ax-flex ax-justify-between ax-items-center">
  <div>Left item</div>
  <div>Right item</div>
</div>

<!-- Flex grow/shrink -->
<div class="ax-flex">
  <div class="ax-flex-none ax-w-32">Fixed width</div>
  <div class="ax-flex-1">Grows to fill space</div>
  <div class="ax-flex-none ax-w-32">Fixed width</div>
</div>
```

### Spacing Examples

```html
<!-- Margin utilities -->
<div class="ax-m-4">Equal margin on all sides</div>
<div class="ax-mx-auto ax-w-1/2">Centered with auto margins</div>
<div class="ax-mt-8 ax-mb-4">Large top margin, small bottom</div>

<!-- Padding utilities -->
<div class="ax-p-4">Equal padding on all sides</div>
<div class="ax-px-6 ax-py-3">Horizontal and vertical padding</div>
<div class="ax-pt-8 ax-pb-4 ax-pl-2 ax-pr-2">Individual side padding</div>

<!-- Gap utilities -->
<div class="ax-grid ax-gap-4">
  <div>Column 1</div>
  <div>Column 2</div>
</div>

<div class="ax-flex ax-flex-wrap ax-gap-x-4 ax-gap-y-2">
  <div>Item 1</div>
  <div>Item 2</div>
</div>
```

### Container Examples

```html
<!-- Default container -->
<div class="ax-container">
  <div class="ax-grid ax-gap-6">
    <div class="ax-col-12 ax-col-md-8">Main content</div>
    <div class="ax-col-12 ax-col-md-4">Sidebar</div>
  </div>
</div>

<!-- Fluid container (no max-width) -->
<div class="ax-container ax-container-fluid">Full width container</div>

<!-- Responsive container -->
<div class="ax-container ax-container-sm">Small container</div>
<div class="ax-container ax-container-md">Medium container</div>
<div class="ax-container ax-container-lg">Large container</div>
<div class="ax-container ax-container-xl">Extra large container</div>
<div class="ax-container ax-container-xxl">Extra extra large container</div>
```

## 📏 Spacing Utilities

Axis Twelve provides a comprehensive set of spacing utilities for margin and padding.

### Margin Utilities

| Class        | Description          | CSS Property                      |
| ------------ | -------------------- | --------------------------------- |
| `.ax-m-0`    | Margin: 0            | `margin: 0`                       |
| `.ax-m-1`    | Margin: 0.25rem      | `margin: 0.25rem`                 |
| `.ax-m-2`    | Margin: 0.5rem       | `margin: 0.5rem`                  |
| `.ax-m-3`    | Margin: 0.75rem      | `margin: 0.75rem`                 |
| `.ax-m-4`    | Margin: 1rem         | `margin: 1rem`                    |
| `.ax-m-auto` | Auto margin          | `margin: auto`                    |
| `.ax-mx-0`   | Horizontal margin: 0 | `margin-left: 0; margin-right: 0` |
| `.ax-my-0`   | Vertical margin: 0   | `margin-top: 0; margin-bottom: 0` |
| `.ax-mt-4`   | Top margin: 1rem     | `margin-top: 1rem`                |
| `.ax-mr-4`   | Right margin: 1rem   | `margin-right: 1rem`              |
| `.ax-mb-4`   | Bottom margin: 1rem  | `margin-bottom: 1rem`             |
| `.ax-ml-4`   | Left margin: 1rem    | `margin-left: 1rem`               |

### Padding Utilities

| Class      | Description           | CSS Property                        |
| ---------- | --------------------- | ----------------------------------- |
| `.ax-p-0`  | Padding: 0            | `padding: 0`                        |
| `.ax-p-1`  | Padding: 0.25rem      | `padding: 0.25rem`                  |
| `.ax-p-2`  | Padding: 0.5rem       | `padding: 0.5rem`                   |
| `.ax-p-3`  | Padding: 0.75rem      | `padding: 0.75rem`                  |
| `.ax-p-4`  | Padding: 1rem         | `padding: 1rem`                     |
| `.ax-px-0` | Horizontal padding: 0 | `padding-left: 0; padding-right: 0` |
| `.ax-py-0` | Vertical padding: 0   | `padding-top: 0; padding-bottom: 0` |
| `.ax-pt-4` | Top padding: 1rem     | `padding-top: 1rem`                 |
| `.ax-pr-4` | Right padding: 1rem   | `padding-right: 1rem`               |
| `.ax-pb-4` | Bottom padding: 1rem  | `padding-bottom: 1rem`              |
| `.ax-pl-4` | Left padding: 1rem    | `padding-left: 1rem`                |

### Spacing Scale

| Variable           | Value           | Use Case                        |
| ------------------ | --------------- | ------------------------------- |
| `--ax-spacing-xs`  | `0.25rem` (4px) | Tight spacing, icons            |
| `--ax-spacing-sm`  | `0.5rem` (8px)  | Small padding, tight margins    |
| `--ax-spacing-md`  | `1rem` (16px)   | Default spacing                 |
| `--ax-spacing-lg`  | `1.5rem` (24px) | Section spacing, card padding   |
| `--ax-spacing-xl`  | `3rem` (48px)   | Large sections, page margins    |
| `--ax-spacing-2xl` | `4rem` (64px)   | Hero sections, large containers |
| `--ax-spacing-3xl` | `6rem` (96px)   | Maximum spacing                 |

---

## 🌐 Logical Properties & RTL Support

Starting with **v2.0.1**, Axis Twelve has transitioned to **CSS Logical Properties**. This allows your layout to automatically adapt to different text directions (LTR and RTL).

### Logical Property Utilities

| Physical Class   | Logical Class    | Description          |
| ---------------- | ---------------- | -------------------- |
| `.ax-ml-4`       | `.ax-ms-4`       | Margin inline start  |
| `.ax-mr-4`       | `.ax-me-4`       | Margin inline end    |
| `.ax-pl-4`       | `.ax-ps-4`       | Padding inline start |
| `.ax-pr-4`       | `.ax-pe-4`       | Padding inline end   |
| `.ax-text-left`  | `.ax-text-start` | Text align start     |
| `.ax-text-right` | `.ax-text-end`   | Text align end       |
| `.ax-border-l`   | `.ax-border-is`  | Border inline start  |
| `.ax-border-r`   | `.ax-border-ie`  | Border inline end    |

### RTL Support Examples

```html
<!-- Physical properties (v2.0.0) -->
<div class="ax-ml-4 ax-pl-4 ax-text-left">Left-aligned in LTR, wrong in RTL</div>

<!-- Logical properties (v2.0.1+) -->
<div class="ax-ms-4 ax-ps-4 ax-text-start">Correctly aligned in both LTR and RTL</div>

<!-- Using dir attribute -->
<div dir="rtl">
  <div class="ax-ms-4 ax-text-start">This correctly aligns to the right in RTL</div>
</div>
```

### Bi-directional Grid

```html
<!-- Grid respects text direction -->
<div dir="rtl">
  <div class="ax-grid">
    <div class="ax-col-6">Column 1 (starts right)</div>
    <div class="ax-col-6">Column 2 (starts left)</div>
  </div>
</div>

<!-- Flexbox alignment with logical properties -->
<div class="ax-flex ax-justify-start ax-items-start">
  <!-- 'start' adjusts based on direction -->
</div>
```

## ⚙️ Customization

Override these variables in your `:root` or a specific container.

```css
:root {
  --ax-spacing-md: 1.25rem; /* Change the default gap/spacing */
  --ax-font-sans: 'Inter', sans-serif; /* Change the brand font */
}
```

---

## 📜 API Evolution

| Version    | Change Type   | Description                                                                                    |
| ---------- | ------------- | ---------------------------------------------------------------------------------------------- |
| **v2.0.2** | Added Utility | Added `.ax-subgrid` for nested elements to inherit parent grid tracks.                         |
| **v2.0.1** | Internal      | Refactored spacing and alignment to use **Logical Properties** (e.g., `padding-inline-start`). |
| **v2.0.0** | Major         | Initial v2 release with **Physical Properties** (e.g., `padding-left`).                        |
