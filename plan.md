# Proyecto: Portafolio Personal Profesional para GitHub Pages

Actúa como un **Senior Frontend Developer**, **UX/UI Designer** y **Software Architect**.

Quiero desarrollar un **portafolio personal profesional** que funcione como mi currículum web (CV online), siguiendo buenas prácticas de ingeniería de software. El proyecto debe ser completamente estático para poder desplegarse en **GitHub Pages**, sin backend.

## Objetivo

Crear un sitio web moderno, elegante, responsive, rápido y optimizado para mostrar mi perfil profesional, experiencia, habilidades, proyectos y datos de contacto.

El sitio debe transmitir profesionalismo y servir para conseguir empleo como Ingeniero de Sistemas y Desarrollador Full Stack.

---

# Tecnologías

Utiliza únicamente tecnologías compatibles con GitHub Pages.

* HTML5
* CSS3
* JavaScript ES6
* Bootstrap 5
* Font Awesome
* Google Fonts (Inter o Poppins)
* AOS (Animate On Scroll)
* Git

No utilizar:

* React
* Angular
* Vue
* Node.js
* PHP
* Bases de datos
* Backend

Todo debe funcionar únicamente desde archivos estáticos.

---

# Arquitectura del proyecto

Crear la siguiente estructura:

portfolio-cv/

├── index.html

├── README.md

├── LICENSE

├── .gitignore

│

├── assets/

│ ├── css/

│ │ ├── variables.css

│ │ ├── style.css

│ │ ├── responsive.css

│ │ └── animations.css

│ │

│ ├── js/

│ │ └── main.js

│ │

│ ├── images/

│

│ ├── icons/

│

│ ├── fonts/

│

│ └── files/

---

# Diseño

El diseño debe ser similar al estilo de:

* Apple
* GitHub
* Vercel
* Stripe

Debe ser:

* Minimalista
* Profesional
* Elegante
* Responsive
* Moderno
* Limpio
* Fácil de leer

No quiero una plantilla genérica.

Debe sentirse como un sitio web premium.

---

# Paleta de colores

Usar colores profesionales.

Primario

#2563EB

Fondo

#0F172A

Secciones

#111827

Texto

#FFFFFF

Texto secundario

#94A3B8

Color de acento

#38BDF8

Todos los colores deben almacenarse en variables.css.

---

# Tipografía

Utilizar

Inter

o

Poppins

con buena jerarquía visual.

---

# Responsive

Debe adaptarse perfectamente a:

* móviles
* tablets
* laptops
* monitores grandes

No debe existir ningún elemento que se superponga.

No debe existir scroll horizontal.

Todo debe reorganizarse automáticamente.

---

# Navbar

Navbar fija.

Debe contener:

Inicio

Sobre mí

Habilidades

Experiencia

Educación

Proyectos

Certificados

Contacto

Debe incluir:

Logo personal

Botón de modo oscuro/claro (preparado aunque inicialmente se use tema oscuro)

Menú hamburguesa en móviles.

---

# Hero

La primera pantalla debe incluir:

Fotografía profesional

Nombre

Cargo

Pequeña descripción

Botón:

Descargar CV

Botón:

Ver proyectos

Botones de redes sociales:

GitHub

LinkedIn

Correo

---

# Key Metrics (Estadísticas Impactantes)

Inmediatamente después del Hero, mostrar estadísticas clave que impacten al reclutador.

Formato: Grid de 4 métricas con fondo degradado.

Ejemplo:

```
┌─────────────┬─────────────┬─────────────┬─────────────┐
│    X+       │    X+       │    X+       │    X+       │
│  Años Exp.  │ Proyectos   │  Clientes   │ Tecnologías │
└─────────────┴─────────────┴─────────────┴─────────────┘
```

Cada métrica debe incluir:
- Valor numérico destacado
- Label descriptivo
- Fondo degradado (azul a morado)

---

# Sobre mí

Debe tener:

Título

Fotografía

Descripción profesional

Información personal organizada.

Botones de redes sociales y CV.

---

# Habilidades

Mostrar habilidades mediante tarjetas con niveles de dominio.

Agrupar por categorías:

Frontend

Backend

Bases de datos

Mobile

Herramientas

Soft Skills

Cada habilidad debe tener:

- Icono (Font Awesome)
- Nombre de la tecnología
- Nivel de dominio (Experto, Avanzado, Intermedio, Básico)

