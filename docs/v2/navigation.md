# Navigation Module

The `axis-navigation` module provides a comprehensive set of navigation components including navbar, tabs, breadcrumb, and pagination. These components are designed to create intuitive navigation experiences that are accessible, responsive, and consistent across all devices.

## 🚀 Installation

```html
<!-- Full Framework -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css" />

<!-- Module Only -->
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-navigation.min.css"
/>
```

## 💡 Basic Usage

### Navbar

Top navigation bar for website headers.

```html
<nav class="ax-navbar">
  <div class="ax-navbar__brand">
    <a href="/" class="ax-navbar__logo">MySite</a>
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

### Tabs

Horizontal navigation tabs for switching between content sections.

```html
<div class="ax-tabs">
  <div class="ax-tabs__header">
    <button class="ax-tabs__tab ax-tabs__tab--active" data-target="tab1">Tab 1</button>
    <button class="ax-tabs__tab" data-target="tab2">Tab 2</button>
    <button class="ax-tabs__tab" data-target="tab3">Tab 3</button>
  </div>
  <div class="ax-tabs__content">
    <div class="ax-tabs__panel" id="tab1">Content for tab 1</div>
    <div class="ax-tabs__panel" id="tab2">Content for tab 2</div>
    <div class="ax-tabs__panel" id="tab3">Content for tab 3</div>
  </div>
</div>
```

### Breadcrumb

Navigation trail showing current page location.

```html
<nav class="ax-breadcrumb" aria-label="breadcrumb">
  <ol class="ax-breadcrumb__list">
    <li class="ax-breadcrumb__item">
      <a href="/" class="ax-breadcrumb__link">Home</a>
    </li>
    <li class="ax-breadcrumb__item">
      <a href="/docs" class="ax-breadcrumb__link">Docs</a>
    </li>
    <li class="ax-breadcrumb__item ax-breadcrumb__item--active">Navigation</li>
  </ol>
</nav>
```

### Pagination

Navigation for multi-page content like search results or articles.

```html
<nav class="ax-pagination" aria-label="Page navigation">
  <ul class="ax-pagination__list">
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link ax-pagination__link--prev">Previous</a>
    </li>
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link">1</a>
    </li>
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link ax-pagination__link--active">2</a>
    </li>
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link">3</a>
    </li>
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link ax-pagination__link--next">Next</a>
    </li>
  </ul>
</nav>
```

## 🛠 Classes Reference

### Navbar Classes

| Class                     | Description                    | Type      |
| ------------------------- | ------------------------------ | --------- |
| `.ax-navbar`              | Main navbar container          | Component |
| `.ax-navbar__brand`       | Brand/logo area container      | Element   |
| `.ax-navbar__logo`        | Logo/text link                 | Element   |
| `.ax-navbar__nav`         | Navigation links container     | Element   |
| `.ax-navbar__item`        | Individual navigation item     | Element   |
| `.ax-navbar__link`        | Navigation link                | Element   |
| `.ax-navbar__toggle`      | Mobile menu toggle button      | Element   |
| `.ax-navbar__collapse`    | Collapsible menu container     | Element   |
| `.ax-navbar--fixed`       | Fixed position variant         | Modifier  |
| `.ax-navbar--dark`        | Dark theme variant             | Modifier  |
| `.ax-navbar--transparent` | Transparent background variant | Modifier  |

### Tabs Classes

| Class                   | Description                  | Type      |
| ----------------------- | ---------------------------- | --------- |
| `.ax-tabs`              | Main tabs container          | Component |
| `.ax-tabs__header`      | Tab buttons container        | Element   |
| `.ax-tabs__tab`         | Individual tab button        | Element   |
| `.ax-tabs__content`     | Tab content container        | Element   |
| `.ax-tabs__panel`       | Individual tab content panel | Element   |
| `.ax-tabs__tab--active` | Active tab state modifier    | Modifier  |
| `.ax-tabs--pills`       | Pill-shaped tab variant      | Modifier  |
| `.ax-tabs--underline`   | Underline indicator variant  | Modifier  |
| `.ax-tabs--vertical`    | Vertical tabs layout         | Modifier  |

### Breadcrumb Classes

| Class                          | Description                     | Type      |
| ------------------------------ | ------------------------------- | --------- |
| `.ax-breadcrumb`               | Breadcrumb navigation container | Component |
| `.ax-breadcrumb__list`         | Ordered list container          | Element   |
| `.ax-breadcrumb__item`         | Individual breadcrumb item      | Element   |
| `.ax-breadcrumb__link`         | Breadcrumb link                 | Element   |
| `.ax-breadcrumb__item--active` | Active (current) page item      | Modifier  |
| `.ax-breadcrumb__separator`    | Separator between items         | Element   |
| `.ax-breadcrumb--slash`        | Slash separator variant         | Modifier  |
| `.ax-breadcrumb--arrow`        | Arrow separator variant         | Modifier  |
| `.ax-breadcrumb--chevron`      | Chevron separator variant       | Modifier  |

### Pagination Classes

| Class                            | Description            | Type      |
| -------------------------------- | ---------------------- | --------- |
| `.ax-pagination`                 | Pagination container   | Component |
| `.ax-pagination__list`           | Page number list       | Element   |
| `.ax-pagination__item`           | Individual page item   | Element   |
| `.ax-pagination__link`           | Page number link       | Element   |
| `.ax-pagination__link--active`   | Active page link       | Modifier  |
| `.ax-pagination__link--prev`     | Previous page link     | Modifier  |
| `.ax-pagination__link--next`     | Next page link         | Modifier  |
| `.ax-pagination__link--disabled` | Disabled page link     | Modifier  |
| `.ax-pagination--rounded`        | Rounded button variant | Modifier  |
| `.ax-pagination--simple`         | Simple text variant    | Modifier  |

## 🎨 Variants

### Navbar Variants

```html
<!-- Fixed navbar -->
<nav class="ax-navbar ax-navbar--fixed">
  <!-- navbar content -->
