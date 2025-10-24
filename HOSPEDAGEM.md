# Como Hospedar o Extrator PDF Jurídico

Este guia mostra como colocar o extrator online para acesso de qualquer lugar.

## Opção 1: GitHub Pages (GRÁTIS e FÁCIL) ⭐

### Passo a Passo:

1. **Já está no GitHub!** Este repositório já está pronto.

2. **Ativar GitHub Pages:**
   - Vá em: Settings → Pages
   - Em "Source", selecione: `main` branch
   - Em "Folder", selecione: `/ (root)`
   - Clique em "Save"

3. **Acesse em:**
   ```
   https://pedrogiudice.github.io/Extrator_PDF_Juridico/
   ```

4. **Arquivo a usar:** O arquivo `index.html` será servido automaticamente.

### Vantagens:
- ✅ 100% gratuito
- ✅ HTTPS automático
- ✅ Atualização automática a cada push
- ✅ Confiável e rápido

## Opção 2: Netlify (GRÁTIS com domínio customizado)

### Passo a Passo:

1. Acesse [netlify.com](https://netlify.com)
2. Faça login com GitHub
3. "New site from Git"
4. Selecione este repositório
5. Deploy!

### Vantagens:
- ✅ Domínio customizado grátis (.netlify.app)
- ✅ HTTPS automático
- ✅ Deploy contínuo
- ✅ Muito rápido

## Opção 3: Vercel (GRÁTIS)

### Passo a Passo:

1. Acesse [vercel.com](https://vercel.com)
2. Faça login com GitHub
3. "Import Project"
4. Selecione este repositório
5. Deploy!

### Vantagens:
- ✅ Muito rápido (edge network)
- ✅ HTTPS automático
- ✅ Domínio customizado grátis
- ✅ Analytics incluído

## Opção 4: Servidor Próprio

### Requisitos:
- Qualquer servidor web (Apache, Nginx, etc)
- Não precisa de PHP, Node.js ou backend
- Apenas servir HTML estático

### Passo a Passo:

1. Copie o arquivo `index.html` para seu servidor
2. Configure o servidor para servir arquivos estáticos
3. Acesse via seu domínio

**Exemplo Nginx:**
```nginx
server {
    listen 80;
    server_name extrator.seudominio.com.br;
    root /var/www/extrator;
    index index.html;
}
```

## Teste Local

Antes de hospedar, teste localmente:

```bash
# Python 3
python -m http.server 8000

# Node.js
npx http-server

# PHP
php -S localhost:8000
```

Acesse: `http://localhost:8000`

## Importante

- ✅ O processamento é 100% no navegador (client-side)
- ✅ Nenhum PDF é enviado para servidor
- ✅ Total privacidade e segurança
- ✅ Funciona mesmo em servidor simples de HTML

## Recomendação

**Para uso profissional:** GitHub Pages ou Netlify

Ambos oferecem:
- HTTPS (essencial para segurança)
- Alta disponibilidade
- CDN global (rápido em todo o Brasil)
- Grátis
- Fácil de atualizar

---

**Dúvidas?** Abra uma issue no GitHub!
