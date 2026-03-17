# Animation Utilities

The Animation Utilities provide a comprehensive set of CSS-only animations, timing controls, and state management classes for creating engaging user interfaces.

## Installation

### Via CDN

```html
<link rel="stylesheet" href="https://unpkg.com/axis-twelve/dist/modules/axis-motion.min.css" />
```

### Via npm

```bash
npm install axis-twelve
```

```scss
@use 'axis-twelve/src/utilities/motion';
@use 'axis-twelve/src/utilities/keyframes';
@use 'axis-twelve/src/utilities/animations';
@use 'axis-twelve/src/utilities/timing';
```

## Overview

Axis Twelve provides a **CSS-only** approach to animations. This means:

- ✅ No JavaScript dependencies for basic animations
- ✅ Full control via CSS classes
- ✅ Easy integration with any JavaScript framework
- ✅ Respects user motion preferences
- ✅ GPU-accelerated for smooth performance

## Preset Animations

### Fade Animations

Smooth opacity transitions for subtle appearances.

#### Fade In

```html
<div class="ax-fade-in">Content fades in</div>
```

#### Fade Out

```html
<div class="ax-fade-out">Content fades out</div>
```

#### Fade In Up

```html
<div class="ax-fade-in-up">Content fades in while sliding up</div>
```

#### Fade In Down

```html
<div class="ax-fade-in-down">Content fades in while sliding down</div>
```

#### Fade In Left

```html
<div class="ax-fade-in-left">Content fades in while sliding from left</div>
```

#### Fade In Right

```html
<div class="ax-fade-in-right">Content fades in while sliding from right</div>
```

### Slide Animations

Direction-based slide animations for dynamic entrances.

#### Slide Up

```html
<div class="ax-slide-up">Content slides up</div>
```

#### Slide Down

```html
<div class="ax-slide-down">Content slides down</div>
```

#### Slide Left

```html
<div class="ax-slide-left">Content slides from left</div>
```

#### Slide Right

```html
<div class="ax-slide-right">Content slides from right</div>
```

### Scale Animations

Transform-based size changes.

#### Scale Up

```html
<div class="ax-scale-up">Content scales up</div>
```

#### Scale Down

```html
<div class="ax-scale-down">Content scales down</div>
```

### Rotate Animations

Continuous rotation effects.

#### Spin

```html
<div class="ax-spin"><span>🔄</span> Loading...</div>
```

#### Spin Reverse

```html
<div class="ax-spin-reverse"><span>🔄</span> Reverse spin</div>
```

### Attention Seekers

Animations that draw user attention.

#### Pulse

```html
<div class="ax-pulse"><span>●</span> Recording...</div>
```

#### Ping

```html
<div class="ax-ping"><span>●</span> Notification</div>
```

#### Bounce

```html
<div class="ax-bounce">Bouncing content</div>
```

#### Shake

```html
<div class="ax-shake">Error: Invalid input</div>
```

#### Swing

```html
<div class="ax-swing">Swinging content</div>
```

#### Wobble

```html
<div class="ax-wobble">Wobbly content</div>
```

#### Heartbeat

```html
<div class="ax-heartbeat">❤️ Like</div>
```

## Timing Utilities

Control animation speed, delay, and easing.

### Duration

Adjust how long animations take to complete.

```html
<!-- Fast animations -->
<div class="ax-fade-in ax-duration-75">Very fast (75ms)</div>
<div class="ax-fade-in ax-duration-100">Fast (100ms)</div>
<div class="ax-fade-in ax-duration-150">Normal (150ms)</div>
<div class="ax-fade-in ax-duration-200">Smooth (200ms)</div>
<div class="ax-fade-in ax-duration-300">Standard (300ms)</div>
<div class="ax-fade-in ax-duration-500">Slow (500ms)</div>
<div class="ax-fade-in ax-duration-700">Slower (700ms)</div>
<div class="ax-fade-in ax-duration-1000">Very slow (1000ms)</div>
<div class="ax-fade-in ax-duration-1500">Extra slow (1500ms)</div>
<div class="ax-fade-in ax-duration-2000">Dramatic (2000ms)</div>
```

### Delay

Stagger animations with delay.

```html
<div class="ax-fade-in ax-delay-75">Starts after 75ms</div>
<div class="ax-fade-in ax-delay-100">Starts after 100ms</div>
<div class="ax-fade-in ax-delay-150">Starts after 150ms</div>
<div class="ax-fade-in ax-delay-200">Starts after 200ms</div>
<div class="ax-fade-in ax-delay-300">Starts after 300ms</div>
<div class="ax-fade-in ax-delay-500">Starts after 500ms</div>
<div class="ax-fade-in ax-delay-700">Starts after 700ms</div>
<div class="ax-fade-in ax-delay-1000">Starts after 1000ms</div>
```

