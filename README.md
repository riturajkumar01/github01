# GitHub Activity Generator 🤖

A Python script that helps you generate a beautiful GitHub Contributions Graph for the last year.

## ⚠️ Disclaimer

This script is for **educational purposes** and demonstrating GitHub mechanics. It should not be used to misrepresent professional contributions or coding activity.

## 🚀 How to Use

1. **Create an empty GitHub repository** (Do not initialize it with a README)
2. **Run the script** with your repository URL:

```bash
python contribute.py --repository=git@github.com:yourusername/repo.git
```

Or with HTTPS:

```bash
python contribute.py --repository=https://github.com/yourusername/repo.git
```

**Note:** It takes several minutes for GitHub to reindex your activity.

## 🎨 Customization Options

### Basic Usage
```bash
# Make 1-12 commits per day, 60% of the days
python contribute.py --max_commits=12 --frequency=60 --repository=git@github.com:user/repo.git
```

### Skip Weekends
```bash
python contribute.py --no_weekends --repository=git@github.com:user/repo.git
```

### Specify Date Range
```bash
# Start from 10 days ago and continue for 15 days into the future
python contribute.py --days_before=10 --days_after=15 --repository=git@github.com:user/repo.git
```

### Custom Git Config
```bash
python contribute.py --user_name="Your Name" --user_email="your@email.com" --repository=git@github.com:user/repo.git
```

## 📋 All Available Options

| Option | Description | Default |
|--------|-------------|---------|
| `-r, --repository` | Remote repository URL (SSH or HTTPS) | None |
| `-mc, --max_commits` | Maximum commits per day (1-20) | 10 |
| `-fr, --frequency` | Percentage of days to commit (0-100) | 80 |
| `-nw, --no_weekends` | Skip commits on weekends | False |
| `-db, --days_before` | How many days before today to start | 365 |
| `-da, --days_after` | How many days after today to continue | 0 |
| `-un, --user_name` | Override git user.name | Global config |
| `-ue, --user_email` | Override git user.email | Global config |

## 🔧 How It Works

The script:
1. Initializes an empty git repository
2. Creates a README.md file
3. Generates random commits (0-20 per day) for the specified date range
4. Links the repository with your remote GitHub repository
5. Pushes all changes to GitHub

## 📝 Requirements

- Python 3.x
- Git

## 🐛 Troubleshooting

### Activity not showing up?
- Wait a few minutes for GitHub to reindex
- Check if your repository is private - you need to [enable showing private contributions](https://help.github.com/en/articles/publicizing-or-hiding-your-private-contributions-on-your-profile)
- Verify your email in GitHub matches your local git config:
  ```bash
  git config --get user.email
  ```
  If it doesn't match, update it:
  ```bash
  git config --global user.email "your@email.com"
  ```

### Getting Help
```bash
python contribute.py --help
```

## 📜 License

Apache-2.0 License

---

**Made with ❤️ for demonstration purposes**