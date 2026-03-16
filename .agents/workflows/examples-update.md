# Examples Update Workflow

This document describes when and how to update the examples in the `/examples` directory.

## When to Update Examples

### Required Updates

Update examples when:

- ✅ New component or utility is added
- ✅ Existing component behavior changes
- ✅ Class names are modified (e.g., `.ax-` prefix changes)
- ✅ New responsive breakpoints are added
- ✅ Accessibility improvements change usage

### Optional Updates

Consider updating when:

- Better demonstration method is discovered
- User feedback suggests confusion
- Documentation site examples are updated

## Examples Structure

### Directory Layout

```
examples/
├── README.md           # Index with all links
├── grid.html          # Grid system demo
├── flexbox.html       # Flexbox utilities
├── buttons.html       # Button components
├── forms.html         # Form inputs
├── modals.html        # Modal dialogs
├── tooltips.html      # Tooltips
├── tables.html        # Tables
└── cards.html         # Cards
```

### Example File Requirements

Each HTML example file must:

1. Use CDN version (unpkg.com/axis-twelve@2)
2. Be standalone (openable directly in browser)
3. Include working code snippets
4. Have clear visual demonstrations
5. Link back to README.md

## How to Update Examples

### Adding a New Example

1. **Create the file**:

   ```html
   <!DOCTYPE html>
   <html lang="en">
     <head>
       <meta charset="UTF-8" />
       <meta name="viewport" content="width=device-width, initial-scale=1.0" />
       <title>Component Name - Axis Twelve Example</title>
       <link rel="stylesheet" href="https://unpkg.com/axis-twelve@2/dist/axis-twelve.min.css" />
       <style>
         /* Demo-specific styles */
       </style>
     </head>
     <body>
       <h1>Component Name</h1>
       <p>Description</p>

       <!-- Demo content -->

       <p><a href="README.md">← Back to Examples</a></p>
     </body>
   </html>
   ```

2. **Update README.md**:
   Add link to new example in the list

3. **Test**:
   Open in browser to verify it works

### Updating Existing Example

1. **Check CDN version**:
   - Ensure using `@2` for latest v2
   - Or use specific version if needed

2. **Update demonstrations**:
   - Show new features
   - Remove outdated patterns
   - Add code snippets

3. **Verify styling**:
   - All classes still work
   - Visual appearance is correct
   - Responsive behavior works

## CDN Usage

### Version Specification

```html
<!-- Latest v2 -->
<link rel="stylesheet" href="https://unpkg.com/axis-twelve@2/dist/axis-twelve.min.css" />

<!-- Latest (any version) -->
<link rel="stylesheet" href="https://unpkg.com/axis-twelve/dist/axis-twelve.min.css" />

<!-- Specific version -->
<link rel="stylesheet" href="https://unpkg.com/axis-twelve@2.0.2/dist/axis-twelve.min.css" />
```

### Module Imports

```html
<!-- Individual modules -->
<link rel="stylesheet" href="https://unpkg.com/axis-twelve@2/dist/modules/axis-buttons.min.css" />
<link rel="stylesheet" href="https://unpkg.com/axis-twelve@2/dist/modules/axis-forms.min.css" />
```

## Quality Checklist

Before committing example updates:

- [ ] HTML is valid and well-formed
- [ ] All links work (including back to README)
- [ ] CDN version is correct
- [ ] Examples look polished
- [ ] Code snippets are accurate
- [ ] Accessibility is maintained
- [ ] Responsive design works
- [ ] No console errors

## Relationship to Documentation Site

The `/examples` directory is separate from the main documentation site:

- **Examples** (`/examples`): Standalone HTML demos, committed to repo
- **Docs Site** (external): Interactive documentation at `dale-tomson.github.io/axis-twelve-docs`

Examples should be kept in sync with the docs site, but serve a different purpose:

- Examples are for quick, standalone testing
- Docs site provides comprehensive interactive documentation

## Testing Examples

### Manual Testing

1. Open each HTML file in browser
2. Check all demos work
3. Verify responsive behavior
4. Test in multiple browsers

### Automated Testing

Future improvement: Add HTML validation and link checking to CI workflow