### Easing

Control the acceleration curve of animations.

```html
<div class="ax-fade-in ax-ease-linear">Linear easing</div>
<div class="ax-fade-in ax-ease-in">Ease in</div>
<div class="ax-fade-in ax-ease-out">Ease out</div>
<div class="ax-fade-in ax-ease-in-out">Ease in-out</div>
<div class="ax-fade-in ax-ease-bounce">Bounce effect</div>
<div class="ax-fade-in ax-ease-spring">Spring effect</div>
<div class="ax-fade-in ax-ease-smooth">Smooth</div>
<div class="ax-fade-in ax-ease-fast">Fast</div>
<div class="ax-fade-in ax-ease-slow">Slow</div>
```

## State Classes

Manage animation states for JavaScript integration.

### Enter/Exit States

```html
<!-- Initial state -->
<div class="ax-enter">Content to enter</div>

<!-- Active state (add via JS) -->
<div class="ax-enter-active">Content entering</div>

<!-- Done state -->
<div class="ax-enter-done">Content fully entered</div>

<!-- Exit sequence -->
<div class="ax-exit">Content to exit</div>
<div class="ax-exit-active">Content exiting</div>
<div class="ax-exit-done">Content fully exited</div>
```

### Fill Modes

Control what happens before/after animation.

```html
<div class="ax-fade-in ax-fill-both">Both before and after</div>
<div class="ax-fade-in ax-fill-forwards">Stay at end state</div>
<div class="ax-fade-in ax-fill-backwards">Show start state during delay</div>
<div class="ax-fade-in ax-fill-none">No fill</div>
```

## Staggered Animations

Animate multiple elements sequentially.

```html
<div>
  <div class="ax-fade-in ax-stagger-1">Item 1</div>
  <div class="ax-fade-in ax-stagger-2">Item 2</div>
  <div class="ax-fade-in ax-stagger-3">Item 3</div>
  <div class="ax-fade-in ax-stagger-4">Item 4</div>
  <div class="ax-fade-in ax-stagger-5">Item 5</div>
</div>
```

## JavaScript Integration

### Basic Animation Trigger

```html
<button id="animateBtn">Animate</button>
<div id="animatedBox" class="ax-fade-in">Content</div>

<script>
  const btn = document.getElementById('animateBtn');
  const box = document.getElementById('animatedBox');

  // Initially hide the box
  box.style.opacity = '0';

  btn.addEventListener('click', () => {
    box.style.opacity = '1';
    box.classList.add('ax-fade-in');
  });
</script>
```

### Enter/Exit with State Management

```html
<div id="content" class="ax-enter">Content to animate</div>
<button id="toggleBtn">Toggle</button>

<script>
  const content = document.getElementById('content');
  const toggleBtn = document.getElementById('toggleBtn');
  let isVisible = false;

  toggleBtn.addEventListener('click', () => {
    if (isVisible) {
      // Exit animation
      content.classList.remove('ax-enter-active');
      content.classList.add('ax-exit', 'ax-exit-active');
    } else {
      // Enter animation
      content.classList.remove('ax-exit');
      content.classList.add('ax-enter', 'ax-enter-active');
    }
    isVisible = !isVisible;
  });
</script>
```

### Sequential List Animation

```html
<ul id="list">
  <li class="ax-slide-up ax-stagger-1">Item 1</li>
  <li class="ax-slide-up ax-stagger-2">Item 2</li>
  <li class="ax-slide-up ax-stagger-3">Item 3</li>
</ul>

<script>
  const list = document.getElementById('list');
  const items = list.querySelectorAll('li');

  // Initially hide items
  items.forEach((item) => {
    item.style.opacity = '0';
  });

  // Trigger animation
  setTimeout(() => {
    items.forEach((item) => {
      item.style.opacity = '1';
    });
  }, 100);
</script>
```

## Performance Considerations

### GPU Acceleration

All animations use CSS transforms and opacity for GPU acceleration:

```css
/* Good - GPU accelerated */
.ax-fade-in {
  animation: fadeIn 0.3s ease;
}

/* Avoid - CPU intensive */
.ax-slow {
  animation: slowAnim 0.3s ease;
  /* Don't animate: width, height, margin, padding */
}
```

### Reduced Motion

Respect user preferences:

```html
<!-- Automatically disabled if user prefers reduced motion -->
<div class="ax-fade-in">Respects user preferences</div>
```

## Accessibility

### Motion Preferences

Animations automatically respect `prefers-reduced-motion`:

