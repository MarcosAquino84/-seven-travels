#!/bin/bash
echo "==========================================="
echo "  Conectar con GitHub - Seven Travels"
echo "==========================================="
echo ""
echo "Copia y pega el nombre de tu usuario de GitHub:"
read -p "Usuario de GitHub: " GITHUB_USER
echo ""
echo "Nombre del repositorio (default: seven-travels):"
read -p "Repositorio: " REPO_NAME
REPO_NAME=${REPO_NAME:-seven-travels}
echo ""
echo "Ejecutando comandos..."
echo ""

# Renombrar rama a main
git branch -M main

# Agregar remote
git remote add origin "https://github.com/$GITHUB_USER/$REPO_NAME.git"

# Push
echo "Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ ¡Listo! Tu código está en GitHub"
echo ""
echo "📱 URL del repositorio:"
echo "   https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""
echo "🌐 Para activar GitHub Pages:"
echo "   1. Ve a: https://github.com/$GITHUB_USER/$REPO_NAME/settings/pages"
echo "   2. En 'Source', selecciona: main branch"
echo "   3. Click en 'Save'"
echo "   4. Tu sitio estará en: https://$GITHUB_USER.github.io/$REPO_NAME/"
echo ""
echo "==========================================="
