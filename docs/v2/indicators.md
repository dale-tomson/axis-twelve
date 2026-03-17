# Indicators Module

The `axis-indicators` module provides visual feedback components including alerts, badges, and progress indicators. These components help communicate status, highlight important information, and show progress to users in an accessible and visually consistent way.

## 🚀 Installation

```html
<!-- Full Framework -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css" />

<!-- Module Only -->
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-indicators.min.css"
/>
```

## 💡 Basic Usage

### Alerts

Alert banners for displaying important messages to users.

```html
<div class="ax-alert ax-alert--success">
  <div class="ax-alert__icon">✓</div>
  <div class="ax-alert__content">
    <div class="ax-alert__title">Success!</div>
    <div class="ax-alert__description">Your changes have been saved successfully.</div>
  </div>
</div>
```

### Badges

Small count and labeling components.

```html
<span class="ax-badge ax-badge--primary">New</span>
<span class="ax-badge ax-badge--success">5</span>
<span class="ax-badge ax-badge--warning">Warning</span>
```

### Progress Bars

Visual indicators for progress completion.

```html
<div class="ax-progress">
  <div class="ax-progress__bar" style="width: 65%"></div>
</div>
```

## 🛠 Classes Reference

### Alert Classes

| Class                    | Description                  | Type      |
| ------------------------ | ---------------------------- | --------- |
| `.ax-alert`              | Base alert component         | Component |
| `.ax-alert__icon`        | Icon container within alert  | Element   |
| `.ax-alert__content`     | Content wrapper for text     | Element   |
| `.ax-alert__title`       | Bold title text              | Element   |
| `.ax-alert__description` | Descriptive text             | Element   |
| `.ax-alert--success`     | Success state modifier       | Modifier  |
| `.ax-alert--danger`      | Danger/error state modifier  | Modifier  |
| `.ax-alert--warning`     | Warning state modifier       | Modifier  |
| `.ax-alert--info`        | Informational state modifier | Modifier  |
| `.ax-alert--dismissible` | Dismissible alert variant    | Modifier  |

### Badge Classes

| Class                  | Description             | Type      |
| ---------------------- | ----------------------- | --------- |
| `.ax-badge`            | Base badge component    | Component |
| `.ax-badge--primary`   | Primary color variant   | Modifier  |
| `.ax-badge--secondary` | Secondary color variant | Modifier  |
| `.ax-badge--success`   | Success color variant   | Modifier  |
| `.ax-badge--danger`    | Danger color variant    | Modifier  |
| `.ax-badge--warning`   | Warning color variant   | Modifier  |
| `.ax-badge--info`      | Info color variant      | Modifier  |
| `.ax-badge--outline`   | Outline style variant   | Modifier  |
| `.ax-badge--pill`      | Rounded pill shape      | Modifier  |

### Progress Classes

| Class                    | Description                   | Type      |
| ------------------------ | ----------------------------- | --------- |
| `.ax-progress`           | Progress container            | Component |
| `.ax-progress__bar`      | Progress indicator bar        | Element   |
| `.ax-progress__label`    | Text label showing percentage | Element   |
| `.ax-progress--striped`  | Striped animation variant     | Modifier  |
| `.ax-progress--animated` | Animated stripes variant      | Modifier  |
| `.ax-progress--success`  | Success color variant         | Modifier  |
| `.ax-progress--danger`   | Danger color variant          | Modifier  |
| `.ax-progress--warning`  | Warning color variant         | Modifier  |
| `.ax-progress--info`     | Info color variant            | Modifier  |

## 🎨 Variants

### Alert Variants

