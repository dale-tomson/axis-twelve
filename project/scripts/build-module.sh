#!/bin/bash

# Build a single module
# Usage: build-module.sh <module-name>
# Example: build-module.sh buttons

set -e

if [ -z "$1" ]; then
  echo "❌ Error: Module name required"
  echo "Usage: build-module.sh <module-name>"
  echo "Example: build-module.sh buttons"
  exit 1
fi

MODULE_NAME="$1"
MODULE_FILE="src/builds/axis-${MODULE_NAME}.scss"
OUTPUT_DIR="dist/modules"
OUTPUT_EXPANDED="${OUTPUT_DIR}/axis-${MODULE_NAME}.css"
OUTPUT_COMPRESSED="${OUTPUT_DIR}/axis-${MODULE_NAME}.min.css"

# Check if source file exists
if [ ! -f "$MODULE_FILE" ]; then
  echo "❌ Error: Module source file not found: $MODULE_FILE"
  exit 1
fi

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

echo "🔨 Building axis-${MODULE_NAME}..."

# Build expanded version
pnpm exec sass "$MODULE_FILE" "$OUTPUT_EXPANDED" --style=expanded --no-source-map

# Build compressed version
pnpm exec sass "$MODULE_FILE" "$OUTPUT_COMPRESSED" --style=compressed --no-source-map

echo "✅ Built axis-${MODULE_NAME}"
echo "   - $OUTPUT_EXPANDED"
echo "   - $OUTPUT_COMPRESSED"
