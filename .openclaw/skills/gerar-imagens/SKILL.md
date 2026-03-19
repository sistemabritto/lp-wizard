---
name: gerar-imagens
description: |
  Gera imagens via OpenRouter com aprovação visual.
  Análise automática com visão. 3 tentativas máximo por imagem.
version: "1.0"
author: LP Wizard
tags:
  - imagens
  - openrouter
  - visual
triggers:
  - /gerar-imagens
  - criar imagens
  - gerar visuais
---

# /gerar-imagens — Geração Visual

## INICIALIZAÇÃO

```
╔══════════════════════════════════════════════╗
║  ⚡ PROTOCOLO S1 — IMAGENS                   ║
║  Geração via OpenRouter · ~10 min            ║
╚══════════════════════════════════════════════╝

Requisitos:
- OPENROUTER_API_KEY no .env
- docs/COPY.md com descrições das imagens necessárias

⚡ Pronto?
```

---

## REGRAS

- Gera imagem → descreve em detalhes → pergunta se aprovado
- **3 tentativas máximo** por imagem — nunca bloqueia o fluxo
- Se não aprovar após 3, usa placeholder e documenta
- Modelo padrão: `bytedance-seed/seedream-4.5`

---

## FLUXO

```
╔══════════════════════════════════════════════╗
║  ⚡ IMAGENS ▓▓▓▓▓▓░░░░░░░░░░░░░░░░  {N}/{T} ║
╚══════════════════════════════════════════════╝

🖼️ Imagem: {nome}

Prompt: {prompt baseado na copy}

[Tentativa 1/3]
🎨 Gerando... 
📊 Análise: {descrição detalhada da imagem gerada}

✅ Aprovado? (s/n/ajustar)
```

---

## FINALIZAÇÃO

```
╔══════════════════════════════════════════════╗
║  ✅ IMAGENS CONCLUÍDAS                       ║
╠══════════════════════════════════════════════╣
║  🖼️  {N} imagens geradas     ✓               ║
║  📁 public/images/           ✓               ║
╠══════════════════════════════════════════════╣
║  ⚡ PRÓXIMO: /construir                      ║
╚══════════════════════════════════════════════╝
```

---

## Próximo Passo

Execute `/construir` para montar a landing page.
