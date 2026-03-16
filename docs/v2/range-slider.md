# Range Slider

Custom-styled range input controls for selecting values within a range.

## Basic Usage

```html
<div class="ax-range">
  <input type="range" min="0" max="100" value="50" />
</div>
```

## Sizes

```html
<!-- Small -->
<div class="ax-range ax-range--sm">
  <input type="range" min="0" max="100" value="25" />
</div>

<!-- Medium (default) -->
<div class="ax-range ax-range--md">
  <input type="range" min="0" max="100" value="50" />
</div>

<!-- Large -->
<div class="ax-range ax-range--lg">
  <input type="range" min="0" max="100" value="75" />
</div>
```

## Color Variants

```html
<!-- Primary (Blue) -->
<div class="ax-range ax-range--primary">
  <input type="range" min="0" max="100" value="50" />
</div>

<!-- Success (Green) -->
<div class="ax-range ax-range--success">
  <input type="range" min="0" max="100" value="50" />
</div>

<!-- Danger (Red) -->
<div class="ax-range ax-range--danger">
  <input type="range" min="0" max="100" value="50" />
</div>
```

## With Label and Value Display

```html
<div class="ax-range__wrapper">
  <label class="ax-range__label">
    <span>Volume</span>
    <span class="ax-range__value">50%</span>
  </label>
  <div class="ax-range ax-range--primary">
    <input type="range" min="0" max="100" value="50" />
  </div>
</div>
```

## With Markers

```html
<div class="ax-range">
  <input type="range" min="0" max="100" value="50" />
  <div class="ax-range__markers">
    <div class="ax-range__marker"></div>
    <div class="ax-range__marker"></div>
    <div class="ax-range__marker"></div>
    <div class="ax-range__marker"></div>
    <div class="ax-range__marker"></div>
  </div>
</div>
```

## Disabled State

```html
<div class="ax-range ax-range--disabled">
  <input type="range" min="0" max="100" value="50" disabled />
</div>
```

## Complete Example with Label

```html
<div class="ax-range__wrapper">
  <label class="ax-range__label">
    <span>Price Range</span>
    <span class="ax-range__value">$500</span>
  </label>
  <div class="ax-range ax-range--primary ax-range--md">
    <input type="range" min="0" max="1000" value="500" step="10" />
  </div>
</div>
```

## JavaScript Enhancement

```javascript
// Update value display
const range = document.querySelector('.ax-range input[type="range"]');
const valueDisplay = document.querySelector('.ax-range__value');

range.addEventListener('input', (e) => {
  valueDisplay.textContent = `$${e.target.value}`;

  // Update progress bar
  const percentage = ((e.target.value - e.target.min) / (e.target.max - e.target.min)) * 100;
  e.target.parentElement.style.setProperty('--range-progress', `${percentage}%`);
});
```

## Dual Range Slider

```html
<div class="ax-range">
  <input type="range" min="0" max="100" value="20" class="range-min" />
  <input type="range" min="0" max="100" value="80" class="range-max" />
</div>
```

## Accessibility

```html
<div class="ax-range__wrapper">
  <label class="ax-range__label" for="volume-slider"> Volume </label>
  <div class="ax-range">
    <input
      type="range"
      id="volume-slider"
      min="0"
      max="100"
      value="50"
      aria-label="Volume control"
      aria-valuemin="0"
      aria-valuemax="100"
      aria-valuenow="50"
    />
  </div>
  <span class="ax-range__value">50%</span>
</div>
```

## Browser Support

Range sliders work in all modern browsers. For older browser support, consider a polyfill.

## Best Practices

1. **Clear Labels**: Always label what the slider controls
2. **Value Display**: Show the current value
3. **Step Appropriately**: Use appropriate step values for precision
4. **Default Values**: Set sensible defaults
5. **Touch Friendly**: Ensure thumb is large enough for touch (use `--lg` for touch interfaces)
