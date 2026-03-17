# SKILL — Geração de Imagens via OpenRouter
# Protocolo S1 — API correta baseada na documentação oficial

---

## COMO O OPENROUTER GERA IMAGENS

**ENDPOINT:** `/api/v1/chat/completions` — o mesmo de chat.
**NÃO EXISTE** `/images/generations` no OpenRouter. Qualquer tentativa retorna 404.

A imagem volta como **base64** no `content` da resposta, dentro de um array de partes.

---

## MODELOS DISPONÍVEIS

| Modelo | ID OpenRouter | Modalities | Custo est. |
|---|---|---|---|
| **Gemini 3.1 Flash Image** ← PADRÃO | `google/gemini-3.1-flash-image-preview` | `["image","text"]` | ~R$0,23/img |
| Gemini 3 Pro Image | `google/gemini-3-pro-image-preview` | `["image","text"]` | ~R$0,78/img |
| Gemini 2.5 Flash Image | `google/gemini-2.5-flash-image` | `["image","text"]` | ~R$0,12/img |
| FLUX.2 Pro | `black-forest-labs/flux-2-pro` | `["image"]` | ~R$0,35/img |
| FLUX.2 Flex | `black-forest-labs/flux-2-flex` | `["image"]` | ~R$0,23/img |

**Regra:** Gemini → `modalities: ["image","text"]` | FLUX → `modalities: ["image"]`

---

## SCRIPT CORRETO — GERAR IMAGEM

O agente cria este arquivo e executa:

```bash
cat > /tmp/s1-gerar-imagem.mjs << 'EOF'
const [,, prompt, filename = "imagem"] = process.argv;
const KEY = process.env.OPENROUTER_API_KEY;
const MODEL = process.env.IMAGE_MODEL || "google/gemini-3.1-flash-image-preview";

if (!KEY) { console.error("❌ OPENROUTER_API_KEY ausente no .env"); process.exit(1); }

console.log(`⚡ Gerando com ${MODEL}...`);
console.log(`📝 Prompt: ${prompt.substring(0, 80)}...`);

const isFlux = MODEL.includes("flux");
const modalities = isFlux ? ["image"] : ["image", "text"];

const res = await fetch("https://openrouter.ai/api/v1/chat/completions", {
  method: "POST",
  headers: {
    "Authorization": `Bearer ${KEY}`,
    "Content-Type": "application/json"
  },
  body: JSON.stringify({
    model: MODEL,
    modalities,
    messages: [{ role: "user", content: prompt }]
  })
});

const data = await res.json();

if (!res.ok) {
  console.error("❌ Erro da API:", JSON.stringify(data, null, 2));
  process.exit(1);
}

const parts = data.choices?.[0]?.message?.content;
const partsArray = Array.isArray(parts) ? parts : [];

let saved = false;
for (const part of partsArray) {
  if (part.type === "image_url") {
    const b64 = part.image_url.url.replace(/^data:image\/\w+;base64,/, "");
    const buf = Buffer.from(b64, "base64");
    const { writeFileSync, mkdirSync } = await import("fs");
    mkdirSync("public/images", { recursive: true });
    const path = `public/images/${filename}.png`;
    writeFileSync(path, buf);
    console.log(`✅ Salvo em: ${path} (${(buf.length/1024).toFixed(0)}KB)`);
    saved = true;
  }
  if (part.type === "text" && part.text) {
    console.log(`💬 Modelo: ${part.text}`);
  }
}

if (!saved) {
  console.error("❌ Sem imagem na resposta.");
  console.error("Partes:", JSON.stringify(partsArray, null, 2));
  process.exit(1);
}
EOF

# Executar lendo as variáveis do .env
export $(grep -v '^#' .env | xargs)
node /tmp/s1-gerar-imagem.mjs "PROMPT AQUI" "nome-arquivo"
```

---

## SCRIPT CORRETO — ANALISAR IMAGEM (visão)

```bash
cat > /tmp/s1-analisar-imagem.mjs << 'EOF'
const [,, imagePath] = process.argv;
const KEY = process.env.OPENROUTER_API_KEY;
const MODEL = process.env.VISION_MODEL || "google/gemini-3-flash-preview";

const { readFileSync } = await import("fs");
const b64 = readFileSync(imagePath).toString("base64");

const res = await fetch("https://openrouter.ai/api/v1/chat/completions", {
  method: "POST",
  headers: {
    "Authorization": `Bearer ${KEY}`,
    "Content-Type": "application/json"
  },
  body: JSON.stringify({
    model: MODEL,
    messages: [{
      role: "user",
      content: [
        { type: "image_url", image_url: { url: `data:image/png;base64,${b64}` } },
        { type: "text", text: "Descreva em detalhes: cores, composição, qualidade, o que funciona e o que não funciona para landing page de alta conversão." }
      ]
    }]
  })
});

const data = await res.json();
console.log(data.choices?.[0]?.message?.content || JSON.stringify(data));
EOF

export $(grep -v '^#' .env | xargs)
node /tmp/s1-analisar-imagem.mjs public/images/nome-arquivo.png
```

---

## LOOP DE APROVAÇÃO (máximo 3 tentativas)

```
TENTATIVA {N}/3:
1. Roda s1-gerar-imagem.mjs com o prompt
2. Se salvo: roda s1-analisar-imagem.mjs no arquivo gerado
3. Mostra a URL/path + descrição detalhada da análise
4. Pergunta: "Aprovado? (s) | Ajustar prompt? (a) | Usar imagem manual? (m)"

SE (a): pergunta o que mudar → refina o prompt → próxima tentativa
APÓS 3 TENTATIVAS SEM APROVAÇÃO:
→ "Salve uma imagem manualmente em public/images/{nome}.png e rode /resume"
→ Continua o fluxo — não bloqueia
```

---

## REGRAS DO AGENTE

### SEMPRE:
- Endpoint: `/api/v1/chat/completions`
- Gemini: `modalities: ["image", "text"]`
- FLUX: `modalities: ["image"]`
- Extrair base64 de `content[].image_url.url`
- Analisar com visão ANTES de mostrar ao usuário
- Máximo 3 tentativas

### NUNCA:
- Tentar `/images/generations` (404 garantido)
- Usar `require()` em `.mjs` (use `import`)
- Instalar `node-fetch` (Node 18+ tem `fetch` nativo)
- Fazer SVG ou Canvas como fallback silencioso
- Bloquear o fluxo após 3 tentativas

### Diagnóstico de erros:
- **404** → endpoint errado, corrigir para `/api/v1/chat/completions`
- **400/422** → `modalities` errado ou ausente
- **content não é array** → modelo não suporta geração, trocar para Gemini
- **imagem muito pequena (<1KB)** → base64 inválido, verificar extração
