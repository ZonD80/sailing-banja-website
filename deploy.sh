#!/bin/bash

# Cloudflare Pages deployment script for Sailing Banja
# This script builds the project and prepares it for Cloudflare Pages deployment

set -e

echo "🚀 Building Sailing Banja for Cloudflare Pages..."

# Check if node_modules exists
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
fi

# Build the project for static generation
echo "🔨 Building Nuxt application for static generation..."
npm run generate

# Cloudflare Pages expects the output in .output/public
# Nuxt 3 generates static files in .output/public when using nuxt generate

echo "✅ Build complete!"
echo ""
echo "🚀 Deploying to Cloudflare Pages..."
npx wrangler pages deploy .output/public --project-name=sailing-banja

echo ""
echo "✅ Deployment complete!"

