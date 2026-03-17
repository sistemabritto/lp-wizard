---
nome: auditar
descricao: Auditoria completa pré-deploy — Geraldo + Vera avaliam copy, UI, performance, funil, segurança e oportunidades
carrega: [.claude/times/gerenciamento/geraldo.md, .claude/times/gerenciamento/vera.md]
plano: docs/PLANO.md
---

# /auditar

## INICIALIZAÇÃO

Leia `geraldo.md` e `vera.md`. Leia `docs/PRD.md`, `docs/COPY.md`, `docs/contexto-projeto.md`.

```
╔══════════════════════════════════════════════╗
║  ⚡ S1 — AUDITORIA COMPLETA PRÉ-DEPLOY       ║
║  👑 Geraldo · 👸 Vera                        ║
╚══════════════════════════════════════════════╝

👑 Geraldo: Auditando tudo antes de publicar.
  7 dimensões. ~10 minutos. Cada problema tem dono.
```

Atualize PLANO.md: E7 → `em_andamento`

---

## DIMENSÃO 1 — COPY (peso 25%)

Para cada seção do framework, verifique:

```
🔍 Headline: ativa reptiliano em 3s? {✅/⚠️} {observação}
🔍 Dores: linguagem do avatar ou genérica? {status}
🔍 Inimigo comum: específico e nomeado? {status}
🔍 Custo da inação: gera medo real? {status}
🔍 As 3 partes: provocante sem revelar demais? {status}
🔍 CTA: primeira pessoa, orientado ao resultado? {status}
🔍 Garantia: clara e crível? {status}
🔍 Escassez: crível e alinhada com o prometido? {status}
```

Nota copy: {0-10}

---

## DIMENSÃO 2 — UI/UX (peso 20%)

```
🔍 CTA acima do fold sem scroll (375px)? {status}
🔍 Imagens de prova dominam as seções? {status}
🔍 Contraste do botão ≥ 7:1? {status}
🔍 Sticky CTA funcionando (se ativado)? {status}
🔍 Mobile sem scroll horizontal? {status}
🔍 Hierarquia visual clara? {status}
🔍 Animações não travam LCP? {status}
```

Nota UI: {0-10}

---

## DIMENSÃO 3 — PERFORMANCE (peso 20%)

Execute o build e capture métricas reais:

```bash
npm run build 2>&1 | tail -20
```

```
🔍 Build passou sem erros? {status}
🔍 Hero com fetchpriority="high"? {status}
🔍 Zero Google Fonts? {status}
🔍 Imagens em WebP com width+height? {status}
🔍 Pixel/GTM com async? {status}
🔍 LCP estimado: {valor}
🔍 Tamanho total do build: {valor}
🔍 Número de requisições: {valor}
```

Nota performance: {0-10}

---

## DIMENSÃO 4 — FUNIL (peso 15%)

```
🔍 Link de checkout funciona? {status}
  → Testa: curl -I {PUBLIC_CHECKOUT_URL}
🔍 /privacidade acessível? {status}
🔍 /termos acessível? {status}
🔍 Email de contato no rodapé? {status}
🔍 Links de redes sociais funcionam? {status}
🔍 OG image existe para compartilhamento? {status}
🔍 Favicon existe? {status}
```

Nota funil: {0-10}

---

## DIMENSÃO 5 — TRACKING (peso 10%)

```
🔍 META_PIXEL_ID configurado? {status}
  → Se sim: evento PageView está disparando?
🔍 GTM_ID configurado? {status}
🔍 PUBLIC_SITE_URL aponta para domínio real (não localhost)? {status}
🔍 canonical aponta para URL correta? {status}
```

Nota tracking: {0-10}

---

## DIMENSÃO 6 — SEGURANÇA (peso 5%)

```
🔍 .env está no .gitignore? {status}
🔍 Nenhum token hardcoded no código? {status}
  → grep -r "sk-" src/ (não deve encontrar nada)
  → grep -r "ghp_" src/ (não deve encontrar nada)
🔍 PUBLIC_SITE_URL não é localhost? {status}
🔍 docs/dns-records.txt no .gitignore? {status}
```

Nota segurança: {0-10}

---

## DIMENSÃO 7 — OPORTUNIDADES (informativo)

Vera analisa e lista o que poderia aumentar conversão mas não é bloqueador:

```
👸 Vera — Oportunidades identificadas:
  💡 {oportunidade 1} — impacto estimado: {alto/médio}
  💡 {oportunidade 2} — impacto estimado: {alto/médio}
  💡 {oportunidade 3} — impacto estimado: {alto/médio}
```

---

## RELATÓRIO FINAL

```
╔══════════════════════════════════════════════╗
║  ⚡ S1 — RELATÓRIO DE AUDITORIA              ║
╠══════════════════════════════════════════════╣
║  COPY:        {nota}/10  {barra visual}      ║
║  UI/UX:       {nota}/10  {barra visual}      ║
║  PERFORMANCE: {nota}/10  {barra visual}      ║
║  FUNIL:       {nota}/10  {barra visual}      ║
║  TRACKING:    {nota}/10  {barra visual}      ║
║  SEGURANÇA:   {nota}/10  {barra visual}      ║
╠══════════════════════════════════════════════╣
║  NOTA GERAL:  {média ponderada}/10           ║
╚══════════════════════════════════════════════╝
```

```
🔴 BLOQUEADORES (resolver antes de publicar):
  {lista com comando para resolver cada um}

🟡 IMPORTANTES (resolver em até 24h após publicar):
  {lista}

🟢 OPORTUNIDADES (próxima iteração):
  {lista da Vera}
```

---

## DECISÃO DE DEPLOY

```
👑 Geraldo + 👸 Vera:
```

**Se nota ≥ 7 e sem bloqueadores:**
```
👑 Geraldo: Aprovado para publicar. ⚡
👸 Vera: {confirmação ou ressalva}
→ Rode /publicar
```

**Se nota < 7 ou tem bloqueadores:**
```
👸 Vera: Vetado para publicar. {motivo principal}
👑 Geraldo: Resolve os bloqueadores e roda /auditar de novo.
```

**Se Geraldo aprova e Vera veta (ou vice-versa):**
```
⚖️  Geraldo e Vera divergem:
  👑 Geraldo: {posição}
  👸 Vera: {posição}
  Você decide: publicar agora (s) ou resolver primeiro (n)?
```

Atualize PLANO.md conforme decisão.
