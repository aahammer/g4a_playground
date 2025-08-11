# G4A Playground

A simple "Hello World" HTML page designed for GitHub Pages hosting.

## What This Is

This is a minimal static website containing just a single HTML file with no CSS or JavaScript dependencies. Perfect for:
- Learning GitHub Pages
- Testing deployments
- Starting a simple web presence
- Quick prototyping

## 🚀 How to Host This on GitHub Pages

### Step 1: Push to GitHub

1. Create a new repository on GitHub (name it whatever you like, e.g., `g4a_playground`)
2. Push your local code to GitHub:

```bash
# Add your GitHub repository as the remote origin
git remote add origin https://github.com/YOUR_USERNAME/REPOSITORY_NAME.git

# Push your code
git branch -M main
git push -u origin main
```

### Step 2: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on **Settings** tab
3. Scroll down to **Pages** section (in the left sidebar)
4. Under **Source**, select **Deploy from a branch**
5. Choose **main** branch and **/ (root)** folder
6. Click **Save**

### Step 3: Access Your Site

After a few minutes, your site will be available at:
```
https://YOUR_USERNAME.github.io/REPOSITORY_NAME/
```

GitHub will show you the exact URL in the Pages settings.

## Local Development

### Option 1: Direct File Opening
```bash
open index.html  # macOS
# or just double-click the index.html file
```

### Option 2: Local Server
For testing how it will work on GitHub Pages:

```bash
# Python 3
python3 -m http.server 8000

# Then visit http://localhost:8000
```

## Project Structure

```
g4a_playground/
├── index.html          # Simple HTML page
├── .gitignore          # Git ignore rules
├── README.md           # This file
└── other files...      # Poetry config, etc. (not used by GitHub Pages)
```

## Customizing Your Page

To customize the content:
1. Edit `index.html` 
2. Commit your changes: `git add . && git commit -m "Update content"`
3. Push to GitHub: `git push`
4. GitHub Pages will automatically update your site!

## Why This Setup?

- **Zero dependencies**: Just HTML, works everywhere
- **Fast loading**: Minimal file size
- **Easy to modify**: Edit one file, see immediate results
- **Perfect for beginners**: No complex build processes

## License

MIT License - feel free to use this as a template for your own projects!
