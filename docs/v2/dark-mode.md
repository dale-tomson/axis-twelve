# Dark Mode Module

The `axis-dark-mode` module provides comprehensive dark mode support for Axis Twelve components using CSS custom properties. It enables automatic theme switching based on user preference or manual toggles while maintaining accessibility and visual consistency.

## 🚀 Installation

```html
<!-- Full Framework -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css" />

<!-- Module Only -->
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-dark-mode.min.css"
/>
```

## 💡 Basic Usage

### Manual Toggle

```html
<!-- Simple toggle button -->
<button class="ax-btn ax-btn--primary" onclick="document.body.classList.toggle('ax-dark')">
  Toggle Dark Mode
</button>

<!-- Dark mode container -->
<div class="ax-dark">
  <div class="ax-card ax-card--elevated">
    <div class="ax-card__title">Dark Mode Card</div>
    <div class="ax-card__body">This card automatically adapts to dark mode colors.</div>
  </div>
</div>
```

### CSS Classes

```html
<!-- Force dark mode on specific container -->
<div class="ax-dark">
  <div class="ax-alert ax-alert--info">This alert appears in dark mode colors</div>
</div>

<!-- Force light mode (override dark mode) -->
<div class="ax-dark-mode-off">
  <div class="ax-card">This card always appears in light mode colors</div>
</div>

<!-- Respect user preference -->
<div class="ax-dark-auto">Content that follows system preference</div>
```

## 🛠 Classes Reference

| Class                     | Description                                         | Type      |
| ------------------------- | --------------------------------------------------- | --------- |
| `.ax-dark`                | Applies dark mode colors to element and children    | Modifier  |
| `.ax-dark-mode-off`       | Forces light mode (overrides dark mode)             | Modifier  |
| `.ax-dark-auto`           | Respects system preference (`prefers-color-scheme`) | Modifier  |
| `.ax-dark-toggle`         | Ready-to-use dark mode toggle button                | Component |
| `.ax-dark--high-contrast` | High contrast dark mode variant                     | Modifier  |
| `.ax-dark--dim`           | Dimmed/darker dark mode variant                     | Modifier  |

## 🎨 Component Examples

### Cards in Dark Mode

```html
<div class="ax-dark">
  <div class="ax-card ax-card--elevated">
    <div class="ax-card__header">
      <div class="ax-card__title">Dark Mode Card</div>
    </div>
    <div class="ax-card__body">
      <p>Card content automatically adapts to dark colors.</p>
      <button class="ax-btn ax-btn--primary">Action</button>
    </div>
  </div>
</div>
```

### Forms in Dark Mode

```html
<div class="ax-dark">
  <div class="ax-form-group">
    <label class="ax-label" for="dark-input">Email Address</label>
    <input type="email" class="ax-input" id="dark-input" placeholder="name@example.com" />
    <div class="ax-form-text">We'll never share your email.</div>
  </div>

  <div class="ax-form-group">
    <label class="ax-checkbox">
      <input type="checkbox" />
      <span class="ax-checkbox__label">Remember me (dark mode)</span>
    </label>
  </div>
</div>
```

### Buttons in Dark Mode

```html
<div class="ax-dark">
  <div class="ax-btn-group">
    <button class="ax-btn ax-btn--primary">Primary</button>
    <button class="ax-btn ax-btn--outline-secondary">Outline</button>
    <button class="ax-btn ax-btn--ghost">Ghost</button>
  </div>
</div>
```

### Tables in Dark Mode

```html
<div class="ax-dark">
  <table class="ax-table ax-table--striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Role</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John Doe</td>
        <td>Developer</td>
        <td><span class="ax-badge ax-badge--success">Active</span></td>
      </tr>
    </tbody>
  </table>
</div>
```

### Navigation in Dark Mode

```html
<nav class="ax-navbar ax-dark">
  <div class="ax-navbar__brand">
    <a href="/" class="ax-navbar__logo">DarkSite</a>
  </div>
  <ul class="ax-navbar__nav">
    <li class="ax-navbar__item">
      <a href="/home" class="ax-navbar__link">Home</a>
    </li>
    <li class="ax-navbar__item">
      <a href="/about" class="ax-navbar__link">About</a>
    </li>
  </ul>
</nav>
```

## ✨ Advanced Features

### System Preference Detection

