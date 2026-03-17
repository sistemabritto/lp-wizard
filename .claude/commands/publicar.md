---
name: deploy
description: Publica automaticamente — GitHub + Vercel + DNS
---

# /publicar

Leia tokens do `.env`: `GITHUB_TOKEN` e `VERCEL_TOKEN`.
Se ausentes, instrua onde gerar e pare — nunca peça no chat.

## PASSO 1 — Perguntas

```
1. Nome do repositório: (ex: protocolo-s1)
2. Domínio: (ex: protocolo-s1.com.br — ou Enter para pular)
```

## PASSO 2 — GitHub

```bash
curl -s -X POST -H "Authorization: token $GITHUB_TOKEN" \
  https://api.github.com/user/repos \
  -d '{"name":"{repo_name}","private":true}'
git remote remove origin 2>/dev/null; \
git remote add origin "https://$GITHUB_TOKEN@github.com/{user}/{repo_name}.git"
git branch -M main && git push -u origin main
```

## PASSO 3 — Vercel

```bash
curl -s -X POST -H "Authorization: Bearer $VERCEL_TOKEN" \
  https://api.vercel.com/v1/projects \
  -d '{"name":"{repo_name}","framework":"astro","gitRepository":{"type":"github","repo":"{user}/{repo_name}"}}'
```

Aguarde deploy. Informe URL: `https://{repo_name}.vercel.app`

## PASSO 4 — Domínio (se informado)

```bash
curl -s -X POST -H "Authorization: Bearer $VERCEL_TOKEN" \
  https://api.vercel.com/v9/projects/$PROJECT_ID/domains \
  -d '{"name":"{domain}"}'
```

Salve em `docs/dns-records.txt` (já no .gitignore):
```
A       @      76.76.21.21
CNAME   www    cname.vercel-dns.com
```

## RESULTADO

```
✅ GitHub: github.com/{user}/{repo_name}
✅ URL: https://{repo_name}.vercel.app
✅ DNS: docs/dns-records.txt
```

Rode `/auditar` para revisão final.
