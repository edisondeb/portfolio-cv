#!/bin/bash
# ============================================
# DEPLOY.SH - Script para deploy con GitHub CLI
# Portfolio CV - Edison Arellano Mamani
# ============================================

# Colores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Función para imprimir mensajes
print_message() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# ============================================
# VERIFICACIONES PREVIAS
# ============================================

print_message "🚀 Iniciando deploy del portafolio..."

# Verificar si gh está instalado
if ! command -v gh &> /dev/null; then
    print_error "GitHub CLI no está instalado"
    print_message "📥 Instalar GitHub CLI:"
    print_message "   Windows: winget install --id GitHub.cli"
    print_message "   macOS: brew install gh"
    print_message "   Linux: sudo apt install gh"
    exit 1
fi

print_success "GitHub CLI está instalado"

# Verificar autenticación
if ! gh auth status &> /dev/null; then
    print_warning "No estás autenticado con GitHub CLI"
    print_message "🔐 Ejecuta: gh auth login"
    exit 1
fi

print_success "Autenticado con GitHub CLI"

# Verificar si es un repositorio Git
if [ ! -d ".git" ]; then
    print_warning "Este directorio no es un repositorio Git"
    print_message "📁 Inicializando repositorio Git..."
    git init
    git add .
    git commit -m "feat: initial commit"
fi

# ============================================
# CREAR REPOSITORIO Y DEPLOY
# ============================================

# Obtener nombre del directorio actual como nombre del repositorio
REPO_NAME=$(basename "$(pwd)")
REPO_NAME=$(echo "$REPO_NAME" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9-]/-/g')

print_message "📁 Nombre del repositorio: $REPO_NAME"

# Verificar si el repositorio ya existe
if gh repo view "$REPO_NAME" &> /dev/null; then
    print_warning "El repositorio $REPO_NAME ya existe"
    print_message "📤 Subiendo cambios..."
    
    # Agregar y commit
    git add .
    git commit -m "feat: update portfolio $(date +'%Y-%m-%d')" 2>/dev/null || true
    
    # Push a GitHub
    git push origin main 2>/dev/null || git push origin master 2>/dev/null
    
    print_success "Cambios subidos a GitHub"
else
    print_message "📁 Creando repositorio en GitHub..."
    
    # Crear repositorio público
    gh repo create "$REPO_NAME" --public --source=. --remote=origin --push
    
    print_success "Repositorio creado: https://github.com/$(gh api user -q .login)/$REPO_NAME"
fi

# ============================================
# HABILITAR GITHUB PAGES
# ============================================

print_message "🌐 Habilitando GitHub Pages..."

# Obtener usuario
USER=$(gh api user -q .login)

# Habilitar GitHub Pages (esto puede fallar si ya está habilitado)
gh api "repos/$USER/$REPO_NAME/pages" -X POST -f source='{"branch":"main","path":"/"}' 2>/dev/null || \
gh api "repos/$USER/$REPO_NAME/pages" -X POST -f source='{"branch":"master","path":"/"}' 2>/dev/null || \
print_warning "GitHub Pages puede que ya esté habilitado"

print_success "GitHub Pages configurado"

# ============================================
# VERIFICAR DEPLOY
# ============================================

print_message "🔍 Verificando estado del deploy..."

# Esperar un momento para que GitHub procese
sleep 3

# Verificar estado de GitHub Pages
PAGES_STATUS=$(gh api "repos/$USER/$REPO_NAME/pages" -q '.status' 2>/dev/null)

if [ "$PAGES_STATUS" = "built" ]; then
    print_success "¡Deploy completado exitosamente!"
else
    print_warning "El deploy está en progreso (estado: $PAGES_STATUS)"
    print_message "⏳ Puede tomar unos minutos en estar disponible"
fi

# ============================================
# INFORMACIÓN FINAL
# ============================================

echo ""
echo "=========================================="
echo "✅ DEPLOY COMPLETADO"
echo "=========================================="
echo ""
print_message "📁 Repositorio: https://github.com/$USER/$REPO_NAME"
print_message "🌐 Sitio Web: https://$USER.github.io/$REPO_NAME"
echo ""
print_message "📋 Próximos pasos:"
print_message "   1. Espera 2-5 minutos para que GitHub Pages se active"
print_message "   2. Visita https://$USER.github.io/$REPO_NAME"
print_message "   3. Actualiza los placeholders (tusuario, email, etc.)"
echo ""
print_message "🔧 Comandos útiles:"
print_message "   gh browse --pages    # Abrir GitHub Pages"
print_message "   gh repo view         # Ver información del repositorio"
print_message "   git log --oneline    # Ver historial de commits"
echo ""
print_success "¡Tu portafolio está en línea! 🎉"
