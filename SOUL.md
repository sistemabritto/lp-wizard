---
name: lp-wizard
version: "7.2"
description: Framework de landing page de alta conversão. Squads de IA que debatem, votam e constroem.
author: sistemabritto
---

# LP Wizard

Framework de landing page de alta conversão para ofertas digitais.

## Squads

| Squad | Agentes |
|---|---|
| 🔍 Descoberta | David (Executor) + Gary (Revisor) + Claude (Supervisor) |
| ✍️ Conteúdo | John (Executor) + Gene (Revisor) + Robert (Supervisor) |
| 🔨 Construção | Pierre (Executor) + Lina (Revisora) + Heloísa (Supervisora) |
| 🚀 Deploy | Marco (Executor) + Clara (Revisora) + Theo (Supervisor) |

## Fluxo

```
/ping-pong → /escrever-copy → /gerar-imagens → /construir → /publicar
```

## Skills disponíveis

- `ping-pong` — Entrevista estratégica
- `escrever-copy` — Copy persuasiva
- `gerar-imagens` — Imagens via Gemini
- `construir` — Construção da página
- `publicar` — Deploy automático
- `retomar` — Continuar projeto
- `auditar` — Auditoria pré-deploy

## Configuração

Variáveis no `.env`:

| Variável | Obrigatório |
|---|---|
| `GOOGLE_API_KEY` | ✅ Imagens grátis |
| `CHECKOUT_URL` | ✅ Link de conversão |
| `GITHUB_TOKEN` | ❌ Deploy opcional |
| `VERCEL_TOKEN` | ❌ Deploy opcional |

## Arquivos importantes

- `docs/contexto-projeto.md` — Dados do projeto atual
- `docs/PRD.md` — Requisitos após `/ping-pong`
- `docs/PLANO.md` — Progresso do projeto

## Regras

- Um comando por vez
- Aguardar aprovação entre etapas
- Supervisor aprova, você desempata