```scss
@media (prefers-reduced-motion: reduce) {
  *,
  *::before,
  *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
  }
}
```

### Focus States

Ensure animated elements maintain focus visibility:

```html
<button class="ax-fade-in">Focusable and animated</button>
```

## Component API

### Animation Classes

| Class               | Type   | Description          |
| ------------------- | ------ | -------------------- |
| `.ax-fade-in`       | Preset | Fade in animation    |
| `.ax-fade-out`      | Preset | Fade out animation   |
| `.ax-fade-in-up`    | Preset | Fade in from bottom  |
| `.ax-fade-in-down`  | Preset | Fade in from top     |
| `.ax-fade-in-left`  | Preset | Fade in from right   |
| `.ax-fade-in-right` | Preset | Fade in from left    |
| `.ax-slide-up`      | Preset | Slide up animation   |
| `.ax-slide-down`    | Preset | Slide down animation |
| `.ax-slide-left`    | Preset | Slide from right     |
| `.ax-slide-right`   | Preset | Slide from left      |
| `.ax-scale-up`      | Preset | Scale up animation   |
| `.ax-scale-down`    | Preset | Scale down animation |
| `.ax-spin`          | Preset | Continuous spin      |
| `.ax-pulse`         | Preset | Pulse animation      |
| `.ax-ping`          | Preset | Ping animation       |
| `.ax-bounce`        | Preset | Bounce animation     |
| `.ax-shake`         | Preset | Shake animation      |
| `.ax-swing`         | Preset | Swing animation      |
| `.ax-wobble`        | Preset | Wobble animation     |
| `.ax-heartbeat`     | Preset | Heartbeat animation  |

### Timing Classes

| Class                              | Value                          | Description   |
| ---------------------------------- | ------------------------------ | ------------- |
| `.ax-duration-75`                  | 75ms                           | Very fast     |
| `.ax-duration-100`                 | 100ms                          | Fast          |
| `.ax-duration-150`                 | 150ms                          | Normal        |
| `.ax-duration-200`                 | 200ms                          | Smooth        |
| `.ax-duration-300`                 | 300ms                          | Standard      |
| `.ax-duration-500`                 | 500ms                          | Slow          |
| `.ax-duration-700`                 | 700ms                          | Slower        |
| `.ax-duration-1000`                | 1000ms                         | Very slow     |
| `.ax-delay-75` to `.ax-delay-1000` | Various                        | Delay start   |
| `.ax-ease-linear`                  | `linear`                       | Linear easing |
| `.ax-ease-in`                      | `cubic-bezier(0.4, 0, 1, 1)`   | Ease in       |
| `.ax-ease-out`                     | `cubic-bezier(0, 0, 0.2, 1)`   | Ease out      |
| `.ax-ease-in-out`                  | `cubic-bezier(0.4, 0, 0.2, 1)` | Ease in-out   |

### State Classes

| Class                               | Description            |
| ----------------------------------- | ---------------------- |
| `.ax-enter`                         | Initial enter state    |
| `.ax-enter-active`                  | Active enter animation |
| `.ax-enter-done`                    | Completed enter state  |
| `.ax-exit`                          | Initial exit state     |
| `.ax-exit-active`                   | Active exit animation  |
| `.ax-exit-done`                     | Completed exit state   |
| `.ax-fill-both`                     | Fill mode both         |
| `.ax-fill-forwards`                 | Fill mode forwards     |
| `.ax-fill-backwards`                | Fill mode backwards    |
| `.ax-stagger-1` to `.ax-stagger-10` | Stagger delays         |

## Examples

### Loading Spinner

```html
<div class="ax-spin ax-duration-1000">
  <svg width="24" height="24" viewBox="0 0 24 24">
    <path
      d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8z"
    />
  </svg>
  Loading...
</div>
```

### Notification Badge

```html
<div class="ax-ping">
  <span
    style="display: inline-block; width: 8px; height: 8px; background: red; border-radius: 50%;"
  ></span>
</div>
```

### Error Shake

```html
<form>
  <input type="text" class="ax-input ax-shake" id="errorInput" />
  <p class="ax-form-error">Invalid input!</p>
</form>
```

## Browser Support

| Browser | Version |
| ------- | ------- |
| Chrome  | Latest  |
| Firefox | Latest  |
| Safari  | Latest  |
| Edge    | Latest  |
| Opera   | Latest  |

## Related Components

- [Motion Preferences](motion.md) - Reduced motion support
- [Toggle Switch](toggle-switch.md) - With loading state
- [Dark Mode](dark-mode.md) - Dark mode integration

## See Also

- [Animations Example](../examples/animations.html) - Interactive demo
- [Motion Example](../examples/motion.html) - Motion preferences demo
