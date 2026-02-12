# Quick Start Guide

## Step-by-Step Instructions

### 1. Create a New GitHub Repository
Go to GitHub and create a **new empty repository**:
- Don't add a README
- Don't add .gitignore
- Don't add a license
- Keep it completely empty

### 2. Copy Your Repository URL
You'll get a URL like:
- SSH: `git@github.com:yourusername/repo-name.git`
- HTTPS: `https://github.com/yourusername/repo-name.git`

### 3. Run the Script

#### Basic Usage (Default Settings)
This will create commits for the past 365 days, with 1-10 commits per day on 80% of days:
```bash
python contribute.py --repository=git@github.com:yourusername/repo-name.git
```

#### Recommended Settings for Natural Looking Activity
```bash
python contribute.py \
  --repository=git@github.com:yourusername/repo-name.git \
  --max_commits=8 \
  --frequency=70 \
  --no_weekends
```

#### Heavy Activity (Looks Very Active)
```bash
python contribute.py \
  --repository=git@github.com:yourusername/repo-name.git \
  --max_commits=15 \
  --frequency=90
```

#### Light Activity (Occasional Commits)
```bash
python contribute.py \
  --repository=git@github.com:yourusername/repo-name.git \
  --max_commits=5 \
  --frequency=50 \
  --no_weekends
```

#### Short Term Activity (Last 90 Days)
```bash
python contribute.py \
  --repository=git@github.com:yourusername/repo-name.git \
  --days_before=90 \
  --max_commits=10 \
  --frequency=75
```

### 4. Wait for GitHub to Update
After running the script:
- Wait 5-10 minutes
- Refresh your GitHub profile
- Your contribution graph should now be green! 🟩

### 5. Important: Check Your Email
Make sure your git email matches your GitHub email:
```bash
# Check current email
git config --get user.email

# Update if needed
git config --global user.email "your-github-email@example.com"
```

## Common Issues

### Activity Not Showing?
1. ✅ Wait 5-10 minutes for GitHub to reindex
2. ✅ Check if repository is private - enable "Private contributions" in GitHub settings
3. ✅ Verify email matches: `git config --get user.email`
4. ✅ Make sure the repository was empty before running the script

### Want to Try Again?
1. Delete the repository on GitHub
2. Create a new empty repository
3. Run the script again with the new repository URL

## Example Workflow
```bash
# Step 1: Navigate to your project folder
cd ~/github-bot

# Step 2: Run the script (replace with your repo URL)
python contribute.py --repository=git@github.com:yourusername/my-activity.git --max_commits=10 --frequency=80 --no_weekends

# Step 3: Wait for completion message
# "Repository generation completed successfully!"

# Step 4: Check your GitHub profile after 5-10 minutes
```

## Tips for Best Results
- Use `--no_weekends` for more realistic activity
- Keep `--frequency` between 60-85 for natural looking patterns
- Use `--max_commits` between 5-12 for realistic daily activity
- Make sure to use a brand new, empty repository

Happy coding! 🚀