```html
<!-- Automatically follow system preference -->
<body class="ax-dark-auto">
  <!-- Content automatically switches based on system dark mode setting -->
</body>

<!-- JavaScript toggle with localStorage persistence -->
<button class="ax-dark-toggle" id="theme-toggle">
  <span class="ax-dark-toggle__icon">🌙</span>
  <span class="ax-dark-toggle__label">Toggle Theme</span>
</button>

<script>
  const themeToggle = document.getElementById('theme-toggle');
  const prefersDark = window.matchMedia('(prefers-color-scheme: dark)');

  // Check localStorage for saved preference
  const currentTheme = localStorage.getItem('theme') || (prefersDark.matches ? 'dark' : 'light');

  // Apply theme
  document.body.classList.toggle('ax-dark', currentTheme === 'dark');

  // Toggle theme
  themeToggle.addEventListener('click', () => {
    const isDark = document.body.classList.toggle('ax-dark');
    localStorage.setItem('theme', isDark ? 'dark' : 'light');
  });
</script>
```

### Partial Dark Mode

```html
<!-- Dark mode sidebar with light content -->
<div class="ax-layout">
  <aside class="ax-dark">
    <nav class="ax-nav">
      <!-- Dark mode navigation -->
    </nav>
  </aside>
  <main>
    <!-- Light mode content area -->
    <div class="ax-card">Light content next to dark sidebar</div>
  </main>
</div>

<!-- Dark mode footer only -->
<footer class="ax-dark">
  <div class="ax-container">
    <!-- Dark footer content -->
  </div>
</footer>
```

### High Contrast Dark Mode

```html
<div class="ax-dark ax-dark--high-contrast">
  <div class="ax-alert ax-alert--warning">
    <div class="ax-alert__content">High contrast dark mode for improved readability</div>
  </div>

  <button class="ax-btn ax-btn--primary">High Contrast Button</button>
</div>
```

### Theme Transition Animation

```html
<!-- Smooth theme transitions -->
<style>
  body {
    transition:
      background-color 0.3s ease,
      color 0.3s ease;
  }

  .ax-dark body {
    transition:
      background-color 0.3s ease,
      color 0.3s ease;
  }
</style>

<div class="ax-dark">
  <div class="ax-card" style="transition: all 0.3s ease;">Smoothly animated card</div>
</div>
```

## ♿ Accessibility

### Color Contrast

- **WCAG Compliance**: Dark mode colors meet WCAG 2.1 AA contrast requirements
- **High Contrast Mode**: `.ax-dark--high-contrast` variant for users who need higher contrast
- **Reduced Motion**: Respects `prefers-reduced-motion` for theme transitions

### User Preference

- **System Preference**: Respects `prefers-color-scheme` media query
- **User Control**: Always provide manual toggle option
- **Persistence**: Save user preference in localStorage when manually toggled

### Visual Indicators

- **Focus States**: Maintain visible focus indicators in both themes
- **Icon Contrast**: Icons have sufficient contrast in dark mode
- **Text Readability**: Ensure text remains readable in all theme variants

## ⚙️ Customization

### CSS Custom Properties

```css
/* Light mode defaults */
:root {
  --ax-bg-body: #ffffff;
  --ax-bg-surface: #f9fafb;
  --ax-color-dark: #111827;
  --ax-color-light: #6b7280;
  --ax-border-color: #d1d5db;
  --ax-primary: #3b82f6;
  --ax-secondary: #6b7280;
  --ax-success: #10b981;
  --ax-danger: #ef4444;
  --ax-warning: #f59e0b;
  --ax-info: #0ea5e9;
}

/* Dark mode overrides */
.ax-dark {
  --ax-bg-body: #111827;
  --ax-bg-surface: #1f2937;
  --ax-color-dark: #f9fafb;
  --ax-color-light: #9ca3af;
  --ax-border-color: #374151;
  --ax-primary: #60a5fa;
  --ax-secondary: #9ca3af;
  --ax-success: #34d399;
  --ax-danger: #f87171;
  --ax-warning: #fbbf24;
  --ax-info: #38bdf8;
}

/* High contrast dark mode */
.ax-dark.ax-dark--high-contrast {
  --ax-bg-body: #000000;
  --ax-bg-surface: #0a0a0a;
  --ax-color-dark: #ffffff;
  --ax-border-color: #ffffff;
  --ax-primary: #60a5fa;
}

/* Dimmed dark mode */
.ax-dark.ax-dark--dim {
  --ax-bg-body: #1e293b;
  --ax-bg-surface: #334155;
  --ax-color-dark: #e2e8f0;
}

/* Custom dark theme */
.ax-dark.custom-dark-theme {
  --ax-bg-body: #0f172a;
  --ax-bg-surface: #1e293b;
  --ax-color-dark: #cbd5e1;
  --ax-primary: #818cf8;
  --ax-border-color: #475569;
}
```