Ejemplo de nivel:

```
Experto    → Verde (#22C55E)
Avanzado   → Azul (#3B82F6)
Intermedio → Amarillo (#EAB308)
Básico     → Gris (#6B7280)
```

Formato visual:

```
┌─────────────────────────────────────────┐
│  FRONTEND                               │
│  ┌─────────┐ ┌─────────┐ ┌─────────┐  │
│  │ HTML5   │ │ CSS3    │ │ JS ES6  │  │
│  │ Experto │ │ Experto │ │ Experto │  │
│  └─────────┘ └─────────┘ └─────────┘  │
│  ┌─────────┐ ┌─────────┐ ┌─────────┐  │
│  │ React   │ │ Vue.js  │ │ Bootstr │  │
│  │ Avanzad │ │ Avanzad │ │ Interme │  │
│  └─────────┘ └─────────┘ └─────────┘  │
└─────────────────────────────────────────┘
```

---

# Educación

Timeline vertical.

Universidad

Carrera

Fechas

Descripción.

---

# Experiencia

Timeline profesional con botón expandir/colapsar.

Cada experiencia debe incluir:

- Empresa
- Cargo
- Fecha (inicio - fin o "Presente")
- Descripción breve (siempre visible)
- Descripción detallada (oculta inicialmente)
- Tecnologías utilizadas

Comportamiento:

- Por defecto: Mostrar solo título, empresa, fecha y descripción breve
- Al hacer clic en "Ver más...": Mostrar detalles completos
- Al hacer clic en "Ver menos...": Ocultar detalles

Formato visual:

```
┌─────────────────────────────────────────────────────────────┐
│  ● Desarrollador Full Stack                                 │
│    Empresa XYZ                          2023 - Presente     │
│    Descripción breve del puesto...                         │
│                                                             │
│    [Ver más...]                                             │
│                                                             │
│    ▼ (expandido)                                            │
│    • Logro 1                                                │
│    • Logro 2                                                │
│    • Tecnologías: React, Node.js, AWS                       │
│    [Ver menos...]                                           │
└─────────────────────────────────────────────────────────────┘
```

---

# Proyectos

Esta será la sección más importante.

Cada proyecto debe mostrarse como una tarjeta elegante.

Cada tarjeta tendrá:

Imagen

Título

Descripción

Tecnologías

Botón GitHub

Botón Demo

Botón Ver detalles

Preparar espacio para varios proyectos.

---

# Certificaciones

Mostrar certificados mediante tarjetas.

Cada tarjeta debe incluir:

Imagen

Nombre

Institución

Fecha

Botón Ver certificado.

---

# Tech Pills (Tecnologías como Badges)

Mostrar las tecnologías principales como badges redondeados.

Formato visual:

```
┌─────────────────────────────────────────────────────────────┐
│  [HTML5] [CSS3] [JavaScript] [React] [Node.js] [Git]       │
│  [Docker] [AWS] [MongoDB] [PostgreSQL] [Figma]             │
└─────────────────────────────────────────────────────────────┘
```

Estilo:

- Fondo: Color de la tecnología (ej: HTML5 = #E34F26)
- Texto: Blanco
- Border-radius: 20px (forma de pastilla)
- Padding: 0.4rem 0.8rem
- Font-size: 0.9rem

---

# Schema.org (SEO Avanzado)

Agregar datos estructurados para mejorar el SEO.

Incluir:

- Person (nombre, título, habilidades)
- WebSite (url, nombre)
- ProfilePage (página de perfil)

Ejemplo:

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Person",
  "name": "Edison Arellano Mamani",
  "jobTitle": "Ingeniero de Sistemas & Desarrollador Full Stack",
  "url": "https://tusuario.github.io/portfolio-cv",
  "sameAs": [
    "https://github.com/tusuario",
    "https://linkedin.com/in/tusuario"
  ]
}
</script>
```

---

# Contacto

Crear un formulario moderno.

Campos:

Nombre

Correo

Mensaje

Como GitHub Pages no tiene backend, dejar preparado para integrarlo posteriormente con Formspree.

También mostrar:

Correo

GitHub

LinkedIn

WhatsApp

---

# Footer

Debe contener:

Nombre

Copyright

Redes sociales

Botón para volver arriba.

---

# Animaciones

Agregar animaciones suaves usando AOS.

No exagerar.

Debe verse elegante.

---

# Accesibilidad

Utilizar:

HTML semántico

header

nav

main

section

article

footer

Agregar:

alt

aria-label

Buenas prácticas SEO.

---

# Rendimiento

Optimizar para obtener una puntuación alta en Lighthouse.

Reducir CSS innecesario.

Reducir JavaScript innecesario.

Utilizar imágenes optimizadas.

---

# Código

El código debe ser:

Profesional

Modular

Comentado

Ordenado

Fácil de mantener

Seguir buenas prácticas.

---

# Buenas Prácticas de Desarrollo

Aplicar principios de ingeniería de software durante todo el desarrollo.

## SOLID (adaptado a Frontend)

**S - Single Responsibility Principle (Responsabilidad Única)**
- Cada función JavaScript debe hacer una sola cosa
- Cada componente CSS debe ser reutilizable y enfocado
- Separar lógica de presentación en JavaScript

```javascript
// ✅ Correcto: una función, una responsabilidad
function toggleMobileMenu() { ... }
function handleScrollNavbar() { ... }
function validateContactForm() { ... }