```html
<!-- Success alert -->
<div class="ax-alert ax-alert--success">
  <div class="ax-alert__icon">✓</div>
  <div class="ax-alert__content">Operation completed successfully</div>
</div>

<!-- Danger alert -->
<div class="ax-alert ax-alert--danger">
  <div class="ax-alert__icon">⚠️</div>
  <div class="ax-alert__content">An error occurred. Please try again.</div>
</div>

<!-- Warning alert -->
<div class="ax-alert ax-alert--warning">
  <div class="ax-alert__icon">⚠️</div>
  <div class="ax-alert__content">Your session will expire in 5 minutes.</div>
</div>

<!-- Info alert -->
<div class="ax-alert ax-alert--info">
  <div class="ax-alert__icon">ℹ️</div>
  <div class="ax-alert__content">New features are available in the settings.</div>
</div>
```

### Badge Variants

```html
<!-- Solid badges -->
<span class="ax-badge ax-badge--primary">Primary</span>
<span class="ax-badge ax-badge--secondary">Secondary</span>
<span class="ax-badge ax-badge--success">Success</span>

<!-- Outline badges -->
<span class="ax-badge ax-badge--outline ax-badge--primary">Outline</span>
<span class="ax-badge ax-badge--outline ax-badge--success">New</span>

<!-- Pill badges -->
<span class="ax-badge ax-badge--pill ax-badge--primary">Pill</span>
<span class="ax-badge ax-badge--pill ax-badge--danger">!</span>
```

### Progress Variants

```html
<!-- Basic progress -->
<div class="ax-progress">
  <div class="ax-progress__bar" style="width: 45%"></div>
</div>

<!-- Striped progress -->
<div class="ax-progress ax-progress--striped">
  <div class="ax-progress__bar" style="width: 75%"></div>
</div>

<!-- Animated striped progress -->
<div class="ax-progress ax-progress--striped ax-progress--animated">
  <div class="ax-progress__bar" style="width: 60%"></div>
</div>

<!-- Colored progress bars -->
<div class="ax-progress">
  <div class="ax-progress__bar ax-progress--success" style="width: 90%"></div>
</div>

<div class="ax-progress">
  <div class="ax-progress__bar ax-progress--warning" style="width: 40%"></div>
</div>
```

## 📏 Sizing

### Alert Sizing

| Size    | Class           |
| ------- | --------------- |
| Small   | `.ax-alert--sm` |
| Default | (None)          |
| Large   | `.ax-alert--lg` |

```html
<div class="ax-alert ax-alert--success ax-alert--sm">Small alert</div>
<div class="ax-alert ax-alert--info ax-alert--lg">Large alert</div>
```

### Badge Sizing

| Size    | Class           |
| ------- | --------------- |
| Small   | `.ax-badge--sm` |
| Default | (None)          |
| Large   | `.ax-badge--lg` |

```html
<span class="ax-badge ax-badge--primary ax-badge--sm">S</span>
<span class="ax-badge ax-badge--success">M</span>
<span class="ax-badge ax-badge--danger ax-badge--lg">L</span>
```

### Progress Sizing

| Size    | Class              | Height     |
| ------- | ------------------ | ---------- |
| Small   | `.ax-progress--sm` | `0.375rem` |
| Default | (None)             | `0.5rem`   |
| Large   | `.ax-progress--lg` | `0.75rem`  |

```html
<div class="ax-progress ax-progress--sm">
  <div class="ax-progress__bar" style="width: 50%"></div>
</div>

<div class="ax-progress ax-progress--lg">
  <div class="ax-progress__bar" style="width: 75%"></div>
</div>
```

## ✨ Advanced Features

### Dismissible Alerts

```html
<div class="ax-alert ax-alert--warning ax-alert--dismissible">
  <div class="ax-alert__content">This alert can be dismissed.</div>
  <button class="ax-alert__close" aria-label="Close">
    <span aria-hidden="true">×</span>
  </button>
</div>
```

### Badges with Icons

```html
<span class="ax-badge ax-badge--primary">
  <span class="ax-icon">⭐</span>
  Featured
</span>

<span class="ax-badge ax-badge--success">
  <span class="ax-icon">✓</span>
  5
</span>
```

### Progress with Labels

