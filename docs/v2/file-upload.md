# File Upload

Drag-and-drop file upload components with preview and progress tracking.

## Basic Usage

```html
<div class="ax-file-upload">
  <input type="file" multiple />
  <div class="ax-file-upload__icon">📁</div>
  <h3 class="ax-file-upload__title">Upload Files</h3>
  <p class="ax-file-upload__description">Drag and drop files here or click to browse</p>
  <p class="ax-file-upload__hint">Supports: JPG, PNG, PDF (Max 10MB)</p>
</div>
```

## Sizes

```html
<!-- Small -->
<div class="ax-file-upload ax-file-upload--sm">
  <input type="file" />
  <div class="ax-file-upload__icon">📁</div>
  <h3 class="ax-file-upload__title">Upload File</h3>
  <p class="ax-file-upload__description">Drop files here</p>
</div>

<!-- Medium (default) -->
<div class="ax-file-upload">
  <!-- content -->
</div>

<!-- Large -->
<div class="ax-file-upload ax-file-upload--lg">
  <input type="file" multiple />
  <div class="ax-file-upload__icon">📁</div>
  <h3 class="ax-file-upload__title">Upload Your Files</h3>
  <p class="ax-file-upload__description">
    Drag and drop your files here or click to browse from your computer
  </p>
  <p class="ax-file-upload__hint">Maximum file size: 10MB per file</p>
</div>
```

## File Preview

```html
<div class="ax-file-upload">
  <input type="file" />
  <div class="ax-file-upload__icon">📁</div>
  <h3 class="ax-file-upload__title">Upload Files</h3>
  <p class="ax-file-upload__description">Drag and drop files here</p>
</div>

<!-- File Preview -->
<div class="ax-file-upload__preview">
  <div class="ax-file-upload__preview-icon">📄</div>
  <div class="ax-file-upload__preview-info">
    <div class="ax-file-upload__preview-name">document.pdf</div>
    <div class="ax-file-upload__preview-size">2.4 MB</div>
  </div>
  <button class="ax-file-upload__preview-remove">×</button>
</div>
```

## Multiple Files with Progress

```html
<div class="ax-file-upload">
  <input type="file" multiple />
  <div class="ax-file-upload__icon">📁</div>
  <h3 class="ax-file-upload__title">Upload Files</h3>
  <p class="ax-file-upload__description">Drag and drop files here</p>
</div>

<!-- File List -->
<div class="ax-file-upload__list">
  <!-- File Item 1 -->
  <div class="ax-file-upload__item">
    <div class="ax-file-upload__item-icon">📄</div>
    <div class="ax-file-upload__item-info">
      <div class="ax-file-upload__item-name">document.pdf</div>
      <div class="ax-file-upload__item-size">2.4 MB</div>
    </div>
    <div class="ax-file-upload__item-progress">
      <div class="ax-file-upload__item-bar" style="width: 75%;"></div>
    </div>
    <button class="ax-file-upload__item-remove">×</button>
  </div>

  <!-- File Item 2 -->
  <div class="ax-file-upload__item">
    <div class="ax-file-upload__item-icon">🖼️</div>
    <div class="ax-file-upload__item-info">
      <div class="ax-file-upload__item-name">image.jpg</div>
      <div class="ax-file-upload__item-size">1.2 MB</div>
    </div>
    <div class="ax-file-upload__item-progress">
      <div class="ax-file-upload__item-bar" style="width: 100%;"></div>
    </div>
    <button class="ax-file-upload__item-remove">×</button>
  </div>
</div>
```

## States

```html
<!-- Dragging State -->
<div class="ax-file-upload ax-file-upload--dragging">
  <input type="file" />
  <div class="ax-file-upload__icon">📁</div>
  <h3 class="ax-file-upload__title">Drop to Upload</h3>
  <p class="ax-file-upload__description">Release to upload your files</p>
</div>

<!-- Error State -->
<div class="ax-file-upload ax-file-upload--has-error">
  <input type="file" />
  <div class="ax-file-upload__icon">⚠️</div>
  <h3 class="ax-file-upload__title">Upload Error</h3>
  <p class="ax-file-upload__description">File type not supported</p>
</div>

<!-- Disabled State -->
<div class="ax-file-upload ax-file-upload--disabled">
  <input type="file" disabled />
  <div class="ax-file-upload__icon">📁</div>
  <h3 class="ax-file-upload__title">Upload Disabled</h3>
  <p class="ax-file-upload__description">File uploads are currently unavailable</p>
</div>
```

## JavaScript Example

```javascript
const fileUpload = document.querySelector('.ax-file-upload');
const fileInput = fileUpload.querySelector('input[type="file"]');
const dragZone = fileUpload.querySelector('.ax-file-upload');

// Drag and drop handlers
dragZone.addEventListener('dragover', (e) => {
  e.preventDefault();
  dragZone.classList.add('ax-file-upload--dragging');
});

dragZone.addEventListener('dragleave', () => {
  dragZone.classList.remove('ax-file-upload--dragging');
});

dragZone.addEventListener('drop', (e) => {
  e.preventDefault();
  dragZone.classList.remove('ax-file-upload--dragging');
  const files = e.dataTransfer.files;
  handleFiles(files);
});

fileInput.addEventListener('change', (e) => {
  handleFiles(e.target.files);
});

function handleFiles(files) {
  // Process uploaded files
  console.log('Files selected:', files);
}
```

## With Image Preview

```html
<div class="ax-file-upload__preview">
  <img src="preview.jpg" alt="Preview" class="ax-file-upload__preview-image" />
  <div class="ax-file-upload__preview-info">
    <div class="ax-file-upload__preview-name">photo.jpg</div>
    <div class="ax-file-upload__preview-size">1.8 MB</div>
  </div>
  <button class="ax-file-upload__preview-remove">×</button>
</div>
```

## Accept Specific File Types

```html
<div class="ax-file-upload">
  <!-- Images only -->
  <input type="file" accept="image/*" />

  <!-- PDF only -->
  <input type="file" accept=".pdf" />

  <!-- Multiple types -->
  <input type="file" accept=".jpg,.jpeg,.png,.gif" />
</div>
```

## Accessibility

```html
<div class="ax-file-upload">
  <input
    type="file"
    id="file-upload"
    aria-label="File upload"
    aria-describedby="file-upload-hint"
  />
  <label for="file-upload" class="ax-file-upload__label">
    <div class="ax-file-upload__icon">📁</div>
    <h3 class="ax-file-upload__title">Upload Files</h3>
    <p class="ax-file-upload__description">Drag and drop or click to browse</p>
    <p class="ax-file-upload__hint" id="file-upload-hint">Maximum file size: 10MB</p>
  </label>
</div>
```

## Best Practices

1. **Clear Instructions**: Tell users what file types are accepted
2. **Size Limits**: Display maximum file size
3. **Progress Feedback**: Show upload progress for large files
4. **Error Handling**: Provide clear error messages
5. **Preview**: Show file preview when possible
6. **Multiple Files**: Support batch uploads when appropriate