</nav>

<!-- Dark navbar -->
<nav class="ax-navbar ax-navbar--dark">
  <!-- navbar content -->
</nav>

<!-- Transparent navbar -->
<nav class="ax-navbar ax-navbar--transparent">
  <!-- navbar content -->
</nav>

<!-- Centered navbar -->
<nav class="ax-navbar ax-navbar--centered">
  <div class="ax-navbar__brand">Logo</div>
  <ul class="ax-navbar__nav">
    <!-- centered links -->
  </ul>
</nav>
```

### Tabs Variants

```html
<!-- Pill tabs -->
<div class="ax-tabs ax-tabs--pills">
  <div class="ax-tabs__header">
    <button class="ax-tabs__tab ax-tabs__tab--active">Tab 1</button>
    <button class="ax-tabs__tab">Tab 2</button>
  </div>
</div>

<!-- Underline tabs -->
<div class="ax-tabs ax-tabs--underline">
  <div class="ax-tabs__header">
    <button class="ax-tabs__tab ax-tabs__tab--active">Tab 1</button>
    <button class="ax-tabs__tab">Tab 2</button>
  </div>
</div>

<!-- Vertical tabs -->
<div class="ax-tabs ax-tabs--vertical">
  <div class="ax-tabs__header">
    <button class="ax-tabs__tab ax-tabs__tab--active">Tab 1</button>
    <button class="ax-tabs__tab">Tab 2</button>
  </div>
  <div class="ax-tabs__content">
    <div class="ax-tabs__panel">Content 1</div>
    <div class="ax-tabs__panel">Content 2</div>
  </div>
</div>
```

### Breadcrumb Variants

```html
<!-- Slash separators -->
<nav class="ax-breadcrumb ax-breadcrumb--slash">
  <ol class="ax-breadcrumb__list">
    <li class="ax-breadcrumb__item"><a href="#">Home</a></li>
    <li class="ax-breadcrumb__item"><a href="#">Library</a></li>
    <li class="ax-breadcrumb__item ax-breadcrumb__item--active">Data</li>
  </ol>
</nav>

<!-- Arrow separators -->
<nav class="ax-breadcrumb ax-breadcrumb--arrow">
  <ol class="ax-breadcrumb__list">
    <li class="ax-breadcrumb__item"><a href="#">Home</a></li>
    <li class="ax-breadcrumb__item"><a href="#">Library</a></li>
    <li class="ax-breadcrumb__item ax-breadcrumb__item--active">Data</li>
  </ol>
</nav>

<!-- Chevron separators -->
<nav class="ax-breadcrumb ax-breadcrumb--chevron">
  <ol class="ax-breadcrumb__list">
    <li class="ax-breadcrumb__item"><a href="#">Home</a></li>
    <li class="ax-breadcrumb__item"><a href="#">Library</a></li>
    <li class="ax-breadcrumb__item ax-breadcrumb__item--active">Data</li>
  </ol>
