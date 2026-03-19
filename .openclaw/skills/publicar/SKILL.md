---
name: publicar
description: |
  Deploy automático: GitHub + Vercel + DNS.
  Requer GITHUB_TOKEN e VERCEL_TOKEN no .env.
version: "1.0"
author: LP Wizard
tags:
  - deploy
  - publicacao
  - vercel
triggers:
  - /publicar
  - publicar pagina
  - deploy
---

# /publicar — Deploy Automático

## REQUISITOS

```
.env:
  GITHUB_TOKEN=ghp_xxx
  VERCEL_TOKEN=xxx
```

---

## FLUXO

```
╔══════════════════════════════════════════════╗
║  ⚡ PROTOCOLO S1 — PUBLICAÇÃO                ║
╚══════════════════════════════════════════════╝

☐ Criar repositório GitHub
☐ Push do código
☐ Deploy Vercel
☐ Configurar domínio (se tiver)
☐ Salvar DNS em docs/dns-records.txt
```

---

## FINALIZAÇÃO

```
╔══════════════════════════════════════════════╗
║  ✅ DEPLOY CONCLUÍDO                         ║
╠══════════════════════════════════════════════╣
║  🔗 URL: {url}               ✓               ║
║  🌐 Domínio: {domain}        ✓               ║
║  📋 DNS salvo em docs/       ✓               ║
╠══════════════════════════════════════════════╣
║  🎉 Landing page no ar!                      ║
╚══════════════════════════════════════════════╝
```
