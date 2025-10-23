# Extrator_PDF_Juridico v2.4

Extrator em formato .html para extração de peças processuais, com **remoção automática e inteligente de assinaturas digitais**, selos de validação e códigos hash. Transforma em arquivo txt ou .docx.

## 🆕 Melhorias v2.4

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

## 🚀 Como Usar
Abra o arquivo `extrator_pdf_processual_v2.3_offline.html` no navegador e selecione seu PDF jurídico.
