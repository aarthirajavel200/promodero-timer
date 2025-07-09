# PomodoroPulse - Productivity Timer

A full-stack Pomodoro timer application built with React, Express, and MongoDB for tracking focus sessions and productivity.

## 🚀 Live Demo
- **Full-stack version**: Runs with MongoDB backend
- **Standalone version**: Available in `/standalone` folder - runs directly in Chrome

## ✨ Features

- ⏱️ **Pomodoro Timer**: 25-minute work sessions with 5-minute breaks
- 📊 **Progress Tracking**: Visual progress ring and session statistics
- 🔔 **Audio Notifications**: Sound alerts when sessions complete
- ⚙️ **Customizable Settings**: Adjust work/break durations and sound preferences
- 📈 **Daily Statistics**: Track completed sessions and focus time
- 💾 **MongoDB Integration**: Persistent data storage for sessions and settings
- 🌐 **Standalone Mode**: Run directly in Chrome without server setup

## Quick Start

### Development
```bash
npm install
npm run dev
```

### Production Build
```bash
npm run build
npm start
```

## Environment Variables

Create a `.env` file in the root directory:

```env
MONGO_URI=mongodb+srv://username:password@cluster.mongodb.net/pomodoro-pulse
NODE_ENV=production
```

## Deployment Options

### Docker
```bash
docker build -t pomodoro-pulse .
docker run -p 5000:5000 --env-file .env pomodoro-pulse
```

### Vercel
1. Deploy with `vercel --prod`
2. Add MONGO_URI environment variable in Vercel dashboard

### Netlify
1. Connect your repository to Netlify
2. Add MONGO_URI environment variable in site settings

### Traditional Web Hosting
1. Build the application: `npm run build`
2. Upload the `dist` folder to your web server
3. Set environment variables on your hosting platform
4. Start the application: `node dist/index.js`

## Architecture

- **Frontend**: React 18 with TypeScript, Vite build system
- **Backend**: Express.js with TypeScript
- **Database**: MongoDB with Mongoose ODM
- **UI Components**: shadcn/ui with Tailwind CSS
- **State Management**: TanStack Query for server state

## Database Schema

### Sessions Collection
```javascript
{
  type: "work" | "break" | "longBreak",
  duration: Number, // seconds
  completedAt: Date,
  date: String // YYYY-MM-DD
}
```

### Settings Collection
```javascript
{
  workDuration: Number, // minutes (default: 25)
  shortBreakDuration: Number, // minutes (default: 5)  
  longBreakDuration: Number, // minutes (default: 15)
  soundEnabled: Boolean, // (default: true)
  sessionsUntilLongBreak: Number // (default: 4)
}
```

## API Endpoints

- `GET /api/settings` - Get user settings
- `PATCH /api/settings` - Update settings
- `POST /api/sessions` - Create new session
- `GET /api/sessions/date/:date` - Get sessions by date
- `GET /api/stats/daily/:date` - Get daily statistics

## 🎯 Tech Stack

- **Frontend**: React 18, TypeScript, Tailwind CSS, shadcn/ui
- **Backend**: Express.js, Node.js
- **Database**: MongoDB with Mongoose
- **Build Tools**: Vite, ESBuild
- **State Management**: TanStack Query
- **Routing**: Wouter

## 📱 Usage Options

### 1. Full-stack Development
```bash
npm install
npm run dev
```

### 2. Standalone Chrome App
1. Navigate to `/standalone` folder
2. Double-click `index.html`
3. Start using immediately in Chrome

### 3. Production Deployment
```bash
npm run build
npm start
```

## 🔧 Configuration

The application automatically switches between:
- **MongoDB storage** (when MONGO_URI is provided)
- **Memory storage** (for development/testing)

## 📂 Project Structure

```
├── client/               # React frontend
│   ├── src/
│   │   ├── components/   # UI components
│   │   ├── hooks/        # Custom React hooks
│   │   ├── pages/        # Application pages
│   │   └── lib/          # Utilities
├── server/               # Express backend
│   ├── index.ts          # Server entry point
│   ├── routes.ts         # API routes
│   └── storage.ts        # Database abstraction
├── shared/               # Shared types and schemas
├── standalone/           # Chrome standalone version
└── dist/                 # Production build
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test both full-stack and standalone versions
5. Submit a pull request

## 📄 License

MIT License - feel free to use this project for personal or commercial purposes.