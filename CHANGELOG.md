# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2024-01-01

### Added
- Initial release of Axis Twelve CSS Framework
- 12-column responsive grid system with mobile-first breakpoints (mobile, tablet, desktop, large)
- Flexbox utilities for row, column, and alignment control
- Centering utilities for both horizontal and vertical alignment
- Comprehensive spacing system with margin and padding utilities
- Complete SCSS module structure with modern @use syntax
- Node.js HTTP server for local development
- Stylelint configuration with property ordering
- Prettier code formatting configuration
- Pre-publish quality checks (lint + build validation)

### Features
- `grid` class for creating 12-column layouts
- `col-{n}`, `col-{breakpoint}-{n}` for responsive columns
- `gap-{size}` for grid gaps
- `flex`, `flex-row`, `flex-column` for flexbox layouts
- `center`, `center-horizontal`, `center-vertical` for alignment
- `p-{size}`, `m-{size}` for padding and margins
- Responsive typography and spacing scales

### Documentation
- README with quick start guide
- Installation guide for npm/pnpm
- Getting started guide with development workflow
- CSS variables and customization guide
- Best practices documentation

## [Unreleased]

### Planned
- Minified CSS distribution
- CSS custom properties (variables) for easier customization
- Animation and transition utilities
- Color system with theme support
- Grid auto-placement utilities
