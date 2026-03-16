# Release Workflow

This document describes how the release process works for Axis Twelve.

## Automated Release Process

The release process is fully automated through GitHub Actions. Here's how it works:

### 1. Version Bump

To create a new release:

1. Update the version in `package.json`:

   ```json
   {
     "version": "2.0.3"
   }
   ```

2. Commit and push the change:
   ```bash
   git add package.json
   git commit -m "Bump version to 2.0.3"
   git push origin ver-2.x
   ```

### 2. Auto-Tag Workflow

When `package.json` changes on the `ver-2.x` branch:

1. **Workflow**: `.github/workflows/auto-tag.yml`
2. **Triggers**: Push to `ver-2.x` with `package.json` changes
3. **Actions**:
   - Reads version from `package.json`
   - Checks if tag `v{version}` already exists
   - If not, creates annotated tag and pushes to remote
   - Tag push triggers the release workflow

### 3. Release Workflow

When a tag is pushed (e.g., `v2.0.3`):

1. **Workflow**: `.github/workflows/release.yml`
2. **Triggers**: Push of tags matching `v*`
3. **Jobs**:
   - **Build**:
     - Installs dependencies
     - Runs lint and build
     - Uploads build artifacts
   - **Release GitHub**:
     - Downloads build artifacts
     - Creates GitHub Release with CSS files
     - Auto-generates release notes from PRs
   - **Release NPM**:
     - Downloads build artifacts
     - Publishes to NPM registry

## Required Secrets

The following secrets must be configured in GitHub repository settings:

- `NODE_AUTH_TOKEN`: NPM authentication token for publishing

## Workflow Files

### `.github/workflows/auto-tag.yml`

- Detects version changes
- Creates git tags automatically
- Ensures version consistency

### `.github/workflows/release.yml`

- Builds all CSS modules
- Creates GitHub release
- Publishes to NPM

### `.github/workflows/pr-checks.yml`

- Runs on pull requests
- Lints SCSS files
- Builds all modules
- Required for merge approval

## Manual Release (Fallback)

If automated release fails:

1. Create tag manually:

   ```bash
   git tag -a v2.0.3 -m "Release v2.0.3"
   git push origin v2.0.3
   ```

2. GitHub Actions will handle the rest

## Artifacts

### GitHub Release Assets

- `dist/axis-twelve.css` (expanded)
- `dist/axis-twelve.min.css` (minified)
- `dist/modules/*.css` (all module files)

### NPM Package

- Full framework CSS
- Individual module CSS files
- SCSS source files
- Package metadata

## Version Consistency

The following files should have matching versions:

- `package.json` (source of truth)
- `README.md` (version badge)
- `CHANGELOG.md` (latest entry)
- Build file headers (auto-updated)

## Troubleshooting

### Tag Already Exists

If the tag already exists, the workflow will skip tag creation. You'll need to:

1. Delete the existing tag: `git tag -d v2.0.3`
2. Push the deletion: `git push origin :refs/tags/v2.0.3`
3. Recreate with correct commit

### NPM Publish Fails

Check:

1. NPM token is valid
2. Version number is higher than published version
3. NPM registry status

### Build Fails

Run locally:

```bash
pnpm install
pnpm lint
pnpm build
```
