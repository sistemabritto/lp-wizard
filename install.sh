#!/bin/bash
# ============================================
# PROTOCOLO S1 — Instalação Multi-CLI
# ============================================
# Detecta o CLI e instala os comandos no lugar certo
# Suporta: Claude Code, Antigravity, OpenClaw, Cursor, Windsurf

set -e

PROJETO=${1:-$(pwd)}

echo "╔══════════════════════════════════════════════╗"
echo "║  ⚡ LP WIZARD — INSTALAÇÃO v7.1              ║"
echo "╚══════════════════════════════════════════════╝"
echo ""

# Detectar CLI
IDE=""

if command -v claude &> /dev/null; then
  IDE="claude-code"
  echo "✅ Claude Code detectado"
elif command -v openclaw &> /dev/null || [ -d "$HOME/.openclaw" ]; then
  IDE="openclaw"
  echo "✅ OpenClaw detectado"
elif [ -d "$HOME/.config/antigravity" ] || [ -d "$PROJETO/.agent" ]; then
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
FONTE="$(dirname "$0")"

case $IDE in
  claude-code)
    echo "📦 Instalando para Claude Code..."
    mkdir -p "$PROJETO/.claude/commands"
    mkdir -p "$PROJETO/.claude/skills"
    mkdir -p "$PROJETO/.claude/times"
    rsync -av "$FONTE/.claude/commands/" "$PROJETO/.claude/commands/"
    rsync -av "$FONTE/.claude/skills/" "$PROJETO/.claude/skills/"
    rsync -av "$FONTE/.claude/times/" "$PROJETO/.claude/times/"
    cp "$FONTE/CLAUDE.md" "$PROJETO/CLAUDE.md"
    echo "✅ Comandos instalados em .claude/commands/"
    ;;

  openclaw)
    echo "📦 Instalando para OpenClaw..."
    mkdir -p "$PROJETO/.openclaw/skills"
    # Copiar SOUL.md
    cp "$FONTE/SOUL.md" "$PROJETO/SOUL.md"
    # Copiar todas as skills
    rsync -av "$FONTE/.openclaw/skills/" "$PROJETO/.openclaw/skills/"
    echo "✅ SOUL.md criado na raiz do projeto"
    echo "✅ Skills instaladas em .openclaw/skills/"
    echo ""
    echo "⚠️  IMPORTANTE: Configure o workspace no openclaw.json:"
    echo "   agents.defaults.workspace = \"$PROJETO\""
    ;;

  antigravity)
    echo "📦 Instalando para Antigravity..."
    mkdir -p "$PROJETO/.agent/skills"
    mkdir -p "$PROJETO/.claude/commands"
    mkdir -p "$PROJETO/.claude/skills"
    mkdir -p "$PROJETO/.claude/times"
    # Skills ficam em .agent/skills/ (stubs que apontam para .claude/)
    rsync -av "$FONTE/.agent/skills/" "$PROJETO/.agent/skills/"
    # Fonte de verdade em .claude/
    rsync -av "$FONTE/.claude/commands/" "$PROJETO/.claude/commands/"
    rsync -av "$FONTE/.claude/skills/" "$PROJETO/.claude/skills/"
    rsync -av "$FONTE/.claude/times/" "$PROJETO/.claude/times/"
    cp "$FONTE/CLAUDE.md" "$PROJETO/CLAUDE.md"
    echo "✅ Skills instaladas em .agent/skills/"
    echo "✅ Fonte de verdade em .claude/commands/"
    ;;

  cursor|windsurf)
    echo "📦 Instalando para Cursor/Windsurf..."
    mkdir -p "$PROJETO/.cursor/skills"
    rsync -av "$FONTE/.claude/commands/" "$PROJETO/.cursor/skills/"
    rsync -av "$FONTE/.claude/skills/" "$PROJETO/.cursor/skills/"
    echo "✅ Skills instaladas em .cursor/skills/"
    ;;
esac

# Setup base do projeto
echo ""
echo "📋 Configurando projeto base..."
cp "$FONTE/.env.example" "$PROJETO/.env.example" 2>/dev/null || true
cp "$FONTE/astro.config.mjs" "$PROJETO/astro.config.mjs" 2>/dev/null || true
cp "$FONTE/package.json" "$PROJETO/package.json" 2>/dev/null || true
mkdir -p "$PROJETO/public/images"
touch "$PROJETO/public/images/.gitkeep" 2>/dev/null || true
mkdir -p "$PROJETO/docs"
cp "$FONTE/docs/contexto-projeto.md" "$PROJETO/docs/contexto-projeto.md" 2>/dev/null || true

echo ""
echo "╔══════════════════════════════════════════════╗"
echo "║  ✅ INSTALAÇÃO CONCLUÍDA                     ║"
echo "╠══════════════════════════════════════════════╣"
echo "║  CLI: $IDE"
echo "╠══════════════════════════════════════════════╣"
echo "║  Próximos passos:                            ║"
echo "║  1. cp .env.example .env                     ║"
echo "║  2. npm install                              ║"
echo "║  3. Abra o CLI escolhido                     ║"
echo "║  4. /retomar                                 ║"
echo "╚══════════════════════════════════════════════╝"