// ❌ Incorrecto: múltiples responsabilidades
function handleEverything() { ... }
```

**O - Open/Closed Principle (Abierto/Cerrado)**
- CSS debe ser extensible sin modificar archivos existentes
- Usar variables CSS para personalización
- JavaScript debe permitir agregar funcionalidad sin modificar código base

**L - Liskov Substitution Principle (Sustitución de Liskov)**
- Las clases CSS deben ser intercambiables
- Los componentes deben funcionar de manera consistente

**I - Interface Segregation Principle (Segregación de Interfaces)**
- No forzar dependencias innecesarias
- Cargar solo lo necesario (Font Awesome solo los iconos usados)

**D - Dependency Inversion Principle (Inversión de Dependent)**
- JavaScript no debe depender de implementaciones concretas
- Usar eventos personalizados para comunicación entre componentes
- Inicializar funcionalidades de forma independiente

## KISS (Keep It Simple, Stupid)

- **Código simple y legible**: Preferir soluciones simples sobre complejas
- **Funciones pequeñas**: Máximo 20-30 líneas por función
- **Nombres descriptivos**: Variables y funciones deben explicar qué hacen
- **Evitar over-engineering**: No agregar complejidad innecesaria

```javascript
// ✅ Simple y claro
function scrollToSection(sectionId) {
  const section = document.getElementById(sectionId);
  if (section) {
    section.scrollIntoView({ behavior: 'smooth' });
  }
}

// ❌ Innecesariamente complejo
function scrollToSection(id) {
  document.getElementById(id)?.scrollIntoView({ behavior: 'smooth', block: 'start', inline: 'nearest' });
}
```

## Clean Code

### Nomenclatura
- **Variables**: `camelCase` → `userName`, `isMenuOpen`
- **Funciones**: `camelCase` con verbo → `handleClick`, `validateForm`
- **Clases CSS**: `kebab-case` → `card-project`, `nav-link`
- **Constantes**: `UPPER_SNAKE_CASE` → `SCROLL_THRESHOLD`

### Estructura del código
```javascript
// ✅ Organización clara
const App = {
  init() {
    this.setupNavbar();
    this.setupAnimations();
    this.setupContactForm();
  },
  
  setupNavbar() { ... },
  setupAnimations() { ... },
  setupContactForm() { ... }
};

App.init();
```

### Comentarios
```javascript
// ✅ Comentarios útiles
// Smooth scroll para navegación interna
function smoothScroll(target) { ... }

// ❌ Comentarios innecesarios
// Función que hace scroll
function scroll() { ... }
```

### CSS limpio
```css
/* ✅ Organización por componentes */
/* Variables */
:root { ... }

/* Base */
body { ... }

/* Layout */
.container { ... }

/* Components */
.card { ... }

