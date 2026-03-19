---
name: retomar
description: |
  Mapeia estado atual do projeto.
  Marco, Clara e Theo identificam onde você está e o que falta.
version: "1.0"
author: LP Wizard
tags:
  - status
  - retomar
  - continuacao
triggers:
  - /retomar
  - status
  - onde estou
---

# /retomar — Estado do Projeto

## Agentes Envolvidos

- **Marco** — Investigador (mapeia tudo)
- **Clara** — Examinadora (analisa estado)
- **Theo** — Caçador (inconsistências)

---

## FLUXO

```
╔══════════════════════════════════════════════╗
║  ⚡ PROTOCOLO S1 — RETOMAR                   ║
║  ~2 min para saber onde está                 ║
╚══════════════════════════════════════════════╝

🔍 Marco: Mapeando arquivos...
📋 Clara: Analisando estado de cada item...
⚠️  Theo: Caçando inconsistências...
```

---

## RELATÓRIO

```
╔══════════════════════════════════════════════╗
║  📊 ESTADO DO PROJETO                        ║
╠══════════════════════════════════════════════╣
║  Etapa atual: {etapa}                        ║
║  Progresso: {progresso}%                     ║
╠══════════════════════════════════════════════╣
║  ✅ Concluído:                               ║
║  {lista de itens concluídos}                 ║
╠══════════════════════════════════════════════╣
║  ⏳ Pendente:                                ║
║  {lista de itens pendentes}                  ║
╠══════════════════════════════════════════════╣
║  ⚠️  Inconsistências encontradas:            ║
║  {lista de problemas}                        ║
╠══════════════════════════════════════════════╣
║  ⚡ PRÓXIMO: {próximo comando}               ║
╚══════════════════════════════════════════════╝
```