</nav>
```

### Pagination Variants

```html
<!-- Rounded pagination -->
<nav class="ax-pagination ax-pagination--rounded">
  <ul class="ax-pagination__list">
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link ax-pagination__link--prev">‹</a>
    </li>
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link">1</a>
    </li>
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link ax-pagination__link--active">2</a>
    </li>
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link ax-pagination__link--next">›</a>
    </li>
  </ul>
</nav>

<!-- Simple pagination -->
<nav class="ax-pagination ax-pagination--simple">
  <ul class="ax-pagination__list">
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link ax-pagination__link--prev">Previous</a>
    </li>
    <li class="ax-pagination__item">
      <span class="ax-pagination__text">Page 2 of 10</span>
    </li>
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link ax-pagination__link--next">Next</a>
    </li>
  </ul>
</nav>
```

## 📏 Sizing

### Navbar Sizing

| Size        | Class            |
| ----------- | ---------------- |
| Small       | `.ax-navbar--sm` |
| Default     | (None)           |
| Large       | `.ax-navbar--lg` |
| Extra Large | `.ax-navbar--xl` |

```html
<nav class="ax-navbar ax-navbar--sm">Small Navbar</nav>
<nav class="ax-navbar ax-navbar--lg">Large Navbar</nav>
```

### Tabs Sizing

| Size    | Class          |
| ------- | -------------- |
| Small   | `.ax-tabs--sm` |
| Default | (None)         |
| Large   | `.ax-tabs--lg` |

```html
<div class="ax-tabs ax-tabs--sm">
  <!-- small tabs -->
</div>

<div class="ax-tabs ax-tabs--lg">
  <!-- large tabs -->
</div>
```

### Pagination Sizing

| Size    | Class                |
| ------- | -------------------- |
| Small   | `.ax-pagination--sm` |
| Default | (None)               |
| Large   | `.ax-pagination--lg` |

```html
<nav class="ax-pagination ax-pagination--sm">
  <!-- small pagination -->
</nav>

<nav class="ax-pagination ax-pagination--lg">
  <!-- large pagination -->
</nav>
```

## ✨ Advanced Features

### Navbar with Dropdowns

```html
<nav class="ax-navbar">
  <div class="ax-navbar__brand">Site</div>
  <ul class="ax-navbar__nav">
    <li class="ax-navbar__item">
      <a href="#" class="ax-navbar__link">Home</a>
    </li>
    <li class="ax-navbar__item ax-navbar__item--dropdown">
      <a href="#" class="ax-navbar__link">
        Products
        <span class="ax-navbar__chevron"></span>
      </a>
      <div class="ax-navbar__dropdown">
        <a href="#" class="ax-navbar__dropdown-link">Product 1</a>
        <a href="#" class="ax-navbar__dropdown-link">Product 2</a>
        <a href="#" class="ax-navbar__dropdown-link">Product 3</a>
      </div>
    </li>
  </ul>
</nav>
```

### Tabs with Icons

```html
<div class="ax-tabs">
  <div class="ax-tabs__header">
    <button class="ax-tabs__tab ax-tabs__tab--active">
      <span class="ax-icon">🏠</span>
      Home
    </button>
    <button class="ax-tabs__tab">
      <span class="ax-icon">⚙️</span>
      Settings
    </button>
    <button class="ax-tabs__tab">
      <span class="ax-icon">👤</span>
      Profile
    </button>
  </div>
</div>
```

### Breadcrumb with Icons

```html
<nav class="ax-breadcrumb">
  <ol class="ax-breadcrumb__list">
    <li class="ax-breadcrumb__item">
      <a href="/" class="ax-breadcrumb__link">
        <span class="ax-icon">🏠</span>
        Home
      </a>
    </li>
    <li class="ax-breadcrumb__item">
      <a href="/docs" class="ax-breadcrumb__link">
        <span class="ax-icon">📚</span>
        Documentation
      </a>
    </li>
    <li class="ax-breadcrumb__item ax-breadcrumb__item--active">
      <span class="ax-icon">🧭</span>
      Navigation
    </li>
  </ol>
</nav>
```

### Pagination with Page Info

```html
<nav class="ax-pagination">
  <div class="ax-pagination__info">Showing 11-20 of 100 results</div>
  <ul class="ax-pagination__list">
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link ax-pagination__link--prev">Previous</a>
    </li>
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link">1</a>
    </li>
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link ax-pagination__link--active">2</a>
    </li>
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link">3</a>
    </li>
    <li class="ax-pagination__item">
      <span class="ax-pagination__ellipsis">...</span>
    </li>
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link">10</a>
    </li>
    <li class="ax-pagination__item">
      <a href="#" class="ax-pagination__link ax-pagination__link--next">Next</a>
    </li>
  </ul>
