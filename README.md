# Moo Entertainment

A fun, interactive web application where users can tap or click anywhere on the screen to create "Moo" messages that appear for all connected users in real-time!

## Features

- Real-time synchronization across all connected users
- Various moo variations ("Moo!", "MOOO!", "Mooooo", etc.)
- Colorful, animated moo displays
- Mobile-friendly with touch support
- Simple and engaging user interface

## Installation

1. Clone this repository or download the files
2. Install dependencies:
   ```bash
   npm install
   ```

## Running the Application

### Development mode (with auto-restart):
```bash
npm run dev
```

### Production mode:
```bash
npm start
```

The server will start on port 3000 by default. Visit `http://localhost:3000` in your browser.

## Deployment

This app is ready to deploy to any Node.js hosting platform. The server uses `process.env.PORT` if available, making it compatible with services like:
- Heroku
- Railway
- Render
- DigitalOcean App Platform
- AWS Elastic Beanstalk

## How It Works

1. Users click or tap anywhere on the screen
2. A random "moo" variation and color is selected
3. The click position and moo data is sent to all connected users via WebSocket
4. Everyone sees the moo appear at the same position with a fun animation

## Technical Stack

- **Frontend**: Vanilla JavaScript, HTML5, CSS3
- **Backend**: Node.js, Express.js
- **Real-time Communication**: Socket.io
- **Animations**: CSS animations

Enjoy mooing together!