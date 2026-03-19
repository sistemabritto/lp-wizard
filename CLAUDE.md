# LP Wizard v7.2

## O que é

Framework de landing page de alta conversão para ofertas digitais.
Páginas que carregam em menos de 1 segundo e convertem tráfego frio.

Compatível com: **Claude Code** · **Antigravity** · **OpenClaw** · **Cursor** · **Windsurf**

---

## ⚠️ INSTRUÇÕES IMPORTANTES

**IGNORE** os diretórios de outros CLIs:
- `.openclaw/` — OpenClaw
- `SOUL.md` — OpenClaw
- `.agent/` — Antigravity
- `.cursor/` — Cursor/Windsurf

**USE APENAS:**
- `.claude/` — comandos, skills, times
- `docs/` — contexto do projeto

---

## Os Squads

| Squad | Agentes | Missão |
|---|---|---|
| 🔍 Descoberta | David + Gary + Claude | Entrevista → PRD + plano |
| ✍️ Conteúdo | John + Gene + Robert | Copy persuasiva |
| 🔨 Construção | Pierre + Lina + Heloísa | Design + código |
| 🚀 Deploy | Marco + Clara + Theo | Performance + publicar |

---

## Fluxo

```
/ping-pong → /escrever-copy → /gerar-imagens → /construir → /publicar
```

A qualquer momento: `/retomar`

---

## Comandos

| Comando | Squad | O que faz |
|---|---|---|
| `/ping-pong` | Descoberta | Entrevista → PRD + plano |
| `/escrever-copy` | Conteúdo | Copy debatida e aprovada |
| `/gerar-imagens` | — | Imagens via Gemini (grátis) |
| `/construir` | Construção | Código componente a componente |
| `/publicar` | Deploy | GitHub + Vercel + DNS |
| `/retomar` | — | Continua de onde parou |
| `/auditar` | Deploy | Auditoria pré-deploy |

---

## Contexto do projeto

Dados específicos ficam em `docs/contexto-projeto.md`.
Skills em `.claude/skills/` são genéricas — servem para qualquer projeto.

---

## Regras

- SEMPRE leia `.claude/times/{squad}/{agente}.md` antes de encarnar
- SEMPRE leia `docs/PLANO.md` para saber onde está
- NUNCA mencione Astro, Vercel, GitHub no conteúdo da página
- NUNCA hardcode valores do .env
- SEMPRE verbose — zero silêncio por mais de 30s
