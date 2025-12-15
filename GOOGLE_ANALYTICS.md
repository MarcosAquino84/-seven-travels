# Configurar Google Analytics para Seven Travels

Google Analytics te permitirá ver cuántas personas visitan tu sitio, de dónde vienen, qué hacen, etc.

## Pasos para Configurar Google Analytics

### 1. Crear Cuenta de Google Analytics

1. Ve a https://analytics.google.com
2. Inicia sesión con tu cuenta de Google
3. Haz clic en "Comenzar a medir"
4. Completa los datos:
   - **Nombre de la cuenta**: Seven Travels
   - **Nombre de la propiedad**: Sitio Web Seven Travels
   - **Zona horaria**: (GMT-06:00) Ciudad de México
   - **Moneda**: Peso mexicano (MXN)

### 2. Configurar la Propiedad

1. Selecciona "Web" como plataforma
2. Ingresa la URL de tu sitio (después de publicarlo)
3. Ingresa el nombre: "Seven Travels Landing Page"
4. Haz clic en "Crear flujo de datos"

### 3. Obtener el ID de Medición

Después de crear el flujo de datos, verás un **ID de medición** que se ve así:
```
G-XXXXXXXXXX
```

Por ejemplo: `G-ABC123DEF4`

### 4. Agregar el ID a tu Sitio Web

1. Abre el archivo `index.html`
2. Busca esta línea (está en la sección `<head>`):
   ```html
   <script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
   ```
3. Reemplaza `G-XXXXXXXXXX` con tu ID real
4. También reemplázalo en esta línea:
   ```javascript
   gtag('config', 'G-XXXXXXXXXX');
   ```

### Ejemplo Completo:

Si tu ID es `G-ABC123DEF4`, deberías tener:

```html
<script async src="https://www.googletagmanager.com/gtag/js?id=G-ABC123DEF4"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'G-ABC123DEF4');
</script>
```

## Qué Podrás Ver en Google Analytics

### Métricas Principales

1. **Usuarios**: Cuántas personas visitan tu sitio
2. **Sesiones**: Cuántas veces se visita el sitio
3. **Tiempo en el sitio**: Cuánto tiempo pasan los visitantes
4. **Páginas vistas**: Cuántas páginas ven
5. **Tasa de rebote**: Cuántos se van sin interactuar

### Eventos Personalizados que Rastreamos

Tu sitio ya está configurado para rastrear estos eventos:

1. **Compartir en redes sociales**:
   - Facebook
   - Twitter
   - WhatsApp
   - LinkedIn

2. **Generación de leads**:
   - Cuando alguien completa el formulario de cotización

3. **Contacto directo**:
   - Clics en el botón flotante de WhatsApp

### Cómo Ver los Eventos

1. En Google Analytics, ve a **Informes** → **Eventos**
2. Verás eventos como:
   - `share` (compartir en redes)
   - `generate_lead` (formularios enviados)
   - `contact` (clics en WhatsApp)

## Informes Útiles

### 1. Adquisición (De dónde vienen)
- **Informes** → **Adquisición** → **Descripción general**
- Te muestra si vienen de:
  - Facebook
  - Google
  - WhatsApp
  - Enlaces directos

### 2. Comportamiento (Qué hacen)
- **Informes** → **Engagement** (Interacción)
- Te muestra:
  - Cuánto tiempo pasan en el sitio
  - Qué secciones ven más
  - Cuándo se van

### 3. Conversiones (Resultados)
- **Informes** → **Eventos**
- Filtra por `generate_lead` para ver cuántas cotizaciones generaste

## Configurar Objetivos (Conversiones)

1. Ve a **Configuración** → **Eventos**
2. Encuentra el evento `generate_lead`
3. Marca como "Conversión"
4. Ahora podrás ver cuántas conversiones (cotizaciones) generas

## Análisis Recomendados

### Análisis Semanal
- Cuántas personas visitaron el sitio
- Cuántas cotizaciones se generaron
- Tasa de conversión (visitantes → cotizaciones)

### Análisis Mensual
- Tendencias de crecimiento
- Qué redes sociales traen más tráfico
- Mejor día/hora para publicar contenido

### Métricas de Éxito

Calcula:
```
Tasa de conversión = (Cotizaciones / Visitantes) × 100

Ejemplo:
100 visitantes, 10 cotizaciones = 10% de conversión
```

## Consejos de Optimización

### Si la tasa de conversión es baja (<5%):
1. Revisa los precios (pueden estar confusos)
2. Simplifica el formulario
3. Agrega más testimonios
4. Mejora las fotos de las unidades

### Si hay muchos visitantes pero pocas conversiones:
1. El formulario puede ser muy largo
2. Los precios no están claros
3. Falta información importante

### Si hay pocas visitas:
1. Comparte más en redes sociales
2. Considera anuncios de Facebook/Instagram
3. Usa el código QR en materiales impresos
4. Pide a clientes satisfechos que compartan

## Dashboard Recomendado

Crea un reporte personalizado con:
1. Usuarios totales
2. Nuevos usuarios
3. Conversiones (generate_lead)
4. Tasa de conversión
5. Fuente de tráfico principal
6. Eventos de compartir en redes

## Preguntas Frecuentes

**¿Cuánto tarda en aparecer la información?**
- Datos en tiempo real: Inmediato
- Informes completos: 24-48 horas

**¿Es gratis Google Analytics?**
- Sí, completamente gratis para sitios pequeños y medianos

**¿Puedo ver quién visita mi sitio?**
- No verás nombres específicos (privacidad)
- Verás datos agregados y anónimos

**¿Funciona en todos los navegadores?**
- Sí, funciona en Chrome, Safari, Firefox, Edge, etc.

## Próximos Pasos

1. ✅ Crear cuenta de Google Analytics
2. ✅ Obtener ID de medición
3. ✅ Reemplazar G-XXXXXXXXXX en index.html
4. ✅ Publicar el sitio
5. ✅ Verificar que funciona (Tiempo real en Analytics)
6. ✅ Revisar informes semanalmente

---

**Nota**: Una vez que tengas tu ID de Google Analytics, simplemente reemplaza las dos ocurrencias de `G-XXXXXXXXXX` en el archivo `index.html` y estarás listo.
