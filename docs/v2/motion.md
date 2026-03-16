# Motion Preferences

Respects user motion preferences and provides animation utilities.

## Reduced Motion

Automatically respects `prefers-reduced-motion`:

```css
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}
```

## Animation Utilities

```html
<!-- Spin animation -->
<div class="ax-animate-spin"></div>

<!-- Pulse animation -->
<div class="ax-animate-pulse"></div>

<!-- Bounce animation -->
<div class="ax-animate-bounce"></div>
```

## Motion Utilities

```html
<!-- Respects motion preferences -->
<div class="ax-motion-safe">
  Animated content
</div>

<!-- No transition -->
<div class="ax-transition-none">
  Static content
</div>
```

## Transition Controls

```html
<!-- Duration -->
<div class="ax-duration-150"></div>
<div class="ax-duration-300"></div>

<!-- Delay -->
<div class="ax-delay-75"></div>
<div class="ax-delay-150"></div>
```
