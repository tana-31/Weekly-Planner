#!/bin/bash

# Weekly Planner - GitHub Pages Deployment Script
# This script will help you deploy your weekly planner to GitHub Pages

echo "🚀 Weekly Planner - GitHub Pages Deployment"
echo "============================================"
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Please run this script from the weekly-planner-deploy folder."
    exit 1
fi

echo "Step 1: Configure Git (if not already done)"
echo "-------------------------------------------"
read -p "Enter your GitHub username: " github_username
read -p "Enter your email: " github_email

git config user.name "$github_username"
git config user.email "$github_email"

echo "✅ Git configured locally for this repository"
echo ""

echo "Step 2: Create Initial Commit"
echo "-----------------------------"
git add .
git commit -m "Initial commit: Weekly Planner v2.0 with multi-week support"

echo "✅ Initial commit created"
echo ""

echo "Step 3: Instructions to Deploy to GitHub"
echo "----------------------------------------"
echo ""
echo "Now you need to:"
echo ""
echo "1. Go to https://github.com/new"
echo "2. Repository name: weekly-planner"
echo "3. Description: A beautiful weekly task planner with 52-week support"
echo "4. Keep it Public (required for free GitHub Pages)"
echo "5. DON'T initialize with README (we already have one)"
echo "6. Click 'Create repository'"
echo ""
read -p "Press Enter once you've created the repository on GitHub..."
echo ""

echo "Step 4: Link and Push to GitHub"
echo "--------------------------------"
read -p "Enter your repository URL (e.g., https://github.com/username/weekly-planner.git): " repo_url

git remote add origin "$repo_url"
git branch -M main
git push -u origin main

echo ""
echo "✅ Code pushed to GitHub!"
echo ""

echo "Step 5: Enable GitHub Pages"
echo "---------------------------"
echo ""
echo "Now do this:"
echo ""
echo "1. Go to your repository on GitHub"
echo "2. Click 'Settings' tab"
echo "3. Scroll down to 'Pages' in the left sidebar"
echo "4. Under 'Source', select 'main' branch"
echo "5. Click 'Save'"
echo "6. Wait 1-2 minutes for deployment"
echo ""
echo "Your site will be live at:"
echo "https://$github_username.github.io/weekly-planner/"
echo ""
echo "🎉 Deployment complete!"
echo ""
echo "Share this URL with anyone to let them use your planner!"
