#!/bin/bash

# Build script for PomodoroPulse production deployment

echo "🚀 Building PomodoroPulse for production..."

# Create dist directory
mkdir -p dist

# Build frontend
echo "📦 Building frontend..."
npx vite build --outDir dist/public

# Build backend  
echo "⚙️ Building backend..."
npx esbuild server/index.ts --bundle --platform=node --outfile=dist/index.js --external:express --external:mongoose --external:dotenv --format=esm

# Copy necessary files
echo "📋 Copying configuration files..."
cp package.json dist/
cp .env dist/ 2>/dev/null || echo "⚠️  No .env file found - remember to set environment variables"

echo "✅ Build complete! Your app is ready in the 'dist' directory"
echo ""
echo "🌐 Deployment options:"
echo "1. Upload 'dist' folder to any web hosting service"
echo "2. Run 'node dist/index.js' on your server"
echo "3. Use Docker: docker build -t pomodoro-pulse ."
echo "4. Deploy to Vercel/Netlify using provided config files"
echo ""
echo "📝 Don't forget to:"
echo "- Set MONGO_URI environment variable on your hosting platform"
echo "- Install production dependencies: npm ci --production"