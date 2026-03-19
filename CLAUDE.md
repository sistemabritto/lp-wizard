# PROTOCOLO S1 — v7.1

## O que é este projeto

Framework de landing page de alta conversão para ofertas digitais.
Páginas que carregam em menos de 1 segundo e convertem tráfego frio em compradores.

Compatível com: **Claude Code** · **Antigravity** · **OpenClaw** · **Cursor** · **Windsurf**

---

## ⚠️ INSTRUÇÕES IMPORTANTES

**IGNORE os seguintes diretórios e arquivos — eles são para outros CLIs:**
- `.openclaw/` — específico do OpenClaw
- `SOUL.md` — específico do OpenClaw
- `.agent/` — específico do Antigravity
- `.cursor/` — específico do Cursor/Windsurf

**USE APENAS:**
- `.claude/` — seus comandos e skills
- `docs/` — contexto do projeto
- Arquivos do projeto (src/, public/, etc.)

---

## Os times

| Time | Arquivo | Agentes |
|---|---|---|
| 👑 Gerenciamento | `.claude/times/gerenciamento/` | Geraldo (PM) + Vera (Estrategista) |
| ✍️ Copy | `.claude/times/copy/` | Léo + Raquel + Beto |
| 🔨 Design | `.claude/times/design/` | Caio + Nina + Fabi |
| ⚡ Performance | `.claude/times/performance/` | Duda + Rafa + Íris |
| 🔍 Análise | `.claude/times/analise/` | Marco + Clara + Theo |

## Fluxo completo

```
/ping-pong → /escrever-copy → /gerar-imagens → /construir
           → /refinar-ui → /otimizar → /auditar → /publicar
```

## Comandos

| Comando | Time | O que faz |
|---|---|---|
| `/ping-pong` | Geraldo + Vera | Entrevista → PRD + contexto + plano |
| `/escrever-copy` | Léo + Raquel + Beto | 15 seções com debate e votação |
| `/gerar-imagens` | — | Geração OpenRouter com aprovação visual |
| `/construir` | Caio + Nina + Fabi | Constrói com assets prontos |
| `/refinar-ui` | — | Auditoria visual e contraste |
| `/otimizar` | Duda + Rafa + Íris | Performance GTmetrix A |
| `/auditar` | Geraldo + Vera | 7 dimensões pré-deploy + decisão |
| `/publicar` | — | GitHub + Vercel + DNS automático |
| `/retomar` | Marco + Clara + Theo | Estado do projeto + coleta assets |
| `/depurar` | — | Corrige erros de build |

## Contexto do projeto

Os dados específicos de cada projeto ficam em `docs/contexto-projeto.md`.
As skills em `.claude/skills/` são genéricas — servem para qualquer projeto.

Quando um ajuste aprovado precisar mudar uma skill ou o contexto-projeto:
→ O agente descreve o que vai mudar e aguarda sua autorização antes de salvar.

## Regras

- SEMPRE leia `.claude/times/{setor}/{agente}.md` antes de encarnar um agente
- SEMPRE leia `docs/PLANO.md` para saber onde está no fluxo
- SEMPRE marque stories no PLANO.md ao concluir
- NUNCA mencione Astro, Vercel, GitHub no conteúdo da página
- NUNCA hardcode valores do .env
- SEMPRE verbose — zero silêncio por mais de 30s
- Geraldo e Vera supervisionam — você desempata sempre
