---
name: escrever-copy
description: |
  Time de copy escreve 15 seções com debate e votação.
  Léo, Raquel e Beto debatem — maioria aprova. Empate: você decide.
version: "1.0"
author: LP Wizard
tags:
  - copywriting
  - persuasao
  - conversao
triggers:
  - /escrever-copy
  - criar copy
  - escrever copy
---

# /escrever-copy — Copy de Alta Conversão

## Agentes Envolvidos

- **Léo** — Copywriter Criativo (impacto emocional, ousadia)
- **Raquel** — Especialista PNL (gatilhos mentais, 3 cérebros)
- **Beto** — Voz do Avatar (autenticidade, simplicidade)
- **Vera** — Supervisor (pode vetar)

---

## INICIALIZAÇÃO

```
╔══════════════════════════════════════════════╗
║  ⚡ PROTOCOLO S1 — COPY                      ║
║  15 seções · 3 agentes · ~20 min             ║
╚══════════════════════════════════════════════╝

👑 Geraldo: Vamos escrever a copy.
  Leia docs/PRD.md e docs/contexto-projeto.md primeiro.
  
  ⚡ Pronto?
```

---

## REGRAS

- Cada seção: 3 agentes propõem → debatem → votam
- **Maioria aprova** (2 de 3)
- **Empate:** você desempata
- **Vera pode vetar** qualquer decisão
- Use o framework em `.openclaw/skills/copy-framework/SKILL.md`

---

## AS 15 SEÇÕES (ordem obrigatória)

| # | Seção | Cérebro | Função |
|---|---|---|---|
| 1 | Headline | Reptiliano | Para o scroll em 3s |
| 2 | Dores (3 bullets) | Reptiliano+Límbico | Rapport — "é exatamente isso" |
| 3 | Vantagens de resolver | Límbico+Neocórtex | Visão do paraíso |
| 4 | Contexto da oportunidade | Neocórtex+Límbico | "Agora é a hora" |
| 5 | Raiz do problema | Neocórtex+Límbico | Reframe — culpa é externa |
| 6 | Como a solução resolve | Neocórtex+Límbico | Mecanismo único |
| 7 | Intenções do criador | Límbico | Humanizar, criar confiança |
| 8 | Inimigo comum | Reptiliano+Límbico | Raiva canalizada |
| 9 | Custo da inação | Reptiliano | Medo da perda |
| 10 | Outro lado da moeda | Límbico+Neocórtex | Contraste após o medo |
| 11 | Prova visual | Neocórtex+Reptiliano | Evidência irrefutável |
| 12 | 1º CTA urgência | Reptiliano | Pico de credibilidade |
| 13a | Provocante | Límbico+Reptiliano | "Como assim isso existe?" |
| 13b | Racional | Neocórtex | Dado concreto que justifica |
| 13c | Misteriosa | Límbico+Reptiliano | FOMO — só quem compra sabe |
| 14 | CTA final com preço | Reptiliano+Neocórtex | Conversão final |
| 15 | Rodapé legal | Neocórtex | Credibilidade + conformidade |

---

## FORMATO POR SEÇÃO

```
╔══════════════════════════════════════════════╗
║  ⚡ COPY ▓▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░  {N}/15   ║
╚══════════════════════════════════════════════╝

📝 Seção {N}: {nome}

🎙️ Léo: {proposta ousada}
🧠 Raquel: {proposta com PNL}
👤 Beto: {proposta autêntica}

--- Debate ---
🎙️ Léo: {argumento}
🧠 Raquel: {argumento}
👤 Beto: {argumento}

--- Votação ---
🎙️ Léo: {opção}
🧠 Raquel: {opção}
👤 Beto: {opção}

Resultado: {aprovado/empate}
{Se empate} 👑 Você decide: A ou B?
{Se Vera vetar} 👸 Vera: {motivo do veto} → refazer
```

---

## PÓS-COPY

Ao final, salve em `docs/COPY.md`:

```
╔══════════════════════════════════════════════╗
║  ✅ COPY CONCLUÍDA                           ║
╠══════════════════════════════════════════════╣
║  📝 15 seções escritas       ✓               ║
║  📄 docs/COPY.md salvo       ✓               ║
╠══════════════════════════════════════════════╣
║  ⚡ PRÓXIMO: /gerar-imagens                  ║
╚══════════════════════════════════════════════╝
```

---

## Próximo Passo

Após completar a copy, execute `/gerar-imagens` para criar os visuais.
