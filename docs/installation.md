# Installation

Get Axis Twelve up and running in your project.

## Via CDN

The simplest way to get started is using the CDN link:

```html
<link rel="stylesheet" href="https://cdn.example.com/axis-twelve/dist/axis-twelve.css">
```

## Via npm

Install Axis Twelve via npm:

```bash
npm install axis-twelve
```

Then import in your project:

```js
import 'axis-twelve/dist/axis-twelve.css';
```

## Manual Setup

1. Download the latest release from GitHub
2. Extract the files
3. Link the CSS file in your HTML:

```html
<link rel="stylesheet" href="path/to/axis-twelve/dist/axis-twelve.css">
```

## SCSS Setup

For advanced customization, use the modern `@use` syntax to import SCSS source files:

```scss
@use 'path/to/axis-twelve/src/scss/variables' as *;
@use 'path/to/axis-twelve/src/scss/mixins' as *;
@use 'path/to/axis-twelve/src/scss/style';
```

## Build Commands

If building from source, use **pnpm** as the package manager (fastest and most reliable):

```bash
# Install dependencies
pnpm install

# Compile SCSS to CSS (production)
pnpm build

# Watch for changes during development
pnpm watch

# Development mode with demo site
pnpm dev

# Start local development server
pnpm start

# Check code quality (lint + build)
pnpm check
```

### Code Quality Commands

```bash
# Lint SCSS files
pnpm lint

# Auto-fix SCSS style issues
pnpm lint:fix

# Format SCSS files
pnpm format
```

## Verify Installation

Create a simple HTML file to verify:

```html
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="path/to/axis-twelve.css">
</head>
<body>
  <div class="grid gap-md">
    <div class="col-6 p-4" style="background: #e7f1ff;">
      Grid Column 1
    </div>
    <div class="col-6 p-4" style="background: #f0f7ff;">
      Grid Column 2
    </div>
  </div>
</body>
</html>
```

If you see two equal columns side-by-side, Axis Twelve is working!

## Browser Support

Axis Twelve supports all modern browsers:

- Chrome/Edge 88+
- Firefox 85+
- Safari 14+
- Mobile browsers (iOS Safari 14+, Chrome Android)

## Troubleshooting

**Styles not applying?**
- Ensure the CSS file path is correct
- Check browser console for 404 errors
- Verify the CSS file wasn't minified incorrectly

**Grid not working?**
- Make sure you're using `.grid` class on the container
- Use `.col-*` classes for columns (col-1 through col-12)
- Verify the HTML structure is correct

**Need help?**
- Check the [Quick Start](quick-start.md) guide
- Review the [Grid System](grid.md) documentation
- See [Best Practices](best-practices.md) for common patterns
