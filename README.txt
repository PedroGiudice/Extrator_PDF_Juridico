EXTRATOR DE TEXTO PROCESSUAL — v2.3 (OFFLINE, hotfix 2)

Correção: a URL anterior do docx (index.js) não existe na versão 9.5.1. Agora usamos o build ESM oficial em
unpkg.com/docx@9.5.1/dist/index.mjs e o carregamos via <script type="module">, expondo em window.docx.

1) Primeiro uso (com internet, uma única vez)
   - Abra o PowerShell nesta pasta e rode:
       ./setup_offline.ps1

2) Uso 100% offline
   - Abra: extrator_pdf_processual_v2.3_offline.html
   - Se o navegador bloquear PDF abrindo via file://, rode:
       ./start_local_server.ps1
     e acesse:  http://localhost:5500

3) Dependências locais
   - PDF.js 2.6.347 (pdf.min.js + pdf.worker.min.js)
   - docx 9.5.1 (dist/index.mjs)
   - FileSaver.js 2.0.5

4) Exportação: TXT e DOCX (Century Gothic 12pt); Regra OAB mantida.

5) Próxima versão (v2.3.1): opção de Normalizar hifenização para LLMs.
