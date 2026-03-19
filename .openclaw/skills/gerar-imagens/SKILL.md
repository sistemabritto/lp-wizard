---
name: gerar-imagens
description: Gera imagens via Gemini API (gratuito)
---

# /gerar-imagens

## Requisito

`GOOGLE_API_KEY` no `.env`

Obtenha grátis: [aistudio.google.com](https://aistudio.google.com)

## Modelos

| Modelo | Uso |
|---|---|
| `imagen-4-preview` | Padrão |
| `gemini-2.5-flash-preview` | Rápido |

## Imagens Geradas

- `hero-bg.webp` — fundo hero
- `produto.webp` — produto
- `autor.webp` — autor
- `prova-1.webp` até `prova-5.webp` — prints

## Fluxo

1. Gera com base na copy
2. Mostra resultado
3. Aprova ou regenera (máx 3 tentativas)

**Próximo:** `/construir`