### Component-Specific Dark Mode Customization

````css
/* Custom dark mode for cards only */
.ax-dark .ax-card {
  --ax-card-bg: var(--ax-bg-surface);
  --ax-card-border-color: var(--ax-border-color);
  --ax-card-color: var(--ax-color-dark);
}

/* Custom dark mode for buttons */
.ax-dark .ax-btn--primary {
  --ax-btn-primary-bg: var(--ax-primary);
  --ax-btn-primary-color: #ffffff;
  --ax-btn-primary-hover-bg: color-mix(in srgb, var(--ax-primary) 90%, black);
}

/* Custom dark mode for forms */
.ax-dark .ax-input {
  --ax-input-bg: var(--ax-bg-surface);
  --ax-input-border-color: var(--ax-border-color);
  --ax-input-color: var(--ax-color-dark);
  --ax-input-placeholder-color: var(--ax-color-light);
}

/* Custom dark mode for alerts */
.ax-alert--success {
  --ax-alert-success-bg: color-mix(in srgb, var(--ax-success) 10%, transparent);
  --ax-alert-success-border-color: var(--ax-success);
  --ax-alert-success-color: var(--ax-success);
}

## 🎨 Component Dark Mode Overrides (v2.3.0+)

> **Note:** Starting in v2.3.0, all components include built-in dark mode support with automatic color adaptation.

### Automatic Adaptation

All components automatically adapt when `.ax-dark` is applied:

```html
<html class="ax-dark">
  <!-- Forms adapt automatically -->
  <input type="text" class="ax-input" placeholder="Dark mode input">

  <!-- Cards adapt automatically -->
  <div class="ax-card">
    <h3>Dark card</h3>
  </div>

  <!-- Tables adapt automatically -->
  <table class="ax-table">
    <tr><td>Dark cell</td></tr>
  </table>
</html>
````

### Component Coverage

The following components include dark mode overrides:

**Forms:**

- Inputs, selects, textareas
- Checkboxes and radios
- File uploads
- Range sliders
- Toggle switches (v2.3.0+)
- Star ratings (v2.3.0+)

**Layout:**

- Cards
- Tables
- Navigation bars

**Overlays:**

- Modals
- Tooltips
- Toasts
- Dropdowns

**Interactive:**

- Buttons (all variants)
- Accordions
- Dropdowns

**Indicators:**

- Badges (all variants)
- Alerts (all variants)
- Progress bars
- Skeletons
- Empty states

### CSS Custom Properties

Dark mode uses 25+ CSS custom properties for granular control:

```scss
// Backgrounds
--ax-bg-body: #111827;
--ax-bg-surface: #1f2937;
--ax-bg-surface-2: #374151;
--ax-bg-surface-3: #4b5563;

// Text
--ax-text-primary: #f9fafb;
--ax-text-secondary: #d1d5db;
--ax-text-tertiary: #9ca3af;

// Borders
--ax-border-primary: #374151;
--ax-border-secondary: #4b5563;

// Semantic colors
--ax-color-primary: #60a5fa;
--ax-color-success: #34d399;
--ax-color-danger: #f87171;
--ax-color-warning: #fbbf24;
--ax-color-info: #22d3ee;
```

### Detailed Documentation

For comprehensive information on component-specific dark mode behavior:

- **[Dark Mode Component Overrides](dark-mode-overrides.md)** - Complete guide
- [Forms Documentation](forms.md) - Form components dark mode
- [Toggle Switch Documentation](toggle-switch.md) - Toggle dark mode
- [Rating Documentation](rating.md) - Rating dark mode

```

## 📜 API Evolution

| Version | Change Type | Description |
| ------- | ----------- | ----------- |
| **v2.3.0** | Added Feature | System preference detection, 25+ CSS custom properties, component-specific overrides for all components |
| **v2.1.0** | Added Feature | Enhanced dark mode with high contrast and dim variants |
| **v2.0.2** | Internal | Improved color contrast ratios for accessibility |
| **v2.0.1** | Internal | Transitioned to CSS custom properties for theming |
| **v2.0.0** | Major | Initial dark mode support with basic color switching |
```