/* Utilities */
.text-center { ... }
```

## DRY (Don't Repeat Yourself)

- Reutilizar selectores CSS comunes
- Crear clases utilitarias para estilos repetidos
- Usar mixins en JavaScript para código repetido

```css
/* ✅ Clases utilitarias */
.flex { display: flex; }
.flex-center { display: flex; align-items: center; justify-content: center; }
.text-primary { color: var(--primary); }
```

## YAGNI (You Aren't Gonna Need It)

- No implementar funcionalidades que no se usarán
- No crear componentes "por si acaso"
- Enfocarse en lo esencial del portafolio

## Separación de Concerns (Separación de Responsabilidades)

- **HTML**: Estructura y contenido semántico
- **CSS**: Presentación y diseño visual
- **JavaScript**: Comportamiento e interacción

```javascript
// ✅ JavaScript solo maneja comportamiento
document.addEventListener('DOMContentLoaded', () => {
  // Inicialización de módulos
  Navbar.init();
  Animations.init();
  ContactForm.init();
});
```

## Modularidad

- Dividir JavaScript en módulos lógicos
- CSS organizado por componentes
- Cada archivo tiene una responsabilidad clara

```javascript
// ✅ Módulos independientes
const Navbar = {
  init() { ... },
  toggle() { ... },
  handleScroll() { ... }
};

const ContactForm = {
  init() { ... },
  validate() { ... },
  submit() { ... }
};
```

## Consistencia

- Mantener mismo estilo de código en todo el proyecto
- Usar las mismas convenciones de nombres
- Formato consistente en indentación (2 espacios)
- Punto y coma al final de statements en JavaScript

## Accesibilidad (a11y)

- HTML semántico: `<header>`, `<nav>`, `<main>`, `<section>`, `<footer>`
- Atributos `alt` en todas las imágenes
- `aria-label` en elementos interactivos
- Navegación por teclado funcional
- Contraste de colores suficiente (WCAG 2.1 AA)

## Performance

- Carga diferida de imágenes (`loading="lazy"`)
- Minimizar peticiones HTTP
- CSS y JS comprimidos en producción
- Optimizar tamaño de imágenes

---

# README

Crear un README profesional que incluya:

Descripción

Tecnologías

Capturas (espacios reservados)

Cómo ejecutar

Cómo publicar en GitHub Pages

Licencia

Autor

---

# Git

Preparar el proyecto para trabajar con Git desde el primer día.

Incluir un .gitignore adecuado.

---

# Deploy con GitHub CLI (gh)

Utilizar GitHub CLI para crear repositorio y desplegar en GitHub Pages.

## Instalación de GitHub CLI

### Windows
```bash
winget install --id GitHub.cli
```

### macOS
```bash
brew install gh
```

### Linux
```bash
sudo apt install gh
```

## Autenticación
```bash
gh auth login
```

## Crear Repositorio y Deploy

### Opción 1: Comandos individuales
```bash
# Crear repositorio
gh repo create portfolio-cv --public --source=. --remote=origin --push

# Habilitar GitHub Pages
gh api repos/{owner}/{repo}/pages -X POST -f source='{"branch":"main","path":"/"}'

# Verificar deploy
gh api repos/{owner}/{repo}/pages

# Abrir sitio en navegador
gh browse --pages
```

### Opción 2: Script automatizado
```bash
# Ejecutar script de deploy
chmod +x deploy.sh
./deploy.sh
```

## Script deploy.sh

```bash
#!/bin/bash
# deploy.sh - Script para deploy con GitHub CLI

echo "🚀 Iniciando deploy del portafolio..."

# Verificar gh
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI no está instalado"
    echo "📥 Instalar: winget install --id GitHub.cli"
    exit 1
fi

# Verificar autenticación
if ! gh auth status &> /dev/null; then
    echo "🔐 Por favor, autentícate con: gh auth login"
    exit 1
fi

# Crear repositorio si no existe
if ! git remote -v | grep -q "github.com"; then
    echo "📁 Creando repositorio en GitHub..."
    gh repo create portfolio-cv --public --source=. --remote=origin --push
else
    echo "📤 Subiendo cambios..."
    git add .
    git commit -m "feat: update portfolio"
    git push origin main
fi

echo "✅ Deploy completado!"
echo "🌐 Tu portafolio: https://tusuario.github.io/portfolio-cv"
```

## URLs de Acceso

- **Repositorio**: https://github.com/{usuario}/portfolio-cv
- **Sitio Web**: https://{usuario}.github.io/portfolio-cv

## Comandos Útiles

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
gh api repos/{owner}/{repo}/pages | jq '.status'
```

---

# Objetivo final

No quiero únicamente una página web.

Quiero un proyecto profesional que pueda mostrar en entrevistas de trabajo y que demuestre buenas prácticas de desarrollo web.

Cada decisión de diseño debe justificarse pensando en la experiencia del usuario, el rendimiento, la accesibilidad, la mantenibilidad y la facilidad para desplegar el proyecto en GitHub Pages.
