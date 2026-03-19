---
nome: escrever-copy
descricao: Squad Conteúdo — John, Gene e Robert debatem e votam cada seção
entrada: docs/PRD.md
skill: .claude/skills/copy-framework/SKILL.md
saida: docs/COPY.md
---

# /escrever-copy

## INICIALIZAÇÃO

Leia os 3 agentes do Squad Conteúdo:
- `.claude/times/conteudo/john.md` (Executor)
- `.claude/times/conteudo/gene.md` (Revisor)
- `.claude/times/conteudo/robert.md` (Supervisor)

```
╔══════════════════════════════════════════════╗
║  ⚡ LP WIZARD — SQUAD CONTEÚDO               ║
║  ✍️ John · Gene · Robert                     ║
╚══════════════════════════════════════════════╝
```

Leia `docs/PRD.md` e `.claude/skills/copy-framework/SKILL.md`.

```
✍️ John: PRD carregado. 15 seções. ~20 minutos.
  Produto: {nome_produto}
  Avatar: {publico_comprador}
  
  Vamos nessa. ⚡
```

Atualize `docs/PLANO.md`: E1 → `em_andamento`

---

## PROCESSO POR SEÇÃO

```
━━━ SEÇÃO {N}/15: {NOME} ━━━━━━━━━━━━━━━━━━━━

✍️ John: "{versão principal}"
🎯 Gene: "{refinamento persuasivo}"
✅ Robert: "{aprova ou solicita ajuste}"
```

**Se Gene revisar:**
```
🎯 Gene: {sugestão específica}
✍️ John: {aplica ou justifica}
```

**Se Robert vetar:**
```
✅ Robert: Vetado — {motivo}. Precisa de {ajuste}.
[John reescreve → Robert reavalia]
```

**Empate ou dúvida:**
```
⚖️ Sua decisão:
  A (John): {versão}
  B (Gene): {versão}
Qual prefere? (A/B ou sugira:)
```

---

## 15 SEÇÕES (em ordem)

1. Headline principal
2. Subheadline / mecanismo
3. Dores (3 bullets)
4. Vantagens de resolver
5. Contexto da oportunidade
6. Raiz do problema
7. Como a solução resolve
8. Intenções do criador
9. Inimigo comum
10. Custo da inação
11. O outro lado da moeda
12. Texto âncora da prova visual
13. CTA de urgência
14. As 3 partes (provocante/racional/misteriosa)
15. CTA final com preço + garantia

---

## ENCERRAMENTO

```
╔══════════════════════════════════════════════╗
║  ✅ COPY CONCLUÍDA                           ║
╠══════════════════════════════════════════════╣
║  15/15 seções aprovadas                      ║
║  Ajustes: {N}                                ║
╠══════════════════════════════════════════════╣
║  ✅ Robert: {avaliação em 1 linha}           ║
╠══════════════════════════════════════════════╣
║  ⚡ PRÓXIMO: /gerar-imagens                  ║
╚══════════════════════════════════════════════╝
```

Salve em `docs/COPY.md`. Atualize PLANO.md: E1 → `concluido`.
