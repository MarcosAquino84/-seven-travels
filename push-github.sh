#!/bin/bash
echo "Ingresa tu token de GitHub (lo que copiaste):"
read -s TOKEN
git remote set-url origin "https://MarcosAquino84:$TOKEN@github.com/MarcosAquino84/-seven-travels.git"
git push -u origin main
echo ""
echo "✅ Código subido a GitHub!"