```html
<div class="ax-progress">
  <div class="ax-progress__bar" style="width: 65%">
    <span class="ax-progress__label">65%</span>
  </div>
</div>

<!-- Multiple stacked progress bars -->
<div class="ax-progress-stack">
  <div class="ax-progress">
    <div class="ax-progress__bar ax-progress--success" style="width: 40%"></div>
  </div>
  <div class="ax-progress">
    <div class="ax-progress__bar ax-progress--warning" style="width: 30%"></div>
  </div>
  <div class="ax-progress">
    <div class="ax-progress__bar ax-progress--danger" style="width: 20%"></div>
  </div>
</div>
```

### Alert with Actions

```html
<div class="ax-alert ax-alert--info">
  <div class="ax-alert__content">
    <div class="ax-alert__title">Update Available</div>
    <div class="ax-alert__description">Version 2.1.0 is now available.</div>
  </div>
  <div class="ax-alert__actions">
    <button class="ax-btn ax-btn--sm ax-btn--primary">Update Now</button>
    <button class="ax-btn ax-btn--sm ax-btn--outline-secondary">Remind Later</button>
  </div>
</div>
```

## ♿ Accessibility

### Alert Accessibility

- **ARIA Roles**: Use `role="alert"` or `role="status"` for live announcements
- **Focus Management**: Dismissible alerts maintain focus when closed
- **Screen Readers**: Icons have `aria-hidden="true"`, text is properly announced
- **Color Contrast**: All variants meet WCAG AA contrast requirements

### Badge Accessibility

- **Semantic Meaning**: Use badges for non-interactive status indicators
- **Screen Readers**: Numbers are announced as "badge" for context
- **Color + Text**: Never rely on color alone to convey meaning

### Progress Accessibility

- **ARIA Attributes**: Use `aria-valuemin`, `aria-valuemax`, `aria-valuenow`
- **Screen Readers**: Current value and maximum are announced
- **Live Regions**: For dynamically updating progress, use `aria-live="polite"`

## ⚙️ Customization

### CSS Custom Properties

```css
.ax-alert {
  /* Spacing */
  --ax-alert-padding: var(--ax-spacing-md);
  --ax-alert-gap: var(--ax-spacing-md);

  /* Colors */
  --ax-alert-bg: var(--ax-bg-surface);
  --ax-alert-border-color: var(--ax-border-color);
  --ax-alert-color: var(--ax-color-dark);

  /* Success variant */
  --ax-alert-success-bg: #d1fae5;
  --ax-alert-success-border-color: #10b981;
  --ax-alert-success-color: #065f46;

  /* Danger variant */
  --ax-alert-danger-bg: #fee2e2;
  --ax-alert-danger-border-color: #ef4444;
  --ax-alert-danger-color: #7f1d1d;
}

.ax-badge {
  /* Typography */
  --ax-badge-font-size: 0.75rem;
  --ax-badge-font-weight: var(--ax-font-weight-medium);

  /* Spacing */
  --ax-badge-padding-y: 0.25rem;
  --ax-badge-padding-x: 0.5rem;

  /* Colors */
  --ax-badge-bg: var(--ax-color-primary);
  --ax-badge-color: #fff;

  /* Pill shape */
  --ax-badge-pill-radius: 9999px;
}

.ax-progress {
  /* Dimensions */
  --ax-progress-height: 0.5rem;
  --ax-progress-radius: 9999px;

  /* Colors */
  --ax-progress-bg: var(--ax-gray-200);
  --ax-progress-bar-bg: var(--ax-color-primary);

  /* Animation */
  --ax-progress-transition: width 0.3s ease;
}
```

## 📜 API Evolution

| Version    | Change Type   | Description                                                                 |
| ---------- | ------------- | --------------------------------------------------------------------------- |
| **v2.1.0** | Added Feature | Initial release of Indicators module with alerts, badges, and progress bars |
| **v2.0.2** | Internal      | Improved color contrast and accessibility for all indicator components      |
| **v2.0.1** | Internal      | Transitioned to logical properties for RTL support                          |
