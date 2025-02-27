#!/bin/bash

echo "🚀 Starting Quarto Website Build Pipeline..."

echo "🔄 Installing dependencies..."
pip install -r requirements.txt  # Ensure all dependencies are installed

# 📂 Ensure the output folders exist
mkdir -p exports/pdf exports/html  # Créer les dossiers AVANT de générer

echo "📖 Running dataset preparation (donnees.qmd)..."
quarto render notebooks/donnees.qmd --execute  # Assurer que les données sont prêtes

echo "📖 Rendering Quarto website..."
quarto render --to html --output-dir exports/html  # Générer HTML directement dans exports/html
quarto render --to pdf --output-dir exports/pdf  # Générer PDF directement dans exports/pdf

echo "📤 Checking outputs..."
echo "🔍 HTML Files:"
ls -l exports/html/
echo "🔍 PDF Files:"
ls -l exports/pdf/

echo "🌍 Starting local web server on http://localhost:9005"
cd exports/html || exit
python3 -m http.server 9005 &  # Démarre un serveur en arrière-plan

echo "✅ Build complete! HTML is now accessible at http://localhost:9005"

