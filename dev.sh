#!/bin/bash

# Local development script for Sailing Banja
# This script sets up the development environment and starts the dev server

set -e

echo "🚀 Starting Sailing Banja development server..."

# Check if node_modules exists
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
fi

# Start the development server
echo "🔥 Starting Nuxt dev server on http://localhost:3000"
npm run dev

