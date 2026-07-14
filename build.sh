#!/bin/bash

echo "🔨 Building Browser Agent..."

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Build the project
echo "⚙️ Building project..."
npm run build

# Install Playwright browsers
echo "🌐 Installing Playwright browsers..."
npx playwright install chromium

echo "✅ Build complete!"
