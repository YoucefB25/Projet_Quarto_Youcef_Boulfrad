#!/bin/bash

echo "🚀 Starting Quarto Website Build Pipeline..."

echo "🔄 Installing dependencies..."
pip install -r requirements.txt  # Ensure all Python dependencies are installed

echo "📖 Rendering Quarto website..."
quarto render  # Generate the HTML pages

echo "📤 Moving output to exports/"
mv _site/* exports/

echo "✅ Build complete! You can now deploy the website."

# Optional: If using GitHub Pages, commit & push to gh-pages branch

