<div align="center">

# ⚡ LP Wizard — Protocolo S1

**Um time de agentes de IA constrói sua página de vendas do zero.**
Copy, imagens, design e performance — tudo em menos de 1 hora.

[![Versão](https://img.shields.io/badge/versão-7.0-00FF87?style=for-the-badge&labelColor=0A0A0A)](https://github.com/appshineflow/lp-wizard)
[![Claude Code](https://img.shields.io/badge/Claude_Code-✓-00FF87?style=for-the-badge&labelColor=0A0A0A)](https://claude.ai/code)
[![Antigravity](https://img.shields.io/badge/Antigravity-✓-4285F4?style=for-the-badge&labelColor=0A0A0A)](https://antigravity.dev)
[![Instagram](https://img.shields.io/badge/@sistemabritto-E1306C?style=for-the-badge&logo=instagram&labelColor=0A0A0A)](https://instagram.com/sistemabritto)
[![YouTube](https://img.shields.io/badge/@sistemabritto-FF0000?style=for-the-badge&logo=youtube&labelColor=0A0A0A)](https://youtube.com/@sistemabritto)

</div>

---

## O que é isso?

LP Wizard é um **time de agentes de IA** que você instala no computador uma vez e usa para sempre.

Cada etapa tem um time especializado. Eles debatem, votam e só avançam com aprovação. Você desempata quando há impasse. **Geraldo** (PM Pitbull) garante que tudo ande dentro do prazo. **Vera** (Estrategista) garante que tudo vai converter.

O resultado: páginas que carregam em menos de 1 segundo e convertem 2-10% do tráfego frio.

---

## Por que funciona?

Cada segundo a mais no carregamento custa entre **7% e 20%** da conversão. Página lenta = CPM alto = CAC inviável.

Além da performance, o sistema usa um framework de copy testado que ativa os três cérebros do comprador na ordem certa — reptiliano, límbico, neocórtex — do headline até o CTA.

---

## Instalação

```bash
git clone https://github.com/appshineflow/lp-wizard.git
cd lp-wizard
bash install.sh          # detecta seu IDE automaticamente
cp .env.example .env
npm install
```

O `install.sh` detecta se você usa **Claude Code**, **Antigravity**, **Cursor** ou **Windsurf** e instala os comandos no lugar certo.

---

## O time completo

### 👑 Gerenciamento
| Agente | Papel |
|---|---|
| **Geraldo** | PM Pitbull — conduz a entrevista, monitora o ritmo, aprova o deploy |
| **Vera** | Estrategista — expande o contexto, veta o que não converte, aprova o deploy |

Geraldo e Vera supervisionam todas as etapas. Ambos podem vetar qualquer decisão. Você desempata.

### ✍️ Time de Copy
| Agente | Foco | Critério |
|---|---|---|
| **Léo** | Impacto emocional, ousadia | "Para o scroll e cria desejo?" |
| **Raquel** | PNL, gatilhos mentais | "Ativa os 3 cérebros na ordem certa?" |
| **Beto** | Voz do avatar, autenticidade | "Meu vizinho entenderia?" |

### 🔨 Time de Design
| Agente | Foco |
|---|---|
| **Caio** | Executor — constrói story por story sem regressão |
| **Nina** | Criativa — diferenciação visual dentro da paleta |
| **Fabi** | Conversão/UX — CTA acima do fold, mobile, contraste |

### ⚡ Time de Performance
| Agente | Foco |
|---|---|
| **Duda** | Executa — aplica correções, reporta cada ação |
| **Rafa** | Avalia — identifica problemas e impacto estimado |
| **Íris** | Preserva — garante que otimização não destrói o visual |

### 🔍 Time de Análise
| Agente | Foco |
|---|---|
| **Marco** | Investiga — mapeia tudo sem interpretar |
| **Clara** | Examina — analisa estado de cada item |
| **Theo** | Caça — só procura inconsistências entre PRD, copy e código |

---

## O fluxo — assets antes, construção depois

```
┌─────────────────────────────────────────────┐
│  FASE 1 — ASSETS                            │
│  /ping-pong     Entrevista estratégica      │
│  /escrever-copy 3 agentes debatem e votam   │
│  /gerar-imagens Loop de aprovação visual    │
└────────────────────┬────────────────────────┘
                     ↓
┌─────────────────────────────────────────────┐
│  FASE 2 — CONSTRUÇÃO                        │
│  /construir     Constrói com assets prontos │
│  /refinar-ui    Audita visual e contraste   │
│  /otimizar      Performance GTmetrix A      │
│  /auditar       7 dimensões pré-deploy      │
│  /publicar      GitHub + Vercel + DNS       │
└─────────────────────────────────────────────┘
```

A qualquer momento: `/retomar` para ver o estado e continuar.

---

## Os 10 comandos

### `/ping-pong`
Geraldo e Vera conduzem 18 perguntas — uma por vez. Geraldo pergunta direto. Vera expande as implicações estratégicas nas perguntas-chave. Ao final: PRD, contexto do projeto e plano com 7 épicos.

**~15 minutos**

### `/escrever-copy`
Léo, Raquel e Beto escrevem cada seção do framework. Debatem, votam. Maioria aprova. Empate: você decide. Vera pode vetar. 15 seções do headline ao rodapé.

**~20 minutos**

### `/gerar-imagens`
Gera via OpenRouter, analisa com visão, descreve em detalhes antes de perguntar se aprovado. 3 tentativas máximo por imagem — nunca bloqueia o fluxo.

**~10 minutos**

### `/construir`
Caio, Nina e Fabi constroem seguindo o plano de épicos. Copy lida do `COPY.md`. Nenhuma story pulada. Cada componente revisado pelo trio antes de marcar como concluído.

**~15 minutos**

### `/refinar-ui`
Auditoria de contraste, hierarquia visual, mobile 375px, animações. Cada correção reportada em tempo real.

### `/otimizar`
Duda executa, Rafa analisa, Íris preserva o visual. 7 checklists completos. Termina com commit versionado.

### `/auditar`
7 dimensões avaliadas: copy, UI, performance, funil, tracking, segurança e oportunidades. Geraldo e Vera dão veredicto. Eles podem divergir — você desempata.

### `/publicar`
Lê `GITHUB_TOKEN` e `VERCEL_TOKEN` do `.env`. Cria repo, faz push, deploya na Vercel, configura domínio. DNS salvo em `docs/dns-records.txt`.

### `/retomar`
Marco mapeia, Clara examina, Theo caça inconsistências. Você sabe exatamente onde está e o que falta em menos de 2 minutos.

### `/depurar`
Diagnóstico automático dos erros mais comuns. Corrige o que pode, documenta o que precisa de ação manual.

---

## Usando com Antigravity (gratuito)

O Antigravity usa os mesmos comandos — o `install.sh` detecta automaticamente e cria os stubs em `.agent/skills/` apontando para `.claude/commands/` (fonte única de verdade).

```bash
bash install.sh   # seleciona Antigravity automaticamente
```

Nenhuma configuração adicional necessária.

---

## Estilos visuais

| | Estilo | Para quem |
|---|---|---|
| ⚡ | **Dark Urgência** | Tráfego, performance, resultados |
| 🧠 | **Clean Claro** | Educação, saúde, consultoria |
| 👑 | **Premium Escuro** | High ticket, exclusividade |
| 🔥 | **Colorido Energético** | Lifestyle, entretenimento |

O sistema sugere automaticamente o mais adequado para o seu produto.

---

## Modelos de imagem

| Modelo | Custo | Quando usar |
|---|---|---|
| `flux-2-klein` | ~R$0,08/img | Testes, volume |
| `seedream-4.5` | ~R$0,23/img | ⭐ Padrão |
| `gemini-flash-image-preview` | ~R$0,39/img | Com texto na imagem |
| `gemini-pro-image-preview` | ~R$0,78/img | Qualidade máxima |

Configure no `.env`. Análise visual gratuita via `gemini-3-flash-preview`.

---

## Variáveis de ambiente

O `/ping-pong` preenche a maioria. As que você precisa configurar:

| Variável | Para que |
|---|---|
| `PUBLIC_CHECKOUT_URL` | Link de pagamento, WhatsApp ou formulário |
| `OPENROUTER_API_KEY` | Geração de imagens |
| `GITHUB_TOKEN` | Deploy automático |
| `VERCEL_TOKEN` | Deploy automático |

---

## Versão atual — v7.0

- Times organizados em `.claude/times/` — arquivo de identidade por agente
- Skills genéricas — zero dados de projetos específicos
- `docs/contexto-projeto.md` — dados do projeto separados das skills
- Auto-atualização de skills com sua autorização explícita
- `/auditar` com 7 dimensões (copy, UI, performance, funil, tracking, segurança, oportunidades)
- `install.sh` com detecção automática de IDE
- Compatibilidade nativa com Antigravity via `.agent/skills/`
- Fluxo unificado: assets → construção

---

<div align="center">

**Felipe Britto** — no mercado digital desde 2014.
Mais de R$500k rodados em anúncios · 20+ nichos · múltiplos 7 dígitos.

[@sistemabritto](https://instagram.com/sistemabritto) · [@sistemabritto](https://youtube.com/@sistemabritto)

---

MIT License

</div>
