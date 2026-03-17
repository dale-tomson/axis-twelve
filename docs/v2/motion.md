# Motion Module

The `axis-motion` module provides animation utilities, transition controls, and motion preference management. It automatically respects user accessibility preferences while offering rich animation capabilities for enhanced user experiences.

## 🚀 Installation

```html
<!-- Full Framework -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/axis-twelve.min.css" />

<!-- Module Only -->
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/axis-twelve/dist/modules/axis-motion.min.css"
/>
```

## 💡 Basic Usage

### Animation Utilities

```html
<!-- Spin animation (loading indicator) -->
<div
  class="ax-animate-spin ax-w-6 ax-h-6 ax-border-2 ax-border-primary ax-border-t-transparent ax-rounded-full"
></div>

<!-- Pulse animation (attention grabber) -->
<div class="ax-animate-pulse ax-bg-gray-200 ax-w-full ax-h-4 ax-rounded"></div>

<!-- Bounce animation (notification) -->
<div class="ax-animate-bounce ax-w-6 ax-h-6 ax-bg-primary ax-rounded-full"></div>
```

### Transition Controls

```html
<!-- Smooth hover transition -->
<button class="ax-btn ax-btn--primary ax-transition-all ax-duration-200 hover:ax-scale-105">
  Hover Me
</button>

<!-- Staggered animations -->
<div class="ax-transition-all ax-duration-300 ax-delay-100">Delayed appearance</div>
```

### Motion Preferences

```html
<!-- Respect user preference -->
<div class="ax-motion-safe">
  <div class="ax-animate-fade-in">Only animates if user hasn't reduced motion</div>
</div>

<!-- Force no motion -->
<div class="ax-motion-reduce">Static content regardless of preference</div>
```

## 🛠 Classes Reference

### Animation Classes

| Class                  | Description                      | CSS Properties                                              |
| ---------------------- | -------------------------------- | ----------------------------------------------------------- |
| `.ax-animate-spin`     | Continuous rotation animation    | `animation: spin 1s linear infinite`                        |
| `.ax-animate-pulse`    | Gentle pulsing opacity animation | `animation: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite` |
| `.ax-animate-bounce`   | Bouncing animation               | `animation: bounce 1s infinite`                             |
| `.ax-animate-ping`     | Expanding ring animation         | `animation: ping 1s cubic-bezier(0, 0, 0.2, 1) infinite`    |
| `.ax-animate-fade-in`  | Fade in from transparent         | `animation: fadeIn 0.5s ease-out`                           |
| `.ax-animate-slide-in` | Slide in from offscreen          | `animation: slideIn 0.3s ease-out`                          |
| `.ax-animate-zoom-in`  | Zoom in from scaled down         | `animation: zoomIn 0.3s ease-out`                           |
| `.ax-animate-float`    | Gentle floating animation        | `animation: float 3s ease-in-out infinite`                  |
| `.ax-animate-shake`    | Shaking animation                | `animation: shake 0.5s ease-in-out`                         |

### Transition Classes

| Category     | Class                      | Description                                               |
| ------------ | -------------------------- | --------------------------------------------------------- |
| **Property** | `.ax-transition-all`       | Transition all properties                                 |
|              | `.ax-transition`           | Transition opacity, color, background-color, border-color |
|              | `.ax-transition-opacity`   | Transition opacity only                                   |
|              | `.ax-transition-transform` | Transition transforms only                                |
|              | `.ax-transition-none`      | No transitions                                            |
| **Duration** | `.ax-duration-75`          | 75ms duration                                             |
|              | `.ax-duration-100`         | 100ms duration                                            |
|              | `.ax-duration-150`         | 150ms duration                                            |
|              | `.ax-duration-200`         | 200ms duration                                            |
|              | `.ax-duration-300`         | 300ms duration                                            |
|              | `.ax-duration-500`         | 500ms duration                                            |
|              | `.ax-duration-700`         | 700ms duration                                            |
|              | `.ax-duration-1000`        | 1000ms duration                                           |
| **Timing**   | `.ax-ease-linear`          | Linear timing function                                    |
|              | `.ax-ease-in`              | Ease-in timing function                                   |
|              | `.ax-ease-out`             | Ease-out timing function                                  |
|              | `.ax-ease-in-out`          | Ease-in-out timing function                               |
| **Delay**    | `.ax-delay-75`             | 75ms delay                                                |
|              | `.ax-delay-100`            | 100ms delay                                               |
|              | `.ax-delay-150`            | 150ms delay                                               |
|              | `.ax-delay-200`            | 200ms delay                                               |
|              | `.ax-delay-300`            | 300ms delay                                               |
|              | `.ax-delay-500`            | 500ms delay                                               |
|              | `.ax-delay-700`            | 700ms delay                                               |
|              | `.ax-delay-1000`           | 1000ms delay                                              |

