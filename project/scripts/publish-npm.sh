#!/bin/bash

# NPM Publish Script for Axis Twelve
# This script publishes the package to npm using a token from .env

set -e

echo "📦 Axis Twelve NPM Publisher"
echo "---"

# Check if .env file exists
if [ ! -f ".env" ]; then
  echo "❌ Error: .env file not found"
  echo "Please create .env with NPM_TOKEN variable"
  exit 1
fi

# Load .env file
export $(cat .env | grep -v '#' | xargs)

# Verify NPM_TOKEN is set
if [ -z "$NPM_TOKEN" ]; then
  echo "❌ Error: NPM_TOKEN not found in .env"
  exit 1
fi

# Run quality checks
echo "🔍 Running quality checks..."
pnpm check

if [ $? -ne 0 ]; then
  echo "❌ Quality checks failed"
  exit 1
fi

echo "✅ Quality checks passed"
echo ""

# Get version from package.json
VERSION=$(grep '"version"' package.json | head -1 | sed -E 's/.*"version":\s*"([^"]+)".*/\1/')
echo "📝 Publishing version: $VERSION"
echo ""

# Set npm token authentication
echo "🔐 Setting up npm authentication..."
npm config set //registry.npmjs.org/:_authToken "$NPM_TOKEN"

# Publish to npm
echo "🚀 Publishing to npm..."
npm publish

# Clean up auth token
npm config delete //registry.npmjs.org/:_authToken

echo ""
echo "✅ Published Axis Twelve v$VERSION to npm successfully!"
echo "🎉 Package is now available at: https://www.npmjs.com/package/axis-twelve"
