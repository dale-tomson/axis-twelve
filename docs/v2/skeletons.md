# Skeleton Loaders

Loading placeholders for content.

## Basic Usage

```html
<!-- Text skeleton -->
<div class="ax-skeleton ax-skeleton--text"></div>

<!-- Circle skeleton -->
<div class="ax-skeleton ax-skeleton--circle"></div>

<!-- Rectangle skeleton -->
<div class="ax-skeleton ax-skeleton--rect"></div>
```

## Shapes

```html
<!-- Text line -->
<div class="ax-skeleton ax-skeleton--text"></div>

<!-- Circle (avatar) -->
<div class="ax-skeleton ax-skeleton--circle"></div>

<!-- Rectangle (card/image) -->
<div class="ax-skeleton ax-skeleton--rect"></div>

<!-- Image placeholder -->
<div class="ax-skeleton ax-skeleton--image"></div>
```

## Sizes

```html
<!-- Small -->
<div class="ax-skeleton ax-skeleton--text ax-skeleton--sm"></div>
<div class="ax-skeleton ax-skeleton--circle ax-skeleton--sm"></div>

<!-- Medium (default) -->
<div class="ax-skeleton ax-skeleton--text"></div>
<div class="ax-skeleton ax-skeleton--circle ax-skeleton--md"></div>

<!-- Large -->
<div class="ax-skeleton ax-skeleton--text ax-skeleton--lg"></div>
<div class="ax-skeleton ax-skeleton--circle ax-skeleton--lg"></div>
```

## Width Utilities

```html
<div class="ax-skeleton ax-skeleton--w-1/4"></div>
<div class="ax-skeleton ax-skeleton--w-1/3"></div>
<div class="ax-skeleton ax-skeleton--w-1/2"></div>
<div class="ax-skeleton ax-skeleton--w-2/3"></div>
<div class="ax-skeleton ax-skeleton--w-3/4"></div>
<div class="ax-skeleton ax-skeleton--w-full"></div>
```

## Example: Card Skeleton

```html
<div class="ax-card">
  <div class="ax-skeleton ax-skeleton--rect ax-mb-md"></div>
  <div class="ax-skeleton-container">
    <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-3/4"></div>
    <div class="ax-skeleton ax-skeleton--text"></div>
    <div class="ax-skeleton ax-skeleton--text ax-skeleton--w-1/2"></div>
  </div>
</div>
```
