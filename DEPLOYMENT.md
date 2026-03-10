# 🚀 Quick Deployment Guide to GitHub Pages

## Prerequisites
- GitHub account (create one at https://github.com if you don't have one)
- This folder with the files ready to deploy

## Option 1: Using the Script (Easiest)

1. Open Terminal
2. Navigate to this folder:
   ```bash
   cd /Users/I772414/weekly-planner-deploy
   ```

3. Run the deployment script:
   ```bash
   ./deploy.sh
   ```

4. Follow the prompts!

---

## Option 2: Manual Steps

### Step 1: Configure Git (First Time Only)
```bash
cd /Users/I772414/weekly-planner-deploy
git config user.name "YourGitHubUsername"
git config user.email "your.email@example.com"
```

### Step 2: Create Initial Commit
```bash
git add .
git commit -m "Initial commit: Weekly Planner v2.0"
```

### Step 3: Create GitHub Repository
1. Go to https://github.com/new
2. **Repository name**: `weekly-planner`
3. **Description**: `A beautiful weekly task planner with 52-week support`
4. Keep it **Public** ✅
5. **DON'T** check any boxes (README, .gitignore, license)
6. Click **"Create repository"**

### Step 4: Push to GitHub
Replace `YOUR_USERNAME` with your actual GitHub username:

```bash
git remote add origin https://github.com/YOUR_USERNAME/weekly-planner.git
git branch -M main
git push -u origin main
```

### Step 5: Enable GitHub Pages
1. Go to your repository: `https://github.com/YOUR_USERNAME/weekly-planner`
2. Click **"Settings"** tab
3. Scroll down and click **"Pages"** in the left sidebar
4. Under **"Source"**, select **"main"** branch
5. Click **"Save"**
6. Wait 1-2 minutes ⏱️

### Step 6: Access Your Live Site! 🎉
Your weekly planner will be live at:
```
https://YOUR_USERNAME.github.io/weekly-planner/
```

---

## 🔄 Updating Your Site Later

If you make changes to the planner:

```bash
cd /Users/I772414/weekly-planner-deploy
git add .
git commit -m "Update: description of changes"
git push
```

Wait 1-2 minutes and your site will update automatically!

---

## 📤 Sharing Your Planner

Once deployed, share this URL with anyone:
```
https://YOUR_USERNAME.github.io/weekly-planner/
```

They can use it directly in their browser! Each person's data stays private in their own browser.

---

## ❓ Troubleshooting

**"Permission denied" error?**
```bash
chmod +x deploy.sh
./deploy.sh
```

**"Repository already exists"?**
- Use a different name like `weekly-planner-app`

**"404 Page Not Found" after deployment?**
- Wait 2-3 minutes for GitHub to build your site
- Check Settings > Pages to see deployment status

**Need to change something?**
- Edit files in this folder
- Run `git add .`, `git commit -m "message"`, `git push`

---

## 🎯 Next Steps

1. Bookmark your deployed URL
2. Share with friends/colleagues
3. Use it daily for planning!

**Pro Tip**: Consider adding your deployed URL to your browser's home page or new tab page for instant access!
