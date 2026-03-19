---
nome: gerar-imagens
descricao: Gera imagens via Gemini API (gratuito)
entrada: docs/PRD.md + docs/COPY.md
saida: public/images/
---

# /gerar-imagens

## INICIALIZAÇÃO

```
╔══════════════════════════════════════════════╗
║  ⚡ LP WIZARD — GERAÇÃO DE IMAGENS           ║
║  🎨 Gemini API (gratuito)                    ║
╚══════════════════════════════════════════════╝
```

Verifique `GOOGLE_API_KEY` no `.env`.
Se ausente: `❌ Configure GOOGLE_API_KEY em .env`

---

## PROCESSO

Para cada imagem necessária:

```
━━━ IMAGEM {N}: {nome} ━━━━━━━━━━━━━━━━━━━━━━━

📝 Prompt: {descrição baseada na copy}

🎨 Gerando...
✅ Salvo: public/images/{nome}.webp
```

**Se não aprovado:**
```
❌ Rejeitada. Tentar novamente? (s/n)
📝 Novo prompt: {sua descrição}
```

Máximo 3 tentativas por imagem. Nunca bloqueie o fluxo.

---

## IMAGENS PADRÃO

- `hero-bg.webp` — fundo do hero
- `produto.webp` — imagem do produto
- `autor.webp` — foto do autor
- `prova-1.webp` até `prova-5.webp` — prints de prova

---

## ENCERRAMENTO

```
╔══════════════════════════════════════════════╗
║  ✅ IMAGENS GERADAS                          ║
╠══════════════════════════════════════════════╣
║  Total: {N} imagens                          ║
║  Local: public/images/                       ║
╠══════════════════════════════════════════════╣
║  ⚡ PRÓXIMO: /construir                      ║
╚══════════════════════════════════════════════╝
```
