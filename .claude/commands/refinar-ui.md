---
name: ui
description: Auditoria visual — contraste, hierarquia, mobile, paleta
---

# /refinar-ui

Leia `.claude/skills/refinar-ui-conversion/SKILL.md` e `docs/PRD.md` antes de agir.
Reporte cada correção: `🔧 {componente}: {problema} → {fix}`
Atualize PLANO.md: E3→em_andamento

## AUDITORIAS

**Hierarquia:** imagens de prova ocupam ≥60% da seção? Parágrafos >3 linhas → quebrar
**Contraste:** texto ≥4.5:1, botões ≥7:1. Cor do botão é --cor-destaque? Urgência é --cor-urgencia?
**Cores hardcoded:** substitua hex direto por variável CSS correspondente
**Espaçamento:** sections ≥60px vertical mobile, ≥100px desktop; gap cards ≥16px; line-height body 1.6, headlines 1.3
**Tipografia:** body ≥18px mobile, headlines 36-48px mobile; font-weight headlines 700+
**Botões CTA:** classe `.cta-btn`, href=PUBLIC_CHECKOUT_URL, altura ≥54px, width:100% mobile
**Hero (crítico):** headline visível sem scroll em 375px? CTA visível? Contador de scarcity visível?
**Mobile 375px:** scroll horizontal? texto <16px? touch targets <44px? imagens sem width:100%?

## RELATÓRIO

```
✅ Corrigidos ({N}): {lista}
⚠️  Requer ação: {lista}
```

Atualize PLANO.md: E3→concluido, E4→pendente.
Próximo: `/gerar-imagens`