### Motion Preference Classes

| Class               | Description                                                   | Behavior                 |
| ------------------- | ------------------------------------------------------------- | ------------------------ |
| `.ax-motion-safe`   | Animates only when `prefers-reduced-motion: no-preference`    | Respects user preference |
| `.ax-motion-reduce` | Never animates, overrides all animations                      | Forces reduced motion    |
| `.ax-motion-auto`   | Default behavior, animates unless user prefers reduced motion | Standard behavior        |
| `.ax-reduce-motion` | Utility to immediately reduce/remove animations               | Manual control           |

## 🎨 Variants

### Loading Animations

```html
<!-- Spinning loader -->
<div
  class="ax-animate-spin ax-w-8 ax-h-8 ax-border-4 ax-border-gray-300 ax-border-t-primary ax-rounded-full"
></div>

<!-- Pulse skeleton loader -->
<div class="ax-animate-pulse">
  <div class="ax-bg-gray-200 ax-h-4 ax-rounded ax-w-3/4 ax-mb-2"></div>
  <div class="ax-bg-gray-200 ax-h-4 ax-rounded ax-w-1/2"></div>
</div>

<!-- Bouncing dots -->
<div class="ax-flex ax-gap-2">
  <div class="ax-animate-bounce ax-w-3 ax-h-3 ax-bg-primary ax-rounded-full"></div>
  <div
    class="ax-animate-bounce ax-w-3 ax-h-3 ax-bg-primary ax-rounded-full ax-animation-delay-150"
  ></div>
  <div
    class="ax-animate-bounce ax-w-3 ax-h-3 ax-bg-primary ax-rounded-full ax-animation-delay-300"
  ></div>
</div>
```

### Entry Animations

```html
<!-- Fade in on page load -->
<div class="ax-animate-fade-in ax-duration-500">Content fades in smoothly</div>

<!-- Slide in from left -->
<div class="ax-animate-slide-in ax-duration-300 ax-ease-out">Slides in from left</div>

<!-- Zoom in -->
<div class="ax-animate-zoom-in ax-duration-300 ax-ease-out">Zooms in from scaled down</div>

<!-- Staggered children -->
<div class="ax-stagger-children">
  <div class="ax-animate-fade-in ax-delay-0">Item 1</div>
  <div class="ax-animate-fade-in ax-delay-100">Item 2</div>
  <div class="ax-animate-fade-in ax-delay-200">Item 3</div>
</div>
```

### Interactive Animations

```html
<!-- Hover scale -->
<button
  class="ax-btn ax-btn--primary ax-transition-transform ax-duration-200 hover:ax-scale-105 active:ax-scale-95"
>
  Interactive Button
</button>

<!-- Hover slide -->
<div class="ax-group">
  <div class="ax-transition-transform ax-duration-300 group-hover:ax-translate-x-2">
    Slides on group hover
  </div>
</div>

<!-- Focus ring animation -->
<input class="ax-input ax-transition-all ax-duration-200 focus:ax-ring-2 focus:ax-ring-primary" />
```

### Notification Animations

