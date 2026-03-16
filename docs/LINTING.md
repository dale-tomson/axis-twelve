# Linting and Code Style Guide

This document describes the linting configuration and code style conventions for Axis Twelve.

## Quick Start

```bash
# Check for issues
pnpm lint

# Auto-fix issues
pnpm lint:fix

# Format code
pnpm format

# Run all checks
pnpm check
```

## Configuration

### Stylelint

**Config file:** `.stylelintrc.json`

**Extends:** `stylelint-config-standard-scss`

**Plugins:**

- `stylelint-order` - Property ordering

### Prettier

**Config file:** `.prettierrc.json`

**Ignore file:** `.prettierignore`

## SCSS Conventions

### BEM Naming

All classes must follow BEM with `.ax-` prefix:

```scss
/* Block */
.ax-btn {
}
.ax-card {
}

/* Element */
.ax-card__title {
}
.ax-card__body {
}

/* Modifier */
.ax-btn--primary {
}
.ax-card--shadow {
}

/* Combined */
.ax-card__footer--sticky {
}
```

### Property Order

Properties should follow this order:

1. **Display & Positioning**

   ```scss
   display
   visibility
   overflow
   position
   inset-*
   z-index
   ```

2. **Box Model**

   ```scss
   width, height
   box-sizing
   margin, padding
   border
   ```

3. **Backgrounds**

   ```scss
   background-*
   ```

4. **Typography**

   ```scss
   color
   font-*
   text-*
   ```

5. **Layout**

   ```scss
   flex-*
   justify-content
   align-items
   gap
   grid-*
   ```

6. **Effects**
   ```scss
   opacity
   transform
   transition
   animation
   box-shadow
   filter
   ```

### Example

```scss
.ax-button {
  // Display & Positioning
  display: inline-flex;
  position: relative;
  z-index: 1;

  // Box Model
  width: auto;
  padding: 0.5rem 1rem;
  border: 1px solid transparent;
  border-radius: 0.25rem;

  // Background
  background-color: var(--ax-color-primary);

  // Typography
  color: white;
  font-size: 1rem;
  font-weight: 500;
  text-align: center;

  // Layout
  justify-content: center;
  align-items: center;
  gap: 0.5rem;

  // Effects
  transition: all 0.2s ease;

  &:hover {
    transform: translateY(-1px);
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }
}
```

## CSS Logical Properties

Always prefer logical properties over physical ones for RTL/LTR support:

| Use This              | Instead of       |
| --------------------- | ---------------- |
| `margin-inline-start` | `margin-left`    |
| `margin-inline-end`   | `margin-right`   |
| `padding-block-start` | `padding-top`    |
| `padding-block-end`   | `padding-bottom` |
| `inset-inline-start`  | `left`           |
| `inset-inline-end`    | `right`          |

## Disabled Rules

The following rules are disabled for practical reasons:

- `scss/no-global-function-names` - Allows Sass global functions
- `scss/operator-no-unspaced` - Relaxed spacing in operators
- `declaration-no-important` - Allows `!important` when necessary
- `no-descending-specificity` - Specificity management is manual
- `declaration-block-no-redundant-longhand-properties` - Allows explicit longhands
- `function-url-quotes` - Quotes in URLs optional
- `*-vendor-prefix` - Autoprefixer handles prefixes

## Git Hooks

Pre-commit hooks automatically run linting on staged SCSS files:

```bash
# Hooks are installed automatically on npm install
# Or manually:
bash project/scripts/install-hooks.sh
```

If linting fails, the commit is aborted.

## CI/CD Checks

All PRs must pass linting:

```yaml
# From .github/workflows/pr-checks.yml
- run: pnpm lint
```

## Common Issues

### Selector Pattern Error

**Error:** Class name doesn't match BEM pattern

**Wrong:**

```scss
.button {
} // Missing .ax- prefix
.ax_Button {
} // Invalid characters
.ax-btn--PRIMARY {
} // Should be lowercase
```

**Correct:**

```scss
.ax-btn {
}
.ax-btn--primary {
}
.ax-card__title {
}
```

### Property Order Error

**Wrong:**

```scss
.ax-box {
  color: red;
  display: flex; // Should be before color
  justify-content: center; // Should be after display
}
```

**Correct:**

```scss
.ax-box {
  display: flex;
  justify-content: center;
  color: red;
}
```

### Invalid Hex Color

**Wrong:**

```scss
color: #fff; // Valid shorthand
color: #ffffff; // Also valid
color: #fffff; // Invalid - 5 digits
```

## Best Practices

1. **Use mixins for repetition**

   ```scss
   @include respond-to('md') {
     // responsive styles
   }
   ```

2. **Use variables for consistency**

   ```scss
   color: $primary;
   margin: $spacer-md;
   ```

3. **Comment complex sections**

   ```scss
   // Modal backdrop with fade animation
   &__backdrop {
     // ...
   }
   ```

4. **Group related properties**

   ```scss
   // Layout
   display: flex;
   gap: 1rem;

   // Appearance
   background: $gray-100;
   border-radius: 4px;
   ```

5. **Run lint:fix before committing**
   ```bash
   pnpm lint:fix
   ```

## Editor Integration

### VS Code

Install extensions:

- Stylelint
- Prettier

Settings:

```json
{
  "editor.formatOnSave": true,
  "stylelint.validate": ["scss"],
  "stylelint.enable": true
}
```

### Other Editors

See [Stylelint documentation](https://stylelint.io/user-guide/integrations/editor-integrations/) for integration guides.

## Related Documentation

- [Build Process](BUILD.md)
- [SCSS Framework](../.agent/skills/scss-framework.md)
- [Project Structure](../README.md#project-structure)
