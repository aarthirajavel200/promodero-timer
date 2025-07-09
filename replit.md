# Pomodoro Timer Application

## Overview

This is a full-stack web application built as a Pomodoro productivity timer. The app allows users to track focus sessions and breaks, with customizable timer settings and session statistics. It follows the traditional Pomodoro Technique with work sessions, short breaks, and long breaks.

## User Preferences

Preferred communication style: Simple, everyday language.

## System Architecture

### Frontend Architecture
- **Framework**: React 18 with TypeScript
- **Build Tool**: Vite for fast development and optimized builds
- **UI Framework**: shadcn/ui components built on Radix UI primitives
- **Styling**: Tailwind CSS with CSS custom properties for theming
- **Routing**: Wouter for lightweight client-side routing
- **State Management**: React hooks with TanStack Query for server state

### Backend Architecture
- **Runtime**: Node.js with Express.js
- **Language**: TypeScript with ES modules
- **API Pattern**: RESTful API endpoints
- **Middleware**: Custom logging and error handling
- **Development**: Hot reload with Vite integration

### Data Storage Solutions
- **ORM**: Drizzle ORM for type-safe database operations
- **Database**: PostgreSQL (configured but with memory storage fallback)
- **Migrations**: Drizzle Kit for schema management
- **Connection**: Neon Database serverless driver
- **Fallback**: In-memory storage implementation for development

## Key Components

### Timer System
- **Timer State Management**: Custom hook (`use-timer`) managing session state, timing, and transitions
- **Audio Notifications**: Web Audio API integration for session completion sounds
- **Session Types**: Work sessions (25min), short breaks (5min), long breaks (15min)
- **Automatic Progression**: Transitions between work and break sessions

### User Interface Components
- **Timer Display**: Circular progress indicator with time remaining
- **Timer Controls**: Start/pause/reset functionality with visual feedback
- **Settings Panel**: Customizable duration settings and sound preferences
- **Statistics Panel**: Daily session tracking and focus time metrics
- **Notification Overlay**: Full-screen notifications for session completion

### Backend Services
- **Session Management**: CRUD operations for tracking completed sessions
- **Settings Management**: User preference storage and retrieval
- **Statistics**: Daily and weekly session aggregation
- **Date-based Queries**: Sessions filtered by date ranges

## Data Flow

1. **Timer Operations**: Frontend timer state triggers API calls to record completed sessions
2. **Settings Sync**: Settings changes immediately update backend and invalidate cached queries
3. **Statistics Updates**: Session completion triggers statistics recalculation
4. **Real-time Updates**: TanStack Query provides optimistic updates and cache invalidation

## External Dependencies

### Core Dependencies
- **@tanstack/react-query**: Server state management and caching
- **@neondatabase/serverless**: PostgreSQL database connection
- **drizzle-orm**: Type-safe ORM with Zod schema validation
- **@radix-ui/***: Accessible UI component primitives
- **wouter**: Lightweight React router
- **date-fns**: Date manipulation utilities

### Development Tools
- **Vite**: Build tool with hot module replacement
- **TypeScript**: Type safety across frontend and backend
- **Tailwind CSS**: Utility-first styling framework
- **ESBuild**: Fast TypeScript compilation for production

## Deployment Strategy

### Build Process
- **Frontend**: Vite builds React app to `dist/public`
- **Backend**: ESBuild bundles server code to `dist/index.js`
- **Database**: Drizzle migrations in `migrations/` directory

### Environment Configuration
- **Development**: Local development with memory storage fallback
- **Production**: PostgreSQL database with environment-based configuration
- **Database URL**: Required via `DATABASE_URL` environment variable

### Hosting Considerations
- **Static Assets**: Frontend served from Express static middleware
- **API Routes**: All API endpoints prefixed with `/api`
- **Error Handling**: Centralized error middleware with proper HTTP status codes
- **Logging**: Request/response logging for API endpoints

## Recent Changes

### MongoDB Integration (July 2025)
- Successfully integrated MongoDB with connection string: mongodb+srv://gstepaarthi:gstepaarthi@cluster0.3wyjndm.mongodb.net/pomodoro-pulse
- Application automatically switches between MongoDB storage (when MONGO_URI is provided) and memory storage (for development)
- All session data, settings, and statistics are now persisted in MongoDB
- Connection initialized on server startup with proper error handling

### Standalone Chrome Version (July 2025)
- Created standalone version in `/standalone` folder that runs directly in Chrome
- Includes complete Pomodoro functionality with local storage
- No server setup required - just open index.html in browser
- All features work offline including timer, settings, and daily statistics

### Deployment Configuration (July 2025)
- Added Docker configuration for containerized deployment
- Created Vercel and Netlify deployment configurations
- Production build scripts configured for multiple hosting platforms
- Comprehensive documentation for various deployment options

## Notable Architectural Decisions

### Database Strategy
- **Hybrid Storage**: Memory storage for development, PostgreSQL for production
- **Schema Management**: Shared schema definitions between frontend and backend
- **Type Safety**: Drizzle generates TypeScript types from database schema

### State Management
- **Server State**: TanStack Query handles API data with caching and synchronization
- **Local State**: React hooks for UI state and timer functionality
- **Real-time Updates**: Query invalidation ensures data consistency

### Component Architecture
- **Separation of Concerns**: Timer logic separated from UI components
- **Reusable Components**: shadcn/ui provides consistent design system
- **Custom Hooks**: Business logic abstracted into reusable hooks

### Performance Optimizations
- **Code Splitting**: Vite handles automatic code splitting
- **Query Caching**: TanStack Query reduces unnecessary API calls
- **Optimistic Updates**: Immediate UI feedback for better user experience