---
name: depurar
description: |
  Diagnóstico automático de erros de build.
  Corrige o que pode, documenta o que precisa de ação manual.
version: "1.0"
author: LP Wizard
tags:
  - debug
  - correcao
  - erros
triggers:
  - /depurar
  - debug
  - corrigir erros
---

# /depurar — Correção de Erros

## FLUXO

```
╔══════════════════════════════════════════════╗
║  ⚡ PROTOCOLO S1 — DEPURAR                   ║
╚══════════════════════════════════════════════╝

🔍 Diagnosticando...
☐ Erros de sintaxe
☐ Dependências faltando
☐ Variáveis de ambiente
☐ Arquivos não encontrados
☐ Conflitos de merge
```

---

## RELATÓRIO

```
╔══════════════════════════════════════════════╗
║  🔧 RELATÓRIO DE CORREÇÕES                   ║
╠══════════════════════════════════════════════╣
║  ✅ Corrigido automaticamente:               ║
║  {lista de correções aplicadas}              ║
╠══════════════════════════════════════════════╣
║  ⚠️  Requer ação manual:                     ║
║  {lista de ações necessárias}                ║
╠══════════════════════════════════════════════╣
║  📝 Tente: npm run build                     ║
╚══════════════════════════════════════════════╝
```
