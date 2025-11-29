# Scripts Guide

Axis Twelve includes a comprehensive CLI wrapper (`axis`) for managing development, building, publishing, and releasing.

## Quick Start

All scripts can be run using the `axis` wrapper:

```bash
./axis <command>
```

Or through npm:

```bash
npm run <command>
```

## Available Commands

### Development

```bash
./axis build              # Build SCSS to minified CSS
./axis watch              # Watch SCSS files and rebuild on changes
./axis dev                # Build SCSS without source maps
./axis start              # Start development server (localhost:3000)
./axis server             # Alias for start
```

**Examples:**
```bash
# Start development workflow
./axis watch              # Terminal 1: Watch SCSS
./axis start              # Terminal 2: Dev server
```

### Code Quality

```bash
./axis lint               # Run stylelint on SCSS files
./axis lint:fix           # Auto-fix SCSS linting issues
./axis format             # Format SCSS with prettier
./axis check              # Run lint + build (quality gate)
```

**Examples:**
```bash
# Check code quality
./axis check

# Fix issues
./axis lint:fix
./axis format
```

### Publishing

```bash
./axis publish            # Publish to npm (requires NPM_TOKEN in .env)
```

**Setup:**
1. Copy `.env.example` to `.env`
2. Add your npm token from https://www.npmjs.com/settings/~/tokens
3. Run: `./axis publish`

**Workflow:**
```bash
./axis check              # Verify quality
./axis publish            # Publish to npm
```

### Releases

```bash
./axis release            # Create git tag + dist asset (manual GitHub release)
./axis release:github     # Automated GitHub release (requires gh CLI)
```

**Manual Release (Option 1):**
```bash
./axis release
# Then push tag: git push origin v{VERSION}
# Create release on GitHub manually or with gh CLI
```

**Automated Release (Option 2):**
```bash
# Install GitHub CLI first: https://cli.github.com/
./axis release:github
```

### Hooks & Installation

```bash
./axis install:hooks      # Install git hooks
```

Auto-runs on `pnpm install`, but can be run manually.

### Utility

```bash
./axis help               # Show help message
./axis version            # Show package version
```

## Directory Structure

```
axis-twelve/
├── axis                   # Main CLI wrapper
├── project/               # Project management folder
│   ├── scripts/           # All executable scripts
│   │   ├── install-hooks.sh
│   │   ├── publish-npm.sh
│   │   ├── create-release.sh
│   │   └── release-github.sh
│   ├── hooks/             # Git hook definitions
│   │   └── pre-commit
│   └── docs/              # Project documentation
│       ├── SCRIPTS.md     # This file
│       ├── RELEASE.md
│       └── CHANGELOG.md
├── server.js              # Dev server
├── package.json
└── src/
    └── scss/
```

## NPM Equivalents

For those who prefer npm scripts:

```bash
npm run build             # ./axis build
npm run watch             # ./axis watch
npm run dev               # ./axis dev
npm start                 # ./axis start
npm run lint              # ./axis lint
npm run lint:fix          # ./axis lint:fix
npm run format            # ./axis format
npm run check             # ./axis check
npm run publish:npm       # ./axis publish
npm run release           # ./axis release
npm run release:github    # ./axis release:github
```

## Workflow Examples

### Daily Development

```bash
# Terminal 1: Watch and rebuild SCSS
./axis watch

# Terminal 2: Run dev server
./axis start

# Terminal 3: Check code quality
./axis lint:fix
./axis format
./axis check
```

### Publishing New Version

```bash
# 1. Make SCSS changes (auto-bumps version via pre-commit hook)
git add src/scss/style.scss
git commit -m "Update styles"

# 2. Verify quality
./axis check

# 3. Create release
./axis release:github

# 4. Publish to npm
./axis publish
```

### Git Hooks

Pre-commit hook automatically bumps patch version when SCSS files are committed:

```bash
git add src/scss/style.scss
git commit -m "Update styles"
# Hook detects SCSS changes → auto-bumps version in package.json
```

## Troubleshooting

### "Unknown command"
Run `./axis help` to see all available commands.

### "Permission denied"
Make sure the axis script is executable:
```bash
chmod +x axis
```

### Scripts not found
Ensure you're in the project root directory:
```bash
cd /path/to/axis-twelve
./axis build
```

### GitHub release fails
Install GitHub CLI and authenticate:
```bash
# Install: https://cli.github.com/
gh auth login
./axis release:github
```

## Script Details

Each script has specific requirements:

| Script | Requirements | Purpose |
|--------|-------------|---------|
| install-hooks.sh | Git repo | Install development hooks |
| publish-npm.sh | NPM_TOKEN in .env | Publish to npm registry |
| create-release.sh | Git repo, GitHub | Create git tag + tarball |
| release-github.sh | Git repo, GitHub CLI | Automated GitHub release |

## Contributing

To add new commands:

1. Create script in `scripts/` directory
2. Add case in `axis` wrapper script
3. Add npm script in `package.json`
4. Document in this file
