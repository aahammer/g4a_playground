# G4A Playground

A simple, lightweight static HTML website built without frameworks or build tools.

## Features

- Pure HTML, CSS, and JavaScript
- Responsive design
- Interactive elements
- Smooth scrolling navigation
- Contact form (frontend-only demo)
- Clean, modern styling

## Getting Started

This is a static website that requires no build process or dependencies. Simply open `index.html` in your web browser.

### Option 1: Direct File Opening
```bash
open index.html  # macOS
# or just double-click the index.html file
```

### Option 2: Local Development Server
For a more realistic development experience, you can serve the files using Python's built-in server:

```bash
# Python 3
python3 -m http.server 8000

# Then visit http://localhost:8000
```

## Project Structure

```
g4a_playground/
├── index.html          # Main HTML file
├── styles.css          # CSS styles
├── script.js           # JavaScript functionality
├── pyproject.toml      # Project configuration (Poetry)
└── README.md           # This file
```

## Development

This project follows the principle of keeping things simple:

- **No build tools required** - Edit files directly and refresh your browser
- **No frameworks** - Pure HTML, CSS, and JavaScript
- **No database** - Static content only
- **Poetry for Python deps** - If you need Python tooling later, use `poetry add package-name`

### Code Quality Tools

If you need Python tooling (linting, formatting), the project is set up with Poetry:

```bash
# Install development dependencies
poetry install --only dev

# Format code (if you add Python files later)
poetry run black .

# Lint code (if you add Python files later)  
poetry run ruff check .
```

## Features Overview

- **Interactive Button**: Click counter with fun messages
- **Smooth Navigation**: Scroll-to-section navigation
- **Contact Form**: Demo form with validation (frontend-only)
- **Responsive Design**: Works on desktop and mobile
- **Scroll Animations**: Subtle animations on scroll

## Browser Support

Works in all modern browsers:
- Chrome/Chromium
- Firefox  
- Safari
- Edge

## License

MIT License - feel free to use this as a template for your own projects!
