# Available Scripts

In the project directory, you can run:

### `pnpm run build`

Builds all CSS files (full framework, modules, and legacy) for production to the `dist` folder.\
It correctly bundles SCSS in production mode and optimizes the build for the best performance.

### `pnpm run build:full`

Builds only the full framework (`dist/axis-twelve.css` and minified).

### `pnpm run build:modules`

Builds only the individual modules (`dist/modules/*.css`).

### `pnpm run watch`

Runs the app in the development mode.\
The build will automatically update when you make changes to SCSS files.

### `pnpm run lint`

Lints all SCSS files using Stylelint.

### `pnpm run lint:fix`

Lints and automatically fixes issues in SCSS files.

### `pnpm run format`

Formats SCSS files using Prettier.
