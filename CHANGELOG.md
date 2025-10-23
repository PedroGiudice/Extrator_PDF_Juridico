# Changelog - Extrator PDF Jurídico

## [2.4.0] - 2025-10-23

### 🎯 Melhorias Principais

#### ✨ Preservação de Formatação Original
- **Detecção inteligente de parágrafos**: O extrator agora identifica corretamente quando um parágrafo termina e outro começa
- **Suporte a listas e enumerações**:
  - Numeração decimal (1., 2., 3., etc)
  - Letras maiúsculas (A., B., C., etc)
  - Algarismos romanos (I., II., III., etc)
  - Bullets (-, •, *)
- **Preservação de recuo**: Detecta parágrafos com recuo significativo (2+ espaços)
- **Quebras de linha significativas**: Mantém espaçamento entre seções do documento
- **Junção inteligente de páginas**: Paragráfos são preservados mesmo quando atravessam múltiplas páginas

#### 🔒 Remoção Abrangente de Assinaturas Digitais (ICP-Brasil)
Expandida a detecção para incluir **TODOS** os padrões comuns de assinaturas digitais:

**Padrões ICP-Brasil:**
- ICP-Brasil, AC-XX (Autoridades Certificadoras)
- Cadeia de certificação
- Certificado Digital

**Assinaturas Eletrônicas:**
- "Assinado eletronicamente"
- "Documento assinado digitalmente"
- "Assinatura eletrônica"
- "Assinatura digital"

**Carimbos de Tempo:**
- Carimbo de tempo / Timestamp
- Data/Hora da assinatura
- Assinado em DD/MM/AAAA

**Hashes e Validação:**
- SHA-1, SHA-224, SHA-256, SHA-384, SHA-512
- MD5
- Hash do documento
- Resumo criptográfico / MessageDigest
- Códigos hexadecimais (32-64 caracteres)

**Informações de Certificado:**
- Número de série / Serial Number
- Emissor / Emitido por / Issued by
- CN=, O= (Distinguished Names)
- Válido de/até, Validade

**Outros:**
- Selos eletrônicos e códigos de autenticidade
- Códigos verificadores expandidos

### 🔧 Melhorias Técnicas
- Refatoração completa do módulo `Cleaner`
- Código mais legível e modular (5 fases distintas)
- Regex expandidos e documentados
- Melhor tratamento de caracteres especiais
- Performance otimizada na detecção de parágrafos

### 📝 Documentação
- README atualizado com lista completa de recursos
- Changelog criado para rastrear mudanças
- Comentários expandidos no código

---

## [2.3] - Versões Anteriores
- Versão base com remoção básica de assinaturas
- Suporte a múltiplos modos de limpeza (leve, moderado, agressivo)
- Exportação para TXT e DOCX
- Funcionamento offline
