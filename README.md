# Extrator_PDF_Juridico v2.5

Extrator web minimalista para extração de peças processuais, com **remoção automática e inteligente de assinaturas digitais por sistema processual**. Design clean, preto e branco, com fonte monoespaçada.

## 🆕 Novidades v2.5

### 🎨 Design Minimalista Preto e Branco
- **Layout clean e moderno**: Interface minimalista focada em produtividade
- **Fonte monoespaçada**: Estilo máquina de escrever (Courier New, Consolas, Monaco)
- **Preto e branco apenas**: Design profissional e sem distrações
- **Responsivo**: Funciona perfeitamente em desktop, tablet e mobile

### ⚙️ Suporte a Sistemas Processuais
Agora você pode selecionar o sistema processual de origem para remoção otimizada:
- ✅ **AUTO** - Detecção automática do sistema
- ✅ **E-PROC** - Tribunais Regionais Federais
- ✅ **E-SAJ** - TJSP e outros tribunais estaduais
- ✅ **PJE** - Processo Judicial Eletrônico (CNJ)
- ✅ **PROJUDI** - Sistema de Processo Judicial Digital
- ✅ **STF** - Supremo Tribunal Federal
- ✅ **STJ** - Superior Tribunal de Justiça

Cada sistema tem padrões específicos de assinatura digital que são removidos automaticamente.

### 🌐 Versão Web (CDN)
- **Acesse de qualquer lugar**: Não precisa baixar bibliotecas
- **100% funcional online**: Usa CDN para PDF.js e FileSaver.js
- **Pode ser hospedado**: Arquivo HTML único e standalone

## 🎯 Melhorias v2.4

### ✨ Preservação de Formatação
- **Detecção inteligente de parágrafos**: Mantém a estrutura original do documento
- **Reconhecimento de listas**: Preserva numeração (1., 2., etc), bullets (-, •, *) e listas alfabéticas (A., B., etc)
- **Recuo de parágrafos**: Detecta e mantém parágrafos com recuo
- **Quebras de linha significativas**: Preserva espaçamento entre seções

### 🔒 Remoção Abrangente de Assinaturas Digitais
A remoção de assinaturas digitais agora detecta e remove **SEMPRE**:
- ✅ Padrões ICP-Brasil (AC-..., Autoridade Certificadora, etc)
- ✅ Assinaturas eletrônicas e digitais
- ✅ Carimbos de tempo (timestamp, data/hora de assinatura)
- ✅ Hash de documentos e resumos criptográficos
- ✅ Números de série de certificados
- ✅ Emissores de certificados (CN=, O=, etc)
- ✅ Datas de validade de certificados
- ✅ Selos eletrônicos e códigos de autenticidade
- ✅ Hashes SHA-1, SHA-256, SHA-384, SHA-512, MD5
- ✅ Códigos hexadecimais de validação

### 📊 Padrões Específicos por Sistema

**E-PROC (TRF)**
- "Assinado eletronicamente por... em DD/MM/AAAA"
- Menções a e-Proc e TRF
- Links de verificação de assinatura

**E-SAJ (TJSP)**
- Códigos de validação E-SAJ
- Menções a TJSP e foros
- Assinaturas digitais E-SAJ

**PJE (CNJ)**
- Códigos verificadores PJe
- "Assinado eletronicamente por... PJe"
- Validações conforme PJe

**PROJUDI**
- Assinaturas digitais PROJUDI
- Sistema de Processo Judicial Digital

**STF**
- Assinaturas digitais STF
- Praça dos Três Poderes

**STJ**
- Assinaturas digitais STJ
- Superior Tribunal de Justiça

## 🚀 Como Usar

### Versão Web (Recomendado)
1. Abra o arquivo `index.html` no navegador
2. Selecione seu PDF
3. Escolha o sistema processual (ou deixe em AUTO)
4. Clique em PROCESSAR
5. Baixe o TXT extraído

### Versão Offline (v2.3)
Use `extrator_pdf_processual_v2.3_offline.html` se precisar trabalhar sem internet.

## 🛠️ Tecnologias
- **PDF.js** - Extração de texto de PDFs
- **FileSaver.js** - Download de arquivos
- **Vanilla JS** - Sem dependências pesadas
- **CSS Moderno** - Design responsivo e minimalista

## 📋 Changelog
Veja [CHANGELOG.md](CHANGELOG.md) para histórico completo de versões.

## 📄 Licença
Open Source - Use livremente para processamento de documentos jurídicos.
