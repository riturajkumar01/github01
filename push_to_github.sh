#!/bin/bash

echo "🚀 GitHub Activity Generator - Push Script"
echo "=========================================="
echo ""

# Check if repository URL is provided
if [ -z "$1" ]; then
    echo "❌ Error: Repository URL missing!"
    echo ""
    echo "📝 Usage:"
    echo "   bash push_to_github.sh <your-github-repo-url>"
    echo ""
    echo "📋 Example:"
    echo "   bash push_to_github.sh https://github.com/riturajkumar01/my-activity.git"
    echo ""
    echo "🔗 Steps:"
    echo "   1. Go to GitHub.com"
    echo "   2. Click 'New Repository'"
    echo "   3. Create an EMPTY repository (no README, no .gitignore)"
    echo "   4. Copy the repository URL"
    echo "   5. Run this script with that URL"
    echo ""
    exit 1
fi

REPO_URL=$1

# Find the latest generated repository folder
REPO_DIR=$(ls -t | grep "repository-" | head -1)

if [ -z "$REPO_DIR" ]; then
    echo "❌ Error: No generated repository found!"
    echo "   Run: python3 contribute.py --days_before=30 --max_commits=8 --frequency=70 --no_weekends"
    exit 1
fi

echo "📁 Found repository: $REPO_DIR"
echo "🔗 Target GitHub: $REPO_URL"
echo ""

cd "$REPO_DIR"

# Add remote
echo "🔧 Adding remote origin..."
git remote add origin "$REPO_URL" 2>/dev/null || git remote set-url origin "$REPO_URL"

# Push to GitHub
echo "⬆️  Pushing to GitHub..."
git push -u origin main --force

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ SUCCESS! Repository pushed to GitHub!"
    echo ""
    echo "🟢 Ab kya karo:"
    echo "   1. Wait karo 5-10 minutes"
    echo "   2. Apna GitHub profile dekho: https://github.com/riturajkumar01"
    echo "   3. Contribution graph green ho jayega! 🎉"
    echo ""
else
    echo ""
    echo "❌ Push failed! Please check:"
    echo "   - Repository URL sahi hai?"
    echo "   - GitHub authentication setup hai?"
    echo "   - Repository empty hai?"
    echo ""
fi
