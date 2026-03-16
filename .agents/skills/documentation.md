# Documentation Update Requirements

## When to Update Documentation

### MUST Update README.md When:

1. ✅ **Adding new CSS modules**
   - Add to module table
   - Include size (minified)
   - Add description

2. ✅ **Module sizes change**
   - Rebuild all modules: `pnpm build`
   - Get new sizes: `ls -lh dist/modules/*.min.css`
   - Update table in README

3. ✅ **New features added**
   - Add to features list
   - Update examples if needed

4. ✅ **Version is bumped**
   - Update version badge
   - Update module sizes
   - Verify examples

5. ✅ **Breaking changes**
   - Add migration guide
   - Update examples
   - Note breaking changes clearly

## How to Update Module Sizes

### Step 1: Build All Modules

```bash
pnpm build
```

### Step 2: Get Sizes

```bash
# All modules
ls -lh dist/modules/*.min.css

# Main bundle
ls -lh dist/*.min.css
```

### Step 3: Update README Table

Find the module table in README.md and update:

```markdown
### Core Modules

| Module | Size (min) | Description |
|--------|------------|-------------|
| **axis-core** | 4.3KB | Core & reset |
| **axis-layout** | 68KB | Grid, flexbox, etc. |
```

### Step 4: Update Bundle Size

```markdown
**Full Framework Bundle:** 82KB minified (108KB uncompressed)
```

## Documentation Structure

### README.md Structure

1. **Title & Badges**
   - Project name
   - Version badge
   - License badge
   - Size badge

2. **Description**
   - Brief overview
   - Key features

3. **Installation**
   - npm/pnpm commands
   - CDN links

4. **Available Modules**
   - Module table with sizes
   - Descriptions

5. **Quick Examples**
   - Common use cases
   - Code examples

6. **Usage**
   - Import methods
   - Configuration

7. **Customization**
   - SCSS variables
   - CSS custom properties

8. **Development**
   - Build commands
   - Project structure

9. **License & Links**

## Update Checklist

Before committing documentation changes:

- [ ] Module sizes are accurate
- [ ] All new modules documented
- [ ] Examples are up to date
- [ ] Links work
- [ ] Formatting is consistent
- [ ] Version is correct
- [ ] CHANGELOG is updated

## Common Mistakes

❌ **DON'T:**
- Forget to update module sizes
- Add modules without documentation
- Use outdated version numbers
- Break formatting
- Skip examples

✅ **DO:**
- Always update sizes on version bump
- Keep examples current
- Test all links
- Maintain consistent formatting
- Update CHANGELOG

## Examples

### Good Module Addition:

```markdown
### New Module: axis-utilities

| Module | Size (min) | Description |
|--------|------------|-------------|
| **axis-utilities** | 36KB | Borders, shadows, backgrounds |

**Usage:**
```html
<link rel="stylesheet" href="dist/modules/axis-utilities.min.css">
```

**Example:**
```html
<div class="ax-border ax-rounded-lg ax-shadow-md">
  Content with border, rounded corners, and shadow
</div>
```
```

### Bad Module Addition:

```markdown
### New Module

Added utilities module.
```

❌ Missing:
- Size
- Description
- Usage example
- Code example
