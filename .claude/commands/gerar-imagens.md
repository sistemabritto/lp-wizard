---
name: images
description: Geração de imagens com loop de aprovação — análise visual detalhada após cada geração
skillFile: .claude/skills/image-generation/SKILL.md
planFile: docs/PLANO.md
maxAttempts: 3
---

# /gerar-imagens

## REGRAS
- 📖 Leia `.claude/skills/image-generation/SKILL.md` antes de qualquer ação
- 👁️ SEMPRE analise com visão antes de apresentar ao usuário
- 📢 DESCREVA o que foi gerado em detalhes antes de perguntar
- 🔄 Máximo 3 tentativas por imagem — depois sugere manual
- ✅ Ao final: PLANO.md atualizado

---

## INICIALIZAÇÃO

```
╔══════════════════════════════════════════════╗
║  ⚡ S1 — GERAÇÃO DE IMAGENS                  ║
║  Modelo: {IMAGE_MODEL}                       ║
║  Visão: {VISION_MODEL}                       ║
╚══════════════════════════════════════════════╝
```

Leia `.claude/skills/image-generation/SKILL.md`.
Leia `docs/PRD.md` — confirme `estilo_visual` e `nome_produto`.
Liste `public/gerar-imagens/` — identifique o que já existe.

```
🔍 Verificando imagens existentes...
  ✅ foto-autor: {status}
  ✅ provas: {N} encontradas
  ❌ hero: não existe
  ❌ og-image: não existe
  ❌ favicon: {status}
```

Atualize `docs/PLANO.md`: E4 → `em_andamento`

---

## FILA DE IMAGENS

Processe na ordem:

### 1. Favicon SVG (gerado direto, sem API)
Se `public/favicon.svg` não existe:
- Gere com iniciais do produto na paleta do estilo
- Sem loop — geração direta
- `✅ Favicon gerado: public/favicon.svg`

### 2. OG Image (compartilhamento social)
Sempre gere — é crítica para quando compartilharem o link.

### 3. Imagem Hero (se ausente)
Só se `public/gerar-imagens/hero.*` não existe.

### 4. Imagens de seção (se necessário)
Pergunte antes: `Quer gerar imagens conceituais para alguma seção específica? (s/n)`

---

## LOOP DE GERAÇÃO (por imagem)

```
━━━ GERANDO: {nome da imagem} ━━━━━━━━━━━━━━━━

🎨 Prompt utilizado:
"{prompt}"

⚡ Gerando... aguarde.
```

Após gerar:

```
👁️  Analisando com visão...
```

Apresente:

```
━━━ RESULTADO — tentativa {N}/3 ━━━━━━━━━━━━━━

🖼️  Imagem gerada: {url}

📝 O que foi criado:
{descrição detalhada: cores, composição, elementos,
qualidade, o que funciona, o que não funciona para
landing page de conversão}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ Aprovado? (s)
🔧 Ajustar prompt? (a) — o que precisa mudar?
📁 Usar imagem manual? (m)
```

**Se (a) — ajustar:**
```
O que precisa mudar?
(ex: "mais escuro", "sem texto", "pessoa diferente")
```
Refine o prompt e tente novamente (máximo 3).

**Após 3 tentativas sem aprovação:**
```
⚠️  3 tentativas concluídas.

Sugestão: use uma imagem manual.
Salve em public/gerar-imagens/{nome}.webp e rode /retomar
para continuar de onde parou.

Pulando para a próxima imagem.
```
Não bloqueia — continua o fluxo.

**Se aprovado:** salve em `public/gerar-imagens/{nome}.webp`

---

## RELATÓRIO FINAL

```
╔══════════════════════════════════════════════╗
║  ✅ IMAGENS — CONCLUÍDO                      ║
╠══════════════════════════════════════════════╣
║  Geradas e aprovadas: {N}                    ║
║  Puladas (manual): {N}                       ║
║  Favicon: ✓                                  ║
╠══════════════════════════════════════════════╣
║  ⚡ PRÓXIMO: /otimizar                       ║
║  Estimativa: ~10 minutos                     ║
╚══════════════════════════════════════════════╝
```

Atualize `docs/PLANO.md`: E4 → `concluido`, E5 → `pendente`.

---

## ✅ CRITÉRIOS DE SUCESSO
- Análise visual com descrição detalhada antes de perguntar
- Máximo 3 tentativas por imagem
- Nunca bloqueia o fluxo após 3 tentativas
- PLANO.md atualizado

## ❌ FALHA DO SISTEMA
- Apresentar imagem sem análise visual
- Mais de 3 tentativas por imagem
- Bloquear o fluxo quando manual é necessário
