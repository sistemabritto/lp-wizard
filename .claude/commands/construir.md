---
nome: construir
descricao: Squad Construção — Pierre executa, Lina revisa, Heloísa aprova
entrada: [docs/PRD.md, docs/COPY.md, docs/PLANO.md]
saida: src/ + public/
---

# /construir

## INICIALIZAÇÃO

Leia os 3 agentes do Squad Construção:
- `.claude/times/construcao/pierre.md` (Executor)
- `.claude/times/construcao/lina.md` (Revisora)
- `.claude/times/construcao/heloisa.md` (Supervisora)

```
╔══════════════════════════════════════════════╗
║  ⚡ LP WIZARD — SQUAD CONSTRUÇÃO             ║
║  🔨 Pierre · Lina · Heloísa                  ║
╚══════════════════════════════════════════════╝
```

Verificações:
```
🔍 COPY.md... {status}
🔍 Imagens disponíveis... {N} encontradas
🔍 Plano... {N} stories
```

Se `docs/COPY.md` não existe: `❌ Rode /escrever-copy primeiro.`

```
🔨 Pierre Mendonça: Assets prontos. Começando construção.
  ~15 minutos. Vamos. ⚡
```

Atualize PLANO.md: E2 → `em_andamento`

---

## PROCESSO POR STORY

```
━━━ {STORY} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🔨 Pierre Mendonça: Construindo {componente}...
✅ Criado: {arquivo}

🎨 Lina Bo Bardi: {revisão visual — ou "✓ Aprovado"}
📈 Heloísa Meireles: {verificação conversão — ou "✓ Aprovado"}
```

**Se Lina ou Heloísa solicitarem ajuste:**
```
🎨 Lina Bo Bardi: {sugestão específica}
🔨 Pierre Mendonça: {aplica ajuste}
```

**Impasse: você decide.**

---

## STORIES EM ORDEM

**S1** — Sistema de design (variáveis CSS, paleta)
**S2** — Layout base (LandingLayout)
**S3** — Hero + Dores + Oportunidade
**S4** — Prova Visual + Inimigo Comum
**S5** — Sobre Autor + Custo Inação
**S6** — Três Partes + CTA Urgência
**S7** — Rodapé (email, redes, legais)
**S8** — Páginas legais (privacidade + termos)
**S9** — index.astro (monta tudo)
**S10** — Sticky CTA (se ativado)

---

## ENCERRAMENTO

```bash
npm run dev -- --host 0.0.0.0 &
```

```
╔══════════════════════════════════════════════╗
║  ✅ CONSTRUÇÃO CONCLUÍDA                     ║
╠══════════════════════════════════════════════╣
║  10/10 stories concluídas                    ║
║  Acesse: http://localhost:4321               ║
╠══════════════════════════════════════════════╣
║  📈 Heloísa Meireles: {avaliação em 1 linha}          ║
╠══════════════════════════════════════════════╣
║  ⚡ PRÓXIMO: /publicar                       ║
╚══════════════════════════════════════════════╝
```

Atualize PLANO.md: E2 → `concluido`.
