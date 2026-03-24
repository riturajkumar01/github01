#!/usr/bin/env python3
"""Make March 2026 completely green! 🌟"""

import os
import subprocess
from datetime import datetime, timedelta

def run(cmd):
    """Run shell command"""
    subprocess.run(cmd, shell=True, check=True)

def main():
    # Create temp directory for March contributions
    march_dir = "march-2026-green"
    
    if os.path.exists(march_dir):
        import shutil
        shutil.rmtree(march_dir)
    
    os.makedirs(march_dir)
    os.chdir(march_dir)
    
    # Init git repo
    run("git init -b main")
    run('git config user.name "Rituraj Kumar"')
    run('git config user.email "riturajkumar15384@gmail.com"')
    
    # March 2026 contributions - Every day of March
    for day in range(1, 32):  # 1 to 31 days
        date = datetime(2026, 3, day, 10, 0)
        
        # Add contribution
        with open("README.md", "a") as f:
            f.write(f"✨ Contribution: {date.strftime('%Y-%m-%d %H:%M')}\n")
        
        # Commit with backdated date
        date_str = date.strftime("%Y-%m-%d %H:%M:%S")
        run(f'git add .')
        run(f'git commit -m "🌟 Green Contribution {day}/31" --date "{date_str}"')
        
        print(f"✅ March {day:02d} committed")
    
    print("\n" + "="*50)
    print("🎉 March 2026 is now COMPLETELY GREEN! 🎉")
    print("="*50)
    print("\nTo push to GitHub, run:")
    print(f"cd {march_dir}")
    print('git remote add origin <your-repo-url>')
    print("git push -u origin main")

if __name__ == "__main__":
    main()
