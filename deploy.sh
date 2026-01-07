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
# For Cloudflare Pages, we need to use nuxt build which creates a serverless build
# But for static sites, we can use nuxt generate

echo "✅ Build complete!"
echo ""
echo "📋 Next steps:"
echo "1. Connect your repository to Cloudflare Pages"
echo "2. Set build command: npm run generate"
echo "3. Set output directory: .output/public"
echo "4. Set Node version: 18 or higher"
echo ""
echo "Or use Wrangler CLI:"
echo "  npx wrangler pages deploy .output/public --project-name=sailing-banja"

