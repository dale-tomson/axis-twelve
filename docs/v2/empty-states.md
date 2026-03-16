# Empty States

Empty state components for displaying when content is unavailable or actions are needed.

## Basic Usage

```html
<div class="ax-empty-state">
  <div class="ax-empty-state__icon">📦</div>
  <h3 class="ax-empty-state__title">No Items Found</h3>
  <p class="ax-empty-state__description">
    There are no items to display. Try adjusting your filters or add a new item.
  </p>
  <div class="ax-empty-state__actions">
    <button class="ax-btn ax-btn--primary">Add Item</button>
    <button class="ax-btn ax-btn--secondary">Clear Filters</button>
  </div>
</div>
```

## Variants

```html
<!-- Simple Empty State -->
<div class="ax-empty-state ax-empty-state--simple">
  <div class="ax-empty-state__icon">📭</div>
  <h3 class="ax-empty-state__title">No Messages</h3>
  <p class="ax-empty-state__description">Your inbox is empty</p>
</div>

<!-- Minimal Empty State -->
<div class="ax-empty-state ax-empty-state--minimal">
  <h3 class="ax-empty-state__title">No Results</h3>
  <p class="ax-empty-state__description">Try a different search term</p>
</div>
```

## Sizes

```html
<!-- Small -->
<div class="ax-empty-state ax-empty-state--sm">
  <div class="ax-empty-state__icon">🔍</div>
  <h3 class="ax-empty-state__title">No Results</h3>
  <p class="ax-empty-state__description">Try adjusting your search</p>
</div>

<!-- Medium (default) -->
<div class="ax-empty-state">
  <!-- content -->
</div>

<!-- Large -->
<div class="ax-empty-state ax-empty-state--lg">
  <div class="ax-empty-state__icon">📊</div>
  <h3 class="ax-empty-state__title">No Data Available</h3>
  <p class="ax-empty-state__description">
    There is no data to display at this time. Please check back later or contact support.
  </p>
  <div class="ax-empty-state__actions">
    <button class="ax-btn ax-btn--primary">Refresh Data</button>
  </div>
</div>
```

## Component Structure

```html
<div class="ax-empty-state">
  <!-- Icon (optional) -->
  <div class="ax-empty-state__icon">📦</div>

  <!-- Title (required) -->
  <h3 class="ax-empty-state__title">Title</h3>

  <!-- Description (optional) -->
  <p class="ax-empty-state__description">Description text</p>

  <!-- Actions (optional) -->
  <div class="ax-empty-state__actions">
    <button class="ax-btn">Action</button>
  </div>
</div>
```

## Use Cases

### Search Results

```html
<div class="ax-empty-state">
  <div class="ax-empty-state__icon">🔍</div>
  <h3 class="ax-empty-state__title">No Search Results</h3>
  <p class="ax-empty-state__description">
    We couldn't find anything matching "[search term]". Try different keywords or filters.
  </p>
  <div class="ax-empty-state__actions">
    <button class="ax-btn ax-btn--secondary">Clear Search</button>
    <button class="ax-btn ax-btn--secondary">Clear Filters</button>
  </div>
</div>
```

### Empty List

```html
<div class="ax-empty-state">
  <div class="ax-empty-state__icon">📋</div>
  <h3 class="ax-empty-state__title">No Items</h3>
  <p class="ax-empty-state__description">This list is empty. Add your first item to get started.</p>
  <div class="ax-empty-state__actions">
    <button class="ax-btn ax-btn--primary">Add Item</button>
  </div>
</div>
```

### Error State

```html
<div class="ax-empty-state">
  <div class="ax-empty-state__icon">⚠️</div>
  <h3 class="ax-empty-state__title">Unable to Load</h3>
  <p class="ax-empty-state__description">
    We're having trouble loading this content. Please try again.
  </p>
  <div class="ax-empty-state__actions">
    <button class="ax-btn ax-btn--primary">Retry</button>
    <button class="ax-btn ax-btn--secondary">Learn More</button>
  </div>
</div>
```

### Permission Denied

```html
<div class="ax-empty-state">
  <div class="ax-empty-state__icon">🔒</div>
  <h3 class="ax-empty-state__title">Access Denied</h3>
  <p class="ax-empty-state__description">
    You don't have permission to view this content. Contact your administrator for access.
  </p>
  <div class="ax-empty-state__actions">
    <button class="ax-btn ax-btn--primary">Request Access</button>
  </div>
</div>
```

## Customization

### Icon Customization

```css
.ax-empty-state__icon {
  background-color: #your-color;
  color: #your-text-color;
}
```

### Spacing

```html
<div class="ax-empty-state" style="padding: 3rem;">
  <!-- content -->
</div>
```

## Best Practices

1. **Clear Messaging**: Use clear, actionable language
2. **Visual Hierarchy**: Icon → Title → Description → Actions
3. **Actionable**: Provide next steps when possible
4. **Friendly Tone**: Keep messaging helpful, not alarming
5. **Consistent Icons**: Use recognizable icons for common states
