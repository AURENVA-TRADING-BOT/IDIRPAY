#!/bin/bash

# IdirPay.so Vercel Deployment Script
# Run this script to deploy to Vercel

echo "🚀 Deploying IdirPay.so to Vercel..."

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI not found. Installing..."
    npm i -g vercel
fi

# Build the project
echo "📦 Building project..."
npm run build

# Deploy to Vercel
echo "🚀 Deploying..."
vercel --prod

echo "✅ Deployment complete!"
echo "🌐 Your app is now live!"