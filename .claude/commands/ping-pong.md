---
nome: ping-pong
descricao: Entrevista estratégica — Squad Descoberta conduz, PRD + contexto + plano gerados ao final
carrega: [.claude/times/descoberta/david.md, .claude/times/descoberta/gary.md, .claude/times/descoberta/claude.md]
saida: [docs/PRD.md, docs/contexto-projeto.md, docs/PLANO.md]
---

# /ping-pong

## INICIALIZAÇÃO

Leia os 3 agentes do Squad Descoberta:
- `.claude/times/descoberta/david.md` (Executor)
- `.claude/times/descoberta/gary.md` (Revisor)
- `.claude/times/descoberta/claude.md` (Supervisor)

```
╔══════════════════════════════════════════════╗
║  ⚡ LP WIZARD ▓▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░      ║
║  SQUAD DESCOBERTA                           ║
╚══════════════════════════════════════════════╝

🔍 David: Antes de começar, separa:

  ⚡ Sua foto (quadrada, rosto visível)
  ⚡ Print do seu melhor resultado
  ⚡ Link do checkout
  ⚡ Email de contato
  ⚡ Links das redes sociais

  18 perguntas. ~15 minutos.
  🔥 Pronto?
```

Se `docs/PRD.md` existe com `status: approved`:
`🔍 David: Sessão anterior encontrada. Sobrescrever? (s/n)`

---

## REGRAS
- 🛑 UMA pergunta por vez
- 🧠 Autocomplete quando resposta cobre campos futuros
- 🎯 Gary questiona respostas vagas
- ✅ Claude valida alinhamento estratégico
- 📝 Ao final: atualiza `docs/contexto-projeto.md`, gera `docs/PRD.md` e `docs/PLANO.md`

---

## FORMATO

```
╔══════════════════════════════════════════════╗
║  ⚡ LPW  ░  {N}/18  ░  {BLOCO}  ░  ~{X}min   ║
║  {▓▓▓▓▓░░░░░░░░░░░░░░░░░░░░░░░░░}  {%}%     ║
╚══════════════════════════════════════════════╝

🔍 David: {pergunta}
```

Gary questiona quando necessário:
```
🎯 Gary: {questionamento}
```

Claude valida:
```
✅ Claude: {confirmação ou ajuste}
```

Transição:
```
🔍 David: Entendido — {resumo em 1 linha}. Próxima:
```

---

## BLOCO 1 — QUEM VOCÊ É [P1-P3]

**P1:** `Qual é o seu nome e como você se apresentaria em 2 frases num story?`
→ `autor_nome` + `sobre_voce`

**P2:** `📸 Manda sua foto. (ou "não tenho")`
→ `public/images/foto-autor.jpg`

**P3:** `Email e redes sociais? (ou pule)`
→ `autor_email` + `autor_redes`

---

## BLOCO 2 — SUA OFERTA [P4-P6]

**P4:** `Nome da oferta e em UMA frase — o que a pessoa consegue fazer depois de comprar?`
→ `nome_produto` + `transformacao`
*Gary sempre aqui — questiona se vago.*

**P5:** `Entregáveis e bônus — uma linha cada.`
→ `entregaveis` + `bonus`

**P6:** `Preço? Tem preço original para riscar?`
→ `preco` + `preco_original`

---

## BLOCO 3 — CHECKOUT E ESCASSEZ [P7-P8]

**P7:**
```
🔍 David: Como o comprador vai pagar?
  1️⃣  Link de checkout
  2️⃣  WhatsApp (número)
  3️⃣  Formulário
```
→ `checkout_tipo` + `checkout_url` → atualiza `.env` imediatamente

**P8:**
```
🔍 David: Tipo de escassez?
  1️⃣  🔢 Lote   2️⃣  ⏰ Tempo
  3️⃣  📦 Estoque  4️⃣  📅 Agenda  5️⃣  🚫 Sem
```
→ `escassez_tipo` + `escassez_valor`
*Claude avalia credibilidade.*

---

## BLOCO 4 — SEU COMPRADOR [P9-P10]

**P9:** `Comprador ideal, o que quer resolver AGORA, e como está se sentindo?`
→ `publico_comprador` + `demanda_urgente` + `estado_emocional`
*Gary se avatar vago.*

**P10:** `O que acontece se NÃO resolver? E as 3 maiores vantagens de quem compra?`
→ `custo_inacao` + `vantagens_compra`

---

## BLOCO 5 — PROVA [P11-P12]

**P11:** `Resultado concreto para mostrar? Números, antes/depois.`
→ `prova_resultado`

**P12:** `📸 Tem prints? (até 5 — ou "não tenho")`
→ `public/images/prova-0{N}.jpg`

---

## BLOCO 6 — VISUAL [P13-P14]

**P13:** `Paleta de cores preferida? (ou deixa o squad sugerir)`
→ `paleta_cores`

**P14:** `Quer barra de CTA fixa no topo ao rolar? (+~12% conversão) (s/n)`
→ `sticky_cta`

---

## BLOCO 7 — SEGREDOS [P15-P16]

**P15:** `Algo do produto que faz o comprador pensar "como assim isso existe?"`
→ `parte_provocante`

**P16:** `Algo que só quem compra descobre? Sem revelar tudo.`
→ `parte_misteriosa`

---

## BLOCO 8 — PUBLICAÇÃO [P17-P18]

**P17:**
```
🔍 David: Para publicar automaticamente, adicione ao .env:
  GITHUB_TOKEN=  VERCEL_TOKEN=
Já adicionou? (s/n)
```

**P18:** `Tem domínio para apontar? (ou pule)`
→ `custom_domain`

---

## PÓS-ENTREVISTA

```
╔══════════════════════════════════════════════╗
║  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  100% ✓   ║
║  🔍 David: Processando...                    ║
╚══════════════════════════════════════════════╝
```

### 1. Atualizar docs/contexto-projeto.md

### 2. Preencher .env automaticamente

### 3. Gerar docs/PRD.md (status: approved)

### 4. Gerar docs/PLANO.md com épicas

### 5. Favicon SVG com iniciais

### 6. Resumo final:

```
╔══════════════════════════════════════════════╗
║  ✅ DESCOBERTA CONCLUÍDA                     ║
╠══════════════════════════════════════════════╣
║  📋 PRD + contexto + plano    ✓              ║
║  🖼️  Imagens: {N} salvas      ✓              ║
║  ⚙️  .env preenchido          ✓              ║
╠══════════════════════════════════════════════╣
║  ✅ Claude: {avaliação em 1 linha}           ║
╠══════════════════════════════════════════════╣
║  ⚡ PRÓXIMO: /escrever-copy                  ║
║  🔍 David: ~20 min. Vamos. ⚡                ║
╚══════════════════════════════════════════════╝
```
