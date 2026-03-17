# SKILL — Interface de Conversão

## Propósito
Este arquivo é preenchido automaticamente com base no perfil
visual definido durante a sessão de construção.
O /build lê este arquivo antes de criar qualquer componente.

---

## Perfil Visual Ativo

> Preenchido pelo wizard com base em `estilo_visual` e `referencia_visual` do PRD.
> Ao construir, substitua {VARIAVEL} pelos valores do PRD.

```
Estilo: {estilo_visual}
Referência: {referencia_visual}
Produto: {nome_produto}
Público: {publico_comprador}
```

---

## Regras de Conversão (invariáveis)

### Estrutura obrigatória
- **1 CTA por viewport** — nunca dois botões de igual peso na mesma tela
- CTA acima do fold sem scroll (mobile 375px)
- Contador de escassez sempre visível próximo ao CTA
- Micro-copy de confiança abaixo de cada botão

### Performance
- Hero image: `fetchpriority="high"`, NUNCA `loading="lazy"`, width + height obrigatórios
- Abaixo do fold: `loading="lazy"` em todas as imagens
- Zero fonts externas — system stack obrigatório
- CSS crítico inline ou scoped no componente

### Acessibilidade e Conversão
- Contraste mínimo 4.5:1 para texto, 7:1+ para CTAs
- Touch targets mínimo 44px de altura
- Body mínimo 18px (evita zoom automático iOS)
- Feedback visual em 100ms no hover/click

### Componentes base
```css
.cta-btn {
  display: block;
  width: 100%;
  max-width: 480px;
  padding: 20px 32px;
  background: var(--cor-destaque);
  color: var(--cor-btn-texto);
  font-size: 18px;
  font-weight: 700;
  text-align: center;
  border-radius: 8px;
  text-decoration: none;
  transition: transform 0.1s, background 0.1s;
  cursor: pointer;
}
.cta-btn:hover { transform: translateY(-2px); background: var(--cor-destaque-hover); }
.cta-btn:active { transform: translateY(0); }

.scarcity {
  color: var(--cor-urgencia);
  font-weight: 700;
  font-size: 15px;
  margin-bottom: 12px;
}

.trust {
  color: var(--cor-texto-muted);
  font-size: 14px;
  margin-top: 10px;
  text-align: center;
}

.comparison {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 16px;
  margin: 32px 0;
}
.comparison .before { opacity: 0.6; filter: grayscale(0.5); }
.comparison .after { border: 2px solid var(--cor-destaque); }

.fade-in {
  opacity: 0;
  transform: translateY(20px);
  transition: opacity 0.4s, transform 0.4s;
}
.fade-in.visible {
  opacity: 1;
  transform: translateY(0);
}
```

### Animações permitidas
- Fade-in no scroll: `opacity 0→1, translateY 20px→0, 400ms`
- Hover em cards: `scale(1.02), 150ms`
- CTA hover: `translateY(-2px), 100ms`
- PROIBIDO: scroll-jacking, autoplay com som, animações em width/height

### Mobile first
- Base: 375px
- Padding horizontal: 20px
- Sections: 60px vertical
- Stack vertical → grid no desktop

### Checklist pré-aprovação
- [ ] CTA visível sem scroll no mobile 375px?
- [ ] Contraste do botão ≥ 7:1?
- [ ] Imagens com width + height?
- [ ] Zero Google Fonts?
- [ ] Contador de escassez visível?
- [ ] Micro-copy abaixo do CTA?
- [ ] Páginas /privacidade e /termos linkadas no rodapé?
- [ ] Links de redes sociais funcionando (se preenchidos)?