</nav>
```

## ♿ Accessibility

### Navbar Accessibility

- **Semantic HTML**: Use `<nav>` element with `aria-label` when multiple navs exist
- **Keyboard Navigation**: All interactive elements are focusable and operable via keyboard
- **Mobile Menu**: Collapsible menus work with screen readers and keyboard
- **ARIA Attributes**: Proper `aria-expanded` for dropdowns and collapsible menus

### Tabs Accessibility

- **ARIA Roles**: Use `role="tablist"`, `role="tab"`, `role="tabpanel"`
- **Keyboard Navigation**: Arrow keys navigate between tabs, `Enter`/`Space` activates
- **Focus Management**: Active tab content is focusable and announced
- **Screen Readers**: Tab state changes are announced

### Breadcrumb Accessibility

- **ARIA Labels**: Use `aria-label="breadcrumb"` on nav element
- **Semantic Structure**: Use ordered list (`<ol>`) for hierarchical navigation
- **Screen Readers**: Current page marked with `aria-current="page"`
- **Separators**: Visual separators have `aria-hidden="true"`

### Pagination Accessibility

- **ARIA Labels**: Use `aria-label="Page navigation"` on nav element
- **Semantic Structure**: Use unordered list for page items
- **Screen Readers**: Current page marked with `aria-current="page"`
- **Disabled States**: Use `aria-disabled="true"` for inactive navigation

## ⚙️ Customization

### CSS Custom Properties

```css
.ax-navbar {
  /* Spacing */
  --ax-navbar-padding-y: var(--ax-spacing-md);
  --ax-navbar-padding-x: var(--ax-spacing-lg);
  --ax-navbar-gap: var(--ax-spacing-md);

  /* Colors */
  --ax-navbar-bg: #fff;
  --ax-navbar-color: var(--ax-color-dark);
  --ax-navbar-border-color: var(--ax-border-color);

  /* Dark variant */
  --ax-navbar-dark-bg: #1f2937;
  --ax-navbar-dark-color: #f9fafb;

  /* Fixed positioning */
  --ax-navbar-fixed-z-index: 1000;
}

.ax-tabs {
  /* Spacing */
  --ax-tabs-gap: var(--ax-spacing-md);
  --ax-tabs-padding: var(--ax-spacing-sm) var(--ax-spacing-md);

  /* Colors */
  --ax-tabs-bg: transparent;
  --ax-tabs-color: var(--ax-gray-600);
  --ax-tabs-active-bg: #fff;
  --ax-tabs-active-color: var(--ax-color-primary);
  --ax-tabs-border-color: var(--ax-border-color);

  /* Indicator */
  --ax-tabs-indicator-size: 2px;
  --ax-tabs-indicator-color: var(--ax-color-primary);
}

.ax-breadcrumb {
  /* Typography */
  --ax-breadcrumb-font-size: var(--ax-font-size-sm);

  /* Spacing */
  --ax-breadcrumb-gap: var(--ax-spacing-sm);

  /* Colors */
  --ax-breadcrumb-color: var(--ax-gray-600);
  --ax-breadcrumb-active-color: var(--ax-gray-900);
  --ax-breadcrumb-separator-color: var(--ax-gray-400);

  /* Separators */
  --ax-breadcrumb-slash: '/';
  --ax-breadcrumb-arrow: '→';
  --ax-breadcrumb-chevron: '›';
}

.ax-pagination {
  /* Spacing */
  --ax-pagination-gap: var(--ax-spacing-xs);
  --ax-pagination-padding: var(--ax-spacing-sm) var(--ax-spacing-md);

  /* Colors */
  --ax-pagination-bg: #fff;
  --ax-pagination-color: var(--ax-gray-700);
  --ax-pagination-active-bg: var(--ax-color-primary);
  --ax-pagination-active-color: #fff;
  --ax-pagination-hover-bg: var(--ax-gray-100);
  --ax-pagination-disabled-color: var(--ax-gray-400);

  /* Border radius */
  --ax-pagination-radius: 0.375rem;
  --ax-pagination-rounded-radius: 9999px;
}
```

## 📜 API Evolution

| Version    | Change Type   | Description                                                                        |
| ---------- | ------------- | ---------------------------------------------------------------------------------- |
| **v2.1.0** | Added Feature | Initial release of Navigation module with navbar, tabs, breadcrumb, and pagination |
| **v2.0.2** | Internal      | Improved mobile responsiveness and touch targets for all navigation components     |
| **v2.0.1** | Internal      | Transitioned to logical properties for RTL support                                 |