```html
<!-- Ping notification -->
<div class="ax-relative">
  <div class="ax-w-3 ax-h-3 ax-bg-danger ax-rounded-full"></div>
  <div
    class="ax-absolute ax-inset-0 ax-animate-ping ax-w-3 ax-h-3 ax-bg-danger ax-rounded-full ax-opacity-75"
  ></div>
</div>

<!-- Shake for errors -->
<div class="ax-animate-shake ax-border ax-border-danger ax-p-4 ax-rounded">
  Error: Please check your input
</div>

<!-- Float for attention -->
<div class="ax-animate-float ax-bg-primary ax-text-white ax-p-4 ax-rounded ax-shadow-lg">
  Important notice
</div>
```

## 📏 Motion Preference Management

### Respecting User Preferences

```css
/* Automatic reduction for prefers-reduced-motion */
@media (prefers-reduced-motion: reduce) {
  .ax-motion-safe * {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}
```

### JavaScript Integration

```html
<button id="reduce-motion" class="ax-btn ax-btn--outline-secondary">Reduce Motion</button>

<script>
  const reduceMotionBtn = document.getElementById('reduce-motion');

  // Check current preference
  const prefersReducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)');
  const userReducedMotion = localStorage.getItem('reduced-motion') === 'true';

  // Apply preference
  if (prefersReducedMotion.matches || userReducedMotion) {
    document.documentElement.classList.add('ax-motion-reduce');
  }

  // Toggle preference
  reduceMotionBtn.addEventListener('click', () => {
    const isReduced = document.documentElement.classList.toggle('ax-motion-reduce');
    localStorage.setItem('reduced-motion', isReduced);
    reduceMotionBtn.textContent = isReduced ? 'Enable Motion' : 'Reduce Motion';
  });
</script>
```

## ✨ Advanced Features

### Custom Animation Keyframes

```html
<div class="ax-animate-custom ax-duration-1000 ax-ease-in-out ax-iteration-infinite">
  Custom animation
</div>

<style>
  @keyframes custom-animation {
    0% {
      transform: translateY(0) rotate(0);
    }
    50% {
      transform: translateY(-20px) rotate(180deg);
    }
    100% {
      transform: translateY(0) rotate(360deg);
    }
  }

  .ax-animate-custom {
    animation-name: custom-animation;
  }
</style>
```

### Animation Orchestration

```html
<!-- Staggered list animation -->
<ul class="ax-stagger-list">
  <li class="ax-animate-fade-in ax-delay-0">Item 1</li>
  <li class="ax-animate-fade-in ax-delay-75">Item 2</li>
  <li class="ax-animate-fade-in ax-delay-150">Item 3</li>
</ul>

<!-- Sequential animations -->
<div class="ax-animation-sequence">
  <div class="ax-animate-fade-in ax-duration-300">Step 1</div>
  <div class="ax-animate-slide-in ax-duration-300 ax-delay-300">Step 2</div>
  <div class="ax-animate-zoom-in ax-duration-300 ax-delay-600">Step 3</div>
</div>
```

### Scroll Triggered Animations

```html
<!-- Animate when element enters viewport -->
<div class="ax-animate-on-scroll ax-animate-fade-in">Fades in when scrolled into view</div>

<!-- Intersection Observer setup -->
<script>
  const observer = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.classList.add('ax-animate-fade-in');
        }
      });
    },
    { threshold: 0.1 }
  );

  document.querySelectorAll('.ax-animate-on-scroll').forEach((el) => {
    observer.observe(el);
  });
</script>
```

### Performance Optimized Animations

```html
<!-- GPU accelerated transforms -->
<div class="ax-transform-gpu ax-transition-transform ax-duration-300 hover:ax-scale-110">
  GPU accelerated animation
</div>

<!-- Will-change optimization -->
<div class="ax-will-change-transform">Optimized for transform animations</div>

<!-- Containment for performance -->
<div class="ax-contain-paint ax-contain-layout">Isolated animation container</div>
```

## ♿ Accessibility

### Motion Sensitivity

- **Automatic Reduction**: Respects `prefers-reduced-motion` media query
- **Manual Control**: Always provide option to disable animations
- **Safe Defaults**: Non-essential animations disabled when motion reduced

### Focus Management

- **Focus Animation**: Subtle focus indicators without excessive motion
- **Reduced Focus Motion**: Minimal animation for focus states when motion reduced
- **Keyboard Navigation**: All animations work with keyboard navigation

