# Phase 2: Dark Mode, Motion, Toasts, and Skeletons

## Overview

This PR implements Phase 2 features adding dark mode support, motion preferences, toast notifications, and skeleton loaders to the Axis Twelve framework.

## 🎉 New Features

### 1. Dark Mode Support
- Manual toggle via `.ax-dark` class
- CSS custom properties for seamless theme switching
- Automatic component adjustments (cards, modals, inputs, buttons)
- Dark mode color palette

### 2. Motion Preferences
- Respects `prefers-reduced-motion` media query
- Animation utilities with automatic fallbacks
- Transition utilities with motion awareness
- Accessibility-first approach

### 3. Toast Notifications
- 4 semantic variants (success, error, warning, info)
- Multiple positioning options (top-right, top-left, bottom-right, bottom-left, top-center)
- Auto-dismiss support
- Close button
- Fully accessible

### 4. Skeleton Loaders
- Shimmer animation
- Multiple shapes (text, circle, rectangle, image)
- Width utilities (1/4, 1/3, 1/2, 2/3, 3/4, full)
- Size variants (sm, md, lg)
- Respects motion preferences
- Dark mode support

## 📦 New Files

### Source Files
- `src/06-utilities/_dark-mode.scss` - Dark mode support
- `src/06-utilities/_motion.scss` - Motion preferences
- `src/04-ui-components/indicators/_toasts.scss` - Toast notifications
- `src/04-ui-components/indicators/_skeletons.scss` - Skeleton loaders
- `src/builds/axis-phase2.scss` - Phase 2 build file

### Documentation
- `docs/v2/dark-mode.md` - Dark mode usage guide
- `docs/v2/motion.md` - Motion preferences guide
- `docs/v2/toasts.md` - Toast notifications API
- `docs/v2/skeletons.md` - Skeleton loaders guide

## 🔧 Configuration Updates

### package.json
- Added `./phase2` export
- Added `./phase2.css` export

## 📊 Module Sizes (Minified)

| Module | Size | Description |
|--------|------|-------------|
| axis-phase2 | 3.9KB | Dark mode, motion, toasts, skeletons |

## 💡 Usage Examples

### Dark Mode
```html
<button onclick="document.body.classList.toggle('ax-dark')">Toggle</button>
```

### Motion
```html
<div class="ax-motion-safe">Animated</div>
<div class="ax-animate-spin">Spinning</div>
```

### Toasts
```html
<div class="ax-toasts ax-toasts--top-right">
  <div class="ax-toast ax-toast--success">Success!</div>
</div>
```

### Skeletons
```html
<div class="ax-skeleton ax-skeleton--text"></div>
```

## 🧪 Testing

- ✅ Browser compatibility
- ✅ Accessibility (motion preferences, keyboard navigation)
- ✅ Dark mode compatibility
- ✅ Responsive design
- ✅ Build process
- ✅ Linting

## 📚 Documentation

- Component documentation in `docs/v2/`
- Usage examples included
- API documentation
- Accessibility notes

## 🎯 Browser Support

- **Dark Mode**: All modern browsers
- **Motion Preferences**: Safari 13.4+, Chrome 76+, Firefox 67+
- **Toast Notifications**: All modern browsers
- **Skeleton Loaders**: All modern browsers

## ♿ Accessibility

- ✅ Respects `prefers-reduced-motion`
- ✅ Keyboard accessible toasts
- ✅ Semantic color variants
- ✅ Focus management
- ✅ Reduced motion fallbacks

## 📝 Documentation Cleanup

Removed non-framework files to keep documentation clean and focused.

## 🔗 Related Issues

Closes #(issue_number)

## ✅ Checklist

- [x] Code follows project conventions
- [x] All builds passing
- [x] Linting passes
- [x] Documentation added
- [x] Examples provided
- [x] Browser support verified
- [x] Accessibility considered
- [x] Module sizes documented
- [x] Package exports updated
- [x] No breaking changes

---

**Type of Change:** ✨ Minor release (new features)  
**Breaking Changes:** None  
**Migration Required:** No  
**Browser Support:** Modern browsers (2020+)  
**Accessibility:** WCAG 2.1 compliant
