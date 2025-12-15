# Publicar Seven Travels en GitHub Pages

## Ya hicimos:
✅ Inicializado repositorio git
✅ Primer commit creado
✅ Archivos listos para subir

## Falta hacer:

### Paso 1: Crear repositorio en GitHub

1. Abre en tu navegador: **https://github.com/new**

2. Completa:
   - **Repository name:** `seven-travels`
   - **Description:** "Landing page para Seven Travels - Renta de camionetas"
   - **Public** ← IMPORTANTE (para GitHub Pages gratis)
   - NO marques ningún checkbox

3. Click **"Create repository"**

### Paso 2: Desde WSL, ejecuta estos comandos

Reemplaza `TU-USUARIO` con tu nombre de usuario de GitHub:

```bash
# Renombrar rama a main
git branch -M main

# Conectar con GitHub
git remote add origin https://github.com/TU-USUARIO/seven-travels.git

# Subir código
git push -u origin main
```

**Ejemplo si tu usuario es "marck-av":**
```bash
git branch -M main
git remote add origin https://github.com/marck-av/seven-travels.git
git push -u origin main
```

### Paso 3: Activar GitHub Pages

1. Ve a: `https://github.com/TU-USUARIO/seven-travels/settings/pages`

2. En **"Source"**, selecciona:
   - Branch: **main**
   - Folder: **/ (root)**

3. Click **"Save"**

4. ¡Espera 1-2 minutos!

### Tu sitio estará disponible en:

```
https://TU-USUARIO.github.io/seven-travels/
```

**Ejemplo:**
```
https://marck-av.github.io/seven-travels/
```

## Comandos útiles después

### Para actualizar el sitio después de cambios:

```bash
git add .
git commit -m "Actualización del sitio"
git push
```

Los cambios se reflejarán en 1-2 minutos.

## Solución de problemas

### Si dice "repository already exists":
Ya creaste el repositorio, solo haz el push:
```bash
git push -u origin main
```

### Si pide usuario y contraseña:
GitHub ahora usa **tokens** en lugar de contraseñas.

1. Ve a: https://github.com/settings/tokens
2. Click "Generate new token (classic)"
3. Dale todos los permisos de "repo"
4. Copia el token
5. Úsalo como contraseña cuando git lo pida

O mejor: usa SSH (ver README.md)

### Si la página no carga:
- Espera 2-3 minutos
- Verifica que elegiste branch "main" en Settings > Pages
- Verifica que el repositorio es "Public"

## Verificar que funciona

1. Ve a tu URL: `https://TU-USUARIO.github.io/seven-travels/`
2. Prueba el formulario
3. Verifica que el botón de WhatsApp funciona
4. Comparte el link en redes sociales

¡Listo! Tu sitio está en internet 🎉
