---
name: debug
description: Diagnostica e corrige erros de build, runtime e configuração da landing page
---

# /depurar — Protocolo S1

## QUANDO USAR
Rode `/depurar` sempre que:
- `npm run dev` mostrar erro
- A página abrir em branco ou com layout quebrado
- Algum componente não aparecer
- O build falhar com erro de TypeScript/Astro

## DIAGNÓSTICO AUTOMÁTICO

```
╔══════════════════════════════════════════╗
║  ⚡ S1 — DEBUG                           ║
║  Diagnosticando o projeto...             ║
╚══════════════════════════════════════════╝
```

### VERIFICAÇÃO 1 — Ambiente

Verifique:
- [ ] `.env` existe? (se não: `cp .env.example .env`)
- [ ] `PUBLIC_SITE_URL` está preenchido? (se vazio: causa `Invalid URL`)
- [ ] `PUBLIC_CHECKOUT_URL` está preenchido?
- [ ] `node_modules/` existe? (se não: `npm install`)
- [ ] `node_modules/astro` existe? (se não: `npm install`)

**Fix automático para Invalid URL:**
Se `PUBLIC_SITE_URL` estiver vazio no `.env`, adicione:
```
PUBLIC_SITE_URL=http://localhost:4321
```

### VERIFICAÇÃO 2 — Layout

Procure em `src/layouts/LandingLayout.astro`:
- `new URL(image, siteUrl)` sem validação → substitua por:
  `siteUrl ? new URL(image, siteUrl).toString() : image`
- Qualquer `import.meta.env.*` sem fallback → adicione `|| ''`

### VERIFICAÇÃO 3 — Componentes

Liste `src/components/` e verifique:
- Todos os 12 componentes existem?
- Algum `import` referencia arquivo inexistente?
- Alguma imagem referenciada não existe em `public/`?

Para imagens faltando, substitua por fundo CSS:
```astro
<!-- Em vez de img que não existe -->
<div class="img-placeholder" style="background: var(--s1-card); height: 300px; border-radius: 8px;">
  <p style="color: var(--s1-muted); text-align: center; padding-top: 130px;">
    📸 Adicione sua imagem em public/gerar-imagens/
  </p>
</div>
```

### VERIFICAÇÃO 4 — Erros de TypeScript/Astro

Para cada erro no output do `npm run dev`:

| Erro comum | Causa | Fix |
|---|---|---|
| `Invalid URL` | `PUBLIC_SITE_URL` vazio | Adicionar ao `.env` |
| `Cannot find module` | import errado | Verificar caminho |
| `astro: not found` | `npm install` não rodou | `npm install` |
| `Cannot read properties of undefined` | variável sem fallback | Adicionar `|| ''` |
| `Port 4321 is in use` | porta ocupada | `npm run dev -- --port 4322` |

### VERIFICAÇÃO 5 — Performance

Verifique componente por componente:
- Hero image tem `fetchpriority="high"` e NÃO tem `loading="lazy"`?
- Imagens abaixo do fold têm `loading="lazy"`?
- Todas imagens têm `width` e `height`?
- Nenhum `<link>` para Google Fonts?

## RELATÓRIO DE DEBUG

```
╔══════════════════════════════════════════╗
║  📋 RELATÓRIO DE DEBUG                   ║
╚══════════════════════════════════════════╝

✅ Corrigido automaticamente:
{lista de fixes aplicados}

⚠️  Requer ação sua:
{lista de problemas que precisam de input}

🔧 Para testar:
  npm run dev
```

## ✅ CRITÉRIOS DE SUCESSO
- Todos os erros diagnosticados
- Fixes automáticos aplicados
- Usuário informado do que precisa de ação manual

## ❌ FALHA DO SISTEMA
- Reportar erro sem tentar corrigir
- Não verificar o `.env` primeiro
- Não verificar se `node_modules` existe
