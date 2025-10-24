# Changelog - Extrator PDF Jurídico

## [2.5.0] - 2025-10-24

### 🎨 Design Completamente Redesenhado

#### Interface Minimalista Preto e Branco
- **Layout clean e moderno**: Redesign completo focado em produtividade
- **Fonte monoespaçada**: Estilo máquina de escrever (Courier New, Consolas, Monaco)
- **Paleta P&B**: Design profissional sem distrações, apenas preto e branco
- **Totalmente responsivo**: Interface adaptável para desktop, tablet e mobile
- **Tipografia hierárquica**: Uso de caixa alta, espaçamento e pesos para organização visual

#### Componentes UI Modernos
- Cards com bordas finas e sombras sutis
- Botões com estados hover invertidos (preto↔branco)
- Seletor de sistema processual com badges clicáveis
- Checkboxes customizados com descrições
- Área de estatísticas elegante e informativa

### ⚙️ Suporte a Sistemas Processuais Brasileiros

#### Seletor de Sistema com 7 Opções
- **AUTO**: Detecção automática baseada em padrões do texto
- **E-PROC**: Tribunais Regionais Federais
- **E-SAJ**: TJSP e tribunais estaduais com SAJ
- **PJE**: Processo Judicial Eletrônico (CNJ)
- **PROJUDI**: Sistema de Processo Judicial Digital
- **STF**: Supremo Tribunal Federal
- **STJ**: Superior Tribunal de Justiça

#### Padrões Específicos por Sistema
Cada sistema tem regex customizados para detectar e remover assinaturas específicas:

**E-PROC:**
- "Assinado eletronicamente por [nome] em DD/MM/AAAA"
- Menções a "e-Proc" e "Tribunal Regional Federal"
- Links de verificação de assinatura

**E-SAJ:**
- Códigos de validação E-SAJ
- "Tribunal de Justiça do Estado de São Paulo"
- Foro Central/Regional
- "Assinado digitalmente... e-SAJ"

**PJE:**
- Códigos Verificadores PJe (8+ caracteres)
- "Processo Judicial Eletrônico"
- "Assinado eletronicamente por... PJe"

**PROJUDI:**
- "Sistema de Processo Judicial Digital"
- Assinaturas digitais PROJUDI

**STF:**
- "Supremo Tribunal Federal"
- "Praça dos Três Poderes"
- Assinaturas digitais STF

**STJ:**
- "Superior Tribunal de Justiça"
- Assinaturas digitais STJ

#### Detecção Automática Inteligente
Quando "AUTO" está selecionado, o sistema:
1. Analisa o texto completo extraído
2. Conta ocorrências de padrões de cada sistema
3. Seleciona o sistema com maior score
4. Exibe o sistema detectado nas estatísticas

### 🌐 Versão Web com CDN

#### Arquivo Standalone
- **Novo arquivo**: `index.html` - versão web completa
- **HTML único**: Tudo em um arquivo, fácil de hospedar
- **Sem dependências locais**: Usa CDN para bibliotecas
- **Funciona offline**: Versão v2.3 mantida para uso sem internet

#### Bibliotecas via CDN
- **PDF.js 2.6.347**: Via cdnjs.cloudflare.com
- **FileSaver.js 2.0.5**: Via cdnjs.cloudflare.com
- **Carregamento rápido**: CDN global com cache

### 🔧 Melhorias Técnicas

#### Refatoração do Código
- Código mais limpo e modular
- Separação clara entre UI e lógica de processamento
- Funções bem documentadas
- Performance otimizada

#### Sistema de Estatísticas
Exibe após processamento:
- Número de páginas processadas
- Total de itens removidos
- Sistema processual detectado/selecionado

#### Melhor Tratamento de Erros
- Mensagens de erro claras e estilizadas
- Validação antes do processamento
- Feedback visual durante processamento (loading spinner)

### 📝 Experiência do Usuário

#### Fluxo Simplificado
1. Selecionar PDF → exibe nome e tamanho do arquivo
2. Escolher sistema processual → badges visuais
3. Ajustar configurações → checkboxes organizados
4. Processar → feedback visual
5. Baixar TXT → botão habilitado após sucesso

#### Informações Contextuais
- Descrições em cada checkbox explicando o que será removido
- Estatísticas detalhadas após processamento
- Mensagens de erro amigáveis

### 🎯 Configurações Aprimoradas

Agora com interface mais clara:
- ✅ Remover hashes e códigos (SHA-256, MD5, hex)
- ✅ Remover assinaturas digitais (ICP-Brasil, certificados)
- ✅ Remover protocolos (códigos verificadores)
- ✅ Remover numeração de páginas
- ✅ Remover cabeçalho/rodapé repetitivo

---

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
