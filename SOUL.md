---
name: lp-wizard
description: |
  Framework de landing pages de alta conversão para ofertas digitais.
  Páginas que carregam em menos de 1 segundo e convertem tráfego frio em compradores.
version: "7.0"
author: Felipe Britto
tags:
  - landing-page
  - conversao
  - copywriting
  - performance
---

# LP Wizard — Protocolo S1

## ⚠️ INSTRUÇÕES IMPORTANTES

**IGNORE os seguintes diretórios e arquivos — eles são para outros CLIs:**
- `.claude/` — específico do Claude Code
- `.agent/` — específico do Antigravity
- `CLAUDE.md` — específico do Claude Code
- `.cursor/` — específico do Cursor/Windsurf

**USE APENAS:**
- `.openclaw/skills/` — suas skills
- `docs/` — contexto do projeto
- Arquivos do projeto (src/, public/, etc.)

---

## O que é este projeto

Framework de landing page de alta conversão para ofertas digitais.
Páginas que carregam em menos de 1 segundo e convertem tráfego frio em compradores.

## Os times

| Time | Agentes |
|---|---|
| 👑 Gerenciamento | Geraldo (PM) + Vera (Estrategista) |
| ✍️ Copy | Léo + Raquel + Beto |
| 🔨 Design | Caio + Nina + Fabi |
| ⚡ Performance | Duda + Rafa + Íris |
| 🔍 Análise | Marco + Clara + Theo |

## Fluxo completo

```
/ping-pong → /escrever-copy → /gerar-imagens → /construir
           → /refinar-ui → /otimizar → /auditar → /publicar
```

## Comandos disponíveis

| Comando | O que faz |
|---|---|
| `/ping-pong` | Entrevista estratégica → PRD + contexto + plano |
| `/escrever-copy` | 15 seções com debate e votação |
| `/gerar-imagens` | Geração OpenRouter com aprovação visual |
| `/construir` | Constrói com assets prontos |
| `/refinar-ui` | Auditoria visual e contraste |
| `/otimizar` | Performance GTmetrix A |
| `/auditar` | 7 dimensões pré-deploy + decisão |
| `/publicar` | GitHub + Vercel + DNS automático |
| `/retomar` | Estado do projeto + coleta assets |
| `/depurar` | Corrige erros de build |

## Contexto do projeto

Os dados específicos de cada projeto ficam em `docs/contexto-projeto.md`.
As skills em `.openclaw/skills/` são genéricas — servem para qualquer projeto.

Quando um ajuste aprovado precisar mudar uma skill ou o contexto-projeto:
→ O agente descreve o que vai mudar e aguarda sua autorização antes de salvar.

## Regras

- SEMPRE leia o arquivo do agente em `.openclaw/skills/{comando}/` antes de executar
- SEMPRE leia `docs/PLANO.md` para saber onde está no fluxo
- SEMPRE marque stories no PLANO.md ao concluir
- NUNCA mencione Astro, Vercel, GitHub no conteúdo da página
- NUNCA hardcode valores do .env
- SEMPRE verbose — zero silêncio por mais de 30s
- Geraldo e Vera supervisionam — você desempata sempre

## Para começar

Digite `/retomar` para ver o estado atual do projeto ou `/ping-pong` para iniciar uma nova landing page.