### Cognitive Considerations

- **Subtle Animations**: Avoid flashing, rapid, or unpredictable motion
- **Duration Limits**: Keep animations under 5 seconds for non-looping
- **Pause Controls**: Provide ability to pause looping animations

## ⚙️ Customization

### CSS Custom Properties

```css
:root {
  /* Animation Durations */
  --ax-duration-75: 75ms;
  --ax-duration-100: 100ms;
  --ax-duration-150: 150ms;
  --ax-duration-200: 200ms;
  --ax-duration-300: 300ms;
  --ax-duration-500: 500ms;
  --ax-duration-700: 700ms;
  --ax-duration-1000: 1000ms;

  /* Animation Timing Functions */
  --ax-ease-linear: linear;
  --ax-ease-in: cubic-bezier(0.4, 0, 1, 1);
  --ax-ease-out: cubic-bezier(0, 0, 0.2, 1);
  --ax-ease-in-out: cubic-bezier(0.4, 0, 0.2, 1);

  /* Animation Delays */
  --ax-delay-0: 0ms;
  --ax-delay-75: 75ms;
  --ax-delay-100: 100ms;
  --ax-delay-150: 150ms;
  --ax-delay-200: 200ms;
  --ax-delay-300: 300ms;
  --ax-delay-500: 500ms;

  /* Reduced Motion Overrides */
  --ax-reduced-motion-duration: 0.01ms;
  --ax-reduced-motion-scale: 1;
}

/* Reduced motion overrides */
@media (prefers-reduced-motion: reduce) {
  :root {
    --ax-duration-75: var(--ax-reduced-motion-duration);
    --ax-duration-100: var(--ax-reduced-motion-duration);
    --ax-duration-150: var(--ax-reduced-motion-duration);
    --ax-duration-200: var(--ax-reduced-motion-duration);
    --ax-duration-300: var(--ax-reduced-motion-duration);
    --ax-duration-500: var(--ax-reduced-motion-duration);
    --ax-duration-700: var(--ax-reduced-motion-duration);
    --ax-duration-1000: var(--ax-reduced-motion-duration);
  }
}

/* Custom animation keyframes */
@keyframes ax-spin {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}

@keyframes ax-pulse {
  0%,
  100% {
    opacity: 1;
  }
  50% {
    opacity: 0.5;
  }
}

@keyframes ax-bounce {
  0%,
  100% {
    transform: translateY(0);
  }
  50% {
    transform: translateY(-25%);
  }
}

/* Custom animation classes */
.ax-animate-custom-bounce {
  animation: ax-bounce 1s var(--ax-ease-in-out) infinite;
}

.ax-animate-custom-spin {
  animation: ax-spin 2s var(--ax-ease-linear) infinite;
}
```

### Custom Animation Configuration

```css
/* Extend animation durations */
:root {
  --ax-duration-slow: 1000ms;
  --ax-duration-slower: 2000ms;
  --ax-duration-slowest: 3000ms;
}

/* Add custom easing functions */
:root {
  --ax-ease-bounce: cubic-bezier(0.68, -0.55, 0.265, 1.55);
  --ax-ease-elastic: cubic-bezier(0.68, -0.6, 0.32, 1.6);
}

/* Custom animation utilities */
.ax-animate-bounce-slow {
  animation: ax-bounce 2s var(--ax-ease-bounce) infinite;
}

.ax-transition-elastic {
  transition-timing-function: var(--ax-ease-elastic);
}
```

## 📜 API Evolution

| Version    | Change Type   | Description                                                                                  |
| ---------- | ------------- | -------------------------------------------------------------------------------------------- |
| **v2.1.0** | Added Feature | Enhanced motion module with entry animations, scroll triggers, and performance optimizations |
| **v2.0.2** | Internal      | Improved reduced motion handling and accessibility compliance                                |
| **v2.0.1** | Internal      | Added motion preference utilities and transition timing controls                             |
| **v2.0.0** | Major         | Initial motion support with basic animations and reduced motion respect                      |
