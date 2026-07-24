# Portfolio CV - Edison Arellano Mamani

Portafolio profesional personalizado para Ingeniero de Sistemas y Desarrollador Full Stack.

## 🚀 Deploy con GitHub CLI (Recomendado)

### Opción 1: Script Automatizado (Recomendado)

```bash
# Ejecutar script de deploy
chmod +x deploy.sh
./deploy.sh
```

### Opción 2: Comandos Manuales

```bash
# 1. Instalar GitHub CLI (si no está instalado)
# Windows:
winget install --id GitHub.cli

# macOS:
brew install gh

# Linux:
sudo apt install gh

# 2. Autenticarse
gh auth login

# 3. Crear repositorio y subir código
gh repo create portfolio-cv --public --source=. --remote=origin --push

# 4. Habilitar GitHub Pages
gh api repos/{owner}/{repo}/pages -X POST -f source='{"branch":"main","path":"/"}'

# 5. Abrir sitio en navegador
gh browse --pages
```

### Opción 3: Git Tradicional

```bash
# Inicializar repositorio
git init
git add .
git commit -m "feat: initial portfolio"

# Crear repositorio en GitHub y subir
git remote add origin https://github.com/usuario/portfolio-cv.git
git push -u origin main
```

## 🌐 URLs de Acceso

- **Repositorio**: https://github.com/{usuario}/portfolio-cv
- **Sitio Web**: https://{usuario}.github.io/portfolio-cv

## 📁 Estructura del Proyecto

```
portfolio-cv/
├── index.html                 # Archivo principal
├── README.md                  # Documentación
├── deploy.sh                  # Script de deploy
├── .gitignore                 # Archivos ignorados
├── assets/
│   ├── css/
│   │   ├── variables.css      # Variables CSS (colores, tipografía)
│   │   ├── style.css          # Estilos principales
│   │   ├── responsive.css     # Diseño responsivo
│   │   └── animations.css     # Animaciones y transiciones
│   ├── js/
│   │   └── main.js            # JavaScript (interacciones)
│   ├── images/
│   │   ├── profile.jpg        # Foto de perfil
│   │   └── projects/          # Imágenes de proyectos
│   ├── files/
│   │   └── CV-Edison-Arellano.pdf  # CV descargable
│   └── icons/
│       └── favicon.png        # Favicon
└── plan.md                    # Plan de desarrollo
```

## 🎨 Secciones del Portafolio

1. **Hero** - Presentación principal con foto, nombre y botones
2. **Key Metrics** - Estadísticas impactantes (años, proyectos, clientes, tecnologías)
3. **Sobre Mí** - Información personal y profesional
4. **Habilidades** - Tecnologías con niveles de dominio (Experto/Avanzado/Intermedio)
5. **Educación** - Formación académica (timeline)
6. **Experiencia** - Trayectoria profesional (timeline expandible)
7. **Proyectos** - Galería de proyectos destacados
8. **Certificaciones** - Certificados y cursos
9. **Contacto** - Formulario de contacto
10. **Footer** - Redes sociales y copyright

## 🛠️ Tecnologías Utilizadas

- **HTML5** - Estructura semántica
- **CSS3** - Estilos con variables personalizadas
- **JavaScript ES6** - Interacciones y animaciones
- **AOS** - Animate On Scroll
- **Font Awesome** - Iconos
- **Google Fonts** - Tipografía Inter

## ✨ Características

- ✅ Diseño responsive (mobile-first)
- ✅ Modo oscuro profesional
- ✅ Animaciones suaves (AOS)
- ✅ SEO optimizado (meta tags, Schema.org)
- ✅ Accesibilidad (a11y)
- ✅ Rendimiento optimizado
- ✅ Timeline expandible
- ✅ Tech pills interactivos
- ✅ Contador de métricas animado
- ✅ Formulario de contacto (Formspree)

## 📝 Personalización

### Cambiar colores

Edita `assets/css/variables.css`:

```css
:root {
    --color-primary: #2563EB;      /* Color principal */
    --color-accent: #38BDF8;       /* Color de acento */
    --color-bg-dark: #0F172A;      /* Fondo oscuro */
}
```

### Cambiar contenido

Edita `index.html` y reemplaza los textos de ejemplo con tu información.

### Agregar proyectos

1. Agrega imágenes en `assets/images/projects/`
2. Agrega las tarjetas de proyectos en `index.html`

### Conectar formulario

1. Crea una cuenta en [Formspree](https://formspree.io)
2. Reemplaza `YOUR_FORM_ID` en `assets/js/main.js`

## 🔧 Comandos Útiles

```bash
# Ver estado del repositorio
gh repo view

# Ver historial de commits
git log --oneline -10

# Crear nueva rama
git checkout -b feature/nueva-funcionalidad

# Subir cambios
git add .
git commit -m "feat: descripción del cambio"
git push origin main

# Verificar GitHub Pages
gh api repos/{owner}/{repo}/pages
```

## 📄 Licencia

Este proyecto es de uso personal. Puedes modificarlo libremente para tu portafolio.

---

**Desarrollado con ❤️ por Edison Arellano Mamani**
