#!/bin/bash
# ============================================
# LP WIZARD — Instalação
# ============================================
# curl -fsSL https://raw.githubusercontent.com/sistemabritto/lp-wizard/main/install.sh | bash

set -e

REPO="https://github.com/sistemabritto/lp-wizard.git"
PROJETO=${1:-"lp-wizard"}

echo "╔══════════════════════════════════════════════╗"
echo "║  ⚡ LP WIZARD — INSTALAÇÃO                   ║"
echo "╚══════════════════════════════════════════════╝"
echo ""

# Clonar se não existe
if [ ! -d "$PROJETO" ]; then
  echo "📦 Clonando repositório..."
  git clone $REPO $PROJETO
fi

cd $PROJETO

# Detectar CLI
IDE=""

if command -v claude &> /dev/null; then
  IDE="claude-code"
  echo "✅ Claude Code detectado"
elif command -v openclaw &> /dev/null || [ -d "$HOME/.openclaw" ]; then
  IDE="openclaw"
  echo "✅ OpenClaw detectado"
elif [ -d "$HOME/.config/antigravity" ] || [ -d ".agent" ]; then
  IDE="antigravity"
  echo "✅ Antigravity detectado"
elif [ -d "$HOME/.cursor" ]; then
  IDE="cursor"
  echo "✅ Cursor detectado"
else
  echo "CLI não detectado automaticamente."
  echo ""
  echo "Qual CLI você usa?"
  echo "  1) Claude Code"
  echo "  2) OpenClaw"
  echo "  3) Antigravity"
  echo "  4) Cursor / Windsurf"
  read -p "Escolha (1-4): " choice
  case $choice in
    1) IDE="claude-code" ;;
    2) IDE="openclaw" ;;
    3) IDE="antigravity" ;;
    4) IDE="cursor" ;;
    *) IDE="claude-code" ;;
  esac
fi

echo ""

# Criar .env se não existe
if [ ! -f ".env" ]; then
  cp .env.example .env
  echo "✅ .env criado"
fi

# Instalar dependências
if [ -f "package.json" ]; then
  echo "📦 Instalando dependências..."
  npm install --silent
  echo "✅ Dependências instaladas"
fi

echo ""
echo "╔══════════════════════════════════════════════╗"
echo "║  ✅ INSTALAÇÃO CONCLUÍDA                     ║"
echo "╠══════════════════════════════════════════════╣"
echo "║  CLI: $IDE"
echo "╠══════════════════════════════════════════════╣"
echo "║  Próximos passos:                            ║"
echo "║  1. cd $PROJETO"
echo "║  2. Configure .env com sua GOOGLE_API_KEY    ║"
echo "║  3. Abra o CLI escolhido                     ║"
echo "║  4. Digite: /ping-pong                       ║"
echo "╚══════════════════════════════════════════════╝"
