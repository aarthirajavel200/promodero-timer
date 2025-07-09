# Push PomodoroPulse to GitHub - Step by Step

## 1. Create GitHub Repository

1. Go to https://github.com and log in
2. Click the "+" button (top right) → "New repository"
3. Repository name: `pomodoro-pulse`
4. Description: `Full-stack Pomodoro timer with MongoDB integration`
5. Select Public or Private
6. **DO NOT** check any boxes (README, .gitignore, license)
7. Click "Create repository"

## 2. Copy These Commands

After creating the repository, GitHub will show commands. Copy and run them in your terminal:

```bash
# Stage all files
git add .

# Create initial commit
git commit -m "Initial commit: PomodoroPulse - Complete Pomodoro timer app with MongoDB"

# Add your GitHub repository (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/pomodoro-pulse.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## 3. What Gets Pushed

Your repository will include:
- Complete React + TypeScript frontend
- Express + TypeScript backend  
- MongoDB integration
- Standalone Chrome version
- Deployment configurations
- Documentation

## 4. Important: Environment Variables

After pushing, add your MongoDB URI as a repository secret:
1. Go to your repo → Settings → Secrets and variables → Actions
2. Click "New repository secret"
3. Name: `MONGO_URI`
4. Value: `mongodb+srv://gstepaarthi:gstepaarthi@cluster0.3wyjndm.mongodb.net/pomodoro-pulse`

## 5. Done!

Your complete Pomodoro application will be on GitHub and ready for:
- Cloning and running locally
- Deploying to any platform
- Sharing with others
- Contributing and collaboration