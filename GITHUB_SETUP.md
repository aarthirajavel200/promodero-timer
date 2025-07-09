# 🚀 Push PomodoroPulse to GitHub

## Step 1: Create GitHub Repository

1. Go to [GitHub.com](https://github.com) and log in
2. Click the "+" icon in the top right corner
3. Select "New repository"
4. Repository name: `pomodoro-pulse` (or your preferred name)
5. Description: `Full-stack Pomodoro timer with MongoDB integration`
6. Make it Public or Private (your choice)
7. **Do NOT** initialize with README, .gitignore, or license (we already have these)
8. Click "Create repository"

## Step 2: Push Your Code

After creating the repository, GitHub will show you instructions. Use these commands in your terminal:

```bash
# Add all files to git
git add .

# Commit your changes
git commit -m "Initial commit: PomodoroPulse - Full-stack Pomodoro timer

Features:
- Complete Pomodoro timer with 25min work sessions and breaks
- MongoDB integration for persistent data storage
- React frontend with modern UI components
- Express backend with RESTful API
- Standalone Chrome version for offline use
- Customizable settings and productivity tracking
- Audio notifications and visual progress indicators"

# Add your GitHub repository as origin (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/pomodoro-pulse.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 3: Add Repository Secrets (Important!)

Since your MongoDB URI is sensitive information, you should:

1. Go to your repository on GitHub
2. Click "Settings" tab
3. Go to "Secrets and variables" → "Actions"
4. Click "New repository secret"
5. Name: `MONGO_URI`
6. Value: `mongodb+srv://gstepaarthi:gstepaarthi@cluster0.3wyjndm.mongodb.net/pomodoro-pulse`
7. Click "Add secret"

## Step 4: Update Environment Variables

For security, update your local `.env` file to use a different MongoDB URI for development if needed, or keep using the same one.

## Step 5: Create GitHub Actions (Optional)

If you want automatic deployment, I can help you set up GitHub Actions workflows.

## 🎉 Your Repository Will Include:

- ✅ Complete full-stack application
- ✅ MongoDB integration
- ✅ Standalone Chrome version
- ✅ Docker configuration
- ✅ Vercel/Netlify deployment configs
- ✅ Comprehensive documentation
- ✅ Production-ready build setup

## 📝 Repository Features:

- **Main app**: Full-stack version with MongoDB
- **Standalone app**: `/standalone` folder - runs directly in Chrome
- **Documentation**: Complete setup and usage instructions
- **Deployment**: Multiple deployment options (Docker, Vercel, Netlify)
- **TypeScript**: Full type safety across frontend and backend