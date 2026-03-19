---
nome: publicar
descricao: Squad Deploy — Marco otimiza, Clara valida, Theo autoriza
---

# /publicar

## INICIALIZAÇÃO

Leia os 3 agentes do Squad Deploy:
- `.claude/times/deploy/marco.md` (Executor)
- `.claude/times/deploy/clara.md` (Revisora)
- `.claude/times/deploy/theo.md` (Supervisor)

```
╔══════════════════════════════════════════════╗
║  ⚡ LP WIZARD — SQUAD DEPLOY                 ║
║  🚀 Marco · Clara · Theo                     ║
╚══════════════════════════════════════════════╝
```

Verifique tokens no `.env`: `GITHUB_TOKEN` e `VERCEL_TOKEN`.
Se ausentes, instrua onde gerar e pare.

---

## PASSO 1 — OTIMIZAÇÃO

```
⚡ Marco: Otimizando performance...
  ▶ Imagens: convertendo para WebP
  ▶ CSS: removendo não utilizado
  ▶ JS: lazy loading
  ✅ LCP: {tempo}s
```

---

## PASSO 2 — VALIDAÇÃO

```
🔍 Clara: Validando build...
  ▶ Build: {status}
  ▶ Responsivo: {status}
  ▶ Links: {status}
  ✅ Tudo funcionando
```

---

## PASSO 3 — AUTORIZAÇÃO

```
✅ Theo: Auditoria de 7 dimensões:
  ▶ Copy: ✓
  ▶ UI: ✓
  ▶ Performance: ✓
  ▶ Funil: ✓
  ▶ Tracking: ✓
  ▶ Segurança: ✓
  ▶ Oportunidades: {N} encontradas
  
  Pronto para deploy. Autoriza? (s/n)
```

---

## PASSO 4 — DEPLOY

```
🚀 Marco: Publicando...
```

### GitHub

```bash
curl -s -X POST -H "Authorization: token $GITHUB_TOKEN" \
  https://api.github.com/user/repos \
  -d '{"name":"{repo_name}","private":true}'
git remote add origin "https://$GITHUB_TOKEN@github.com/{user}/{repo_name}.git"
git push -u origin main
```

### Vercel

```bash
curl -s -X POST -H "Authorization: Bearer $VERCEL_TOKEN" \
  https://api.vercel.com/v1/projects \
  -d '{"name":"{repo_name}","framework":"astro"}'
```

### Domínio (se informado)

Salve DNS em `docs/dns-records.txt`:
```
A       @      76.76.21.21
CNAME   www    cname.vercel-dns.com
```

---

## RESULTADO

```
╔══════════════════════════════════════════════╗
║  ✅ DEPLOY CONCLUÍDO                         ║
╠══════════════════════════════════════════════╣
║  📦 GitHub: github.com/{user}/{repo}         ║
║  🌐 URL: https://{repo}.vercel.app           ║
║  ⚡ LCP: {tempo}s                            ║
╠══════════════════════════════════════════════╣
║  ✅ Theo: {avaliação final}                  ║
╚══════════════════════════════════════════════╝
```
