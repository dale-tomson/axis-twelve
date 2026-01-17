# Axis Twelve Docs Viewer

An interactive, Node.js powered documentation and examples explorer for the Axis Twelve modular CSS framework.

## 🚀 Getting Started

### Prerequisites
- Node.js (v18+)
- pnpm (recommended) or npm

### Installation
```bash
cd docs-viewer
npm install
```

### Running the Viewer
```bash
node app.js
```
The viewer will be available at `http://localhost:3000`.

## 📂 Structure
- `content/`: Markdown source files for documentation and HTML chunks for examples.
- `src/routes/`: Express route handlers for docs, examples, and changelogs.
- `src/services/`: Content retrieval and rendering logic.
- `views/`: Twig templates for the UI.

## 🛠 Features
- **Interactive Examples**: Real-time component gallery with code toggles.
- **Modular SCSS**: Automatically loads latest compiled CSS from the root `dist` folder.
- **Relational Navigation**: Automatic previous/next links for documentation and changelogs.
- **Alphabetical Indexing**: Auto-sorting side menus with Home prioritization.
