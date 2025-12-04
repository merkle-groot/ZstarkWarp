# Zstarkwarp Backend API

A modular Express.js API server for the Zstarkwarp blockchain application.

## Project Structure

```
back-end/
├── routes/              # API route definitions
│   ├── index.js         # Root route
│   ├── health.js        # Health check routes
│   └── api.js           # API v1 routes
├── middleware/          # Custom middleware
│   └── errorHandler.js  # Error handling middleware
├── controllers/         # Route controllers (future)
├── models/             # Data models (future)
├── utils/              # Utility functions (future)
├── index.js            # Main server file
├── package.json        # Dependencies and scripts
├── .env.example        # Environment variables template
└── .gitignore          # Git ignore file
```

## Getting Started

### Prerequisites
- Node.js (v14 or higher)
- npm or yarn

### Installation

1. Install dependencies:
```bash
npm install
```

2. Copy environment variables:
```bash
cp .env.example .env
```

3. Start the server:
```bash
# Development mode with auto-restart
npm run dev

# Production mode
npm start
```

## API Endpoints

### General Endpoints
- `GET /` - API server information
- `GET /health` - Health check with server stats

### API v1 Endpoints
- `GET /api/v1` - API information and available endpoints
- `GET /api/v1/status` - Detailed application status

## Features

- **Modular Architecture**: Routes organized in separate files for better maintainability
- **Security**: Helmet middleware for security headers
- **CORS**: Cross-Origin Resource Sharing enabled
- **Logging**: Morgan middleware for request logging
- **Error Handling**: Comprehensive error handling middleware
- **Environment Variables**: Configurable via .env files

## Environment Variables

```bash
PORT=3001                    # Server port
NODE_ENV=development         # Environment (development/production)
CORS_ORIGIN=http://localhost:3000  # CORS allowed origin
```

## Scripts

- `npm start` - Start server in production mode
- `npm run dev` - Start server in development mode with nodemon
- `npm test` - Run tests (placeholder)

## Development

### Adding New Routes

1. Create a new route file in `routes/` directory
2. Export an Express Router
3. Import and mount the route in `index.js`

Example:
```javascript
// routes/example.js
const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  res.json({ message: 'Example route' });
});

module.exports = router;
```

```javascript
// index.js
const exampleRoutes = require('./routes/example');
app.use('/example', exampleRoutes);
```

### Adding Middleware

Create middleware files in the `middleware/` directory and import them in your routes or main file.

## License

ISC