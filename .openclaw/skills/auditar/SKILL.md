---
name: auditar
description: |
  Geraldo e Vera auditam 7 dimensões pré-deploy.
  Veredicto final — você desempata se divergirem.
version: "1.0"
author: LP Wizard
tags:
  - auditoria
  - validacao
  - pre-deploy
triggers:
  - /auditar
  - auditar projeto
---

# /auditar — Auditoria Pré-Deploy

## Agentes Envolvidos

- **Geraldo** — PM (avalia entrega)
- **Vera** — Estrategista (avalia conversão)

---

## 7 DIMENSÕES

| # | Dimensão | Critério |
|---|---|---|
| 1 | Copy | Ativa 3 cérebros na ordem certa? |
| 2 | UI | Visual converte em mobile? |
| 3 | Performance | LCP < 1s? GTmetrix A? |
| 4 | Funil | CTA claro? Checkout funciona? |
| 5 | Tracking | Pixel/GTM/GA4 configurados? |
| 6 | Segurança | .env protegido? Headers corretos? |
| 7 | Oportunidades | O que pode melhorar? |

---

## FLUXO

```
╔══════════════════════════════════════════════╗
║  ⚡ PROTOCOLO S1 — AUDITORIA                 ║
║  7 dimensões · 2 supervisores                ║
╚══════════════════════════════════════════════╝

👑 Geraldo: {veredicto por dimensão}
👸 Vera: {veredicto por dimensão}

{Se divergirem} 👑Você desempata
```

---

## FINALIZAÇÃO

```
╔══════════════════════════════════════════════╗
║  ✅ AUDITORIA CONCLUÍDA                      ║
╠══════════════════════════════════════════════╣
║  📋 7/7 dimensões aprovadas  ✓               ║
║  🟢 APTO PARA DEPLOY         ✓               ║
╠══════════════════════════════════════════════╣
║  ⚡ PRÓXIMO: /publicar                       ║
╚══════════════════════════════════════════════╝
```
