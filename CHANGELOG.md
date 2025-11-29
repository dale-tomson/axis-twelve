# Axis Twelve CSS Framework - Changelog

All notable changes to Axis Twelve will be documented in this file. This project adheres to [Semantic Versioning](https://semver.org/).

The changelog is organized by version. Click on any version below to see detailed release notes, features, changes, and migration guides.

---

## Released Versions

### [v0.0.3](./project/docs/changelog/v0.0.3.md) - Code Quality & CDN Ready
**November 29, 2025**

🧹 **Code organization + 📦 CDN improvements** - Cleaner SCSS architecture and production-ready distribution

Key highlights:
- Centralized spacing utilities (gap, margin-auto) in single module
- Removed SCSS duplicates for better maintainability
- **Minified & unminified CSS versions** for CDN distribution
- **MIT License** - Free for commercial & private projects
- GitHub Actions workflow optimized to deploy on relevant changes
- Updated documentation to reflect architecture changes
- No breaking changes

CDN Ready:
- Production: `https://unpkg.com/axis-twelve@0.0.3/dist/style.min.css`
- Development: `https://unpkg.com/axis-twelve@0.0.3/dist/style.css`

[Read full release notes →](./project/docs/changelog/v0.0.3.md)

---

### [v0.0.2](./project/docs/changelog/v0.0.2.md) - Performance & Optimization Release
**November 29, 2025**

🚀 **56% CSS size reduction** - Framework optimized from 118 KB to 52 KB

Key highlights:
- Reduced spacing scale from 34 to 20 values
- CSS: 118 KB → 52 KB (56% reduction)
- Gzipped: 7.4 KB (59% reduction)
- Modern Sass syntax (no deprecation warnings)
- No breaking changes

[Read full release notes →](./project/docs/changelog/v0.0.2.md)

---

### [v0.0.1](./project/docs/changelog/v0.0.1.md) - Initial Release
**November 29, 2025**

✨ **First stable release** of Axis Twelve CSS framework

Initial features:
- 12-column responsive grid system
- Flexbox utilities
- Centering components
- Spacing (margin, padding, gap) utilities
- 6 responsive breakpoints
- Modern Sass (@use syntax)
- Development tools & automation
- npm publishing support
- GitHub integration

[Read full release notes →](./project/docs/changelog/v0.0.1.md)

---

## Upcoming Versions

Future releases will be documented here as they are published.

---

## Semantic Versioning

This project uses [Semantic Versioning](https://semver.org/):

- **MAJOR** version (X.0.0) - Breaking changes
- **MINOR** version (0.X.0) - New features, backward compatible
- **PATCH** version (0.0.X) - Bug fixes and optimizations

---

## How to Update

To update to the latest version of Axis Twelve:

```bash
# Using pnpm
pnpm update axis-twelve

# Using npm
npm update axis-twelve
```

---

## Version History at a Glance

| Version | Date | Type | Key Changes |
|---------|------|------|-------------|
| v0.0.3 | Nov 29, 2025 | Quality & CDN | Centralized utilities, minified/unminified versions, MIT License, workflow optimization |
| v0.0.2 | Nov 29, 2025 | Optimization | 56% CSS reduction, 20 spacing values |
| v0.0.1 | Nov 29, 2025 | Initial | Grid, flexbox, spacing, 6 breakpoints |

---

## For More Information

- **Getting Started**: See [README.md](./README.md)
- **API Documentation**: See [project/docs/API.md](./project/docs/API.md)
- **Development Guide**: See [project/docs/DEVELOPMENT.md](./project/docs/DEVELOPMENT.md)
- **Release Process**: See [project/docs/RELEASE.md](./project/docs/RELEASE.md)

---

## Contributing

We welcome contributions! Please see our [Contributing Guide](./CONTRIBUTING.md) for details.

---

_Last updated: November 29, 2025_
