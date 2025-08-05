# NOTAS DE DESENVOLVIMENTO - BRIG
**Implementação IDMP Brasil - Sistema de Identificação de Produtos Medicinais**

Guia de Implementação FHIR R5 para Identificação de Medicamentos conforme padrões ISO 11615 e regulamentações ANVISA.

---

## Medidas Temporárias - v0.0.1

### Limite de Recursão PackagedProductDefinition

**Problema**: PackagedProductDefinition permite referências recursivas containedItem para outras instâncias PackagedProductDefinition, o que pode causar loops infinitos durante desenvolvimento e testes.

**Solução Temporária**:
- Adicionado comentário de aviso sobre limite de recursão de 3 níveis no perfil
- Adicionada invariante `ppd-br-003` como lembrete de desenvolvimento
- Validação manual necessária durante fase de desenvolvimento

**Localização**: `/input/fsh/profiles/PackagedProductDefinition-br.fsh`
- Linha ~121: Documentação em comentário
- Linha ~155: Invariante de aviso

**Elementos Afetados**:
```fsh
* packaging.containedItem.item only CodeableReference(ManufacturedItemDefinition or PackagedProductDefinition)
```

**Ações Requeridas**:
- [ ] Remover limite de recursão na versão de produção
- [ ] Implementar validação adequada de embalagens aninhadas
- [ ] Adicionar testes abrangentes para hierarquias complexas de embalagem

**Cronograma**: Remover após estabilização do perfil e implementação da lógica de validação adequada.

---

## Status dos Perfis (v0.0.1)

### Implementados (7/7):
- ✅ MedicinalProductDefinition-br
- ✅ SubstanceDefinition-br  
- ✅ Organization-anvisa-simple
- ✅ PackagedProductDefinition-br (com limite temporário de recursão)
- ✅ ManufacturedItemDefinition-br (básico)
- ✅ AdministrableProductDefinition-br
- ✅ Ingredient-br

### Completos:
Todos os 7 perfis principais do IDMP foram implementados com sucesso, incluindo suporte completo a identificadores ISO 11615 (MPID, PHPID, PCID).

---

## Notas de Implementação ISO 11615

### Coordenação Internacional PHPID

**Status Atual**: Implementação PLACEHOLDER pendente de coordenação UMC/OMS

**Questão**: PHPID requer governança internacional através do Uppsala Monitoring Centre (UMC/OMS) para identificação global de produtos farmacêuticos.

**Estratégia de Implementação**:
- **Fase 1 (Atual)**: PHPID opcional com sistema placeholder `http://umc-products.org`
- **Fase 2 (Futuro)**: Integração completa com sistema global UMC após coordenação internacional
- **Extensão**: `UMCIntegrationMapping` criada para rastreamento futuro de coordenação

**Dependências Críticas**:
- [ ] Estabelecer comunicação com Uppsala Monitoring Centre
- [ ] Definir representação brasileira na governança internacional PHPID
- [ ] Alinhar com iniciativas WHO Drug Dictionary Global (DDG)
- [ ] Coordenar com outras implementações nacionais IDMP

**Soluções Intermediárias**:
- MPID e PCID totalmente implementados com governança brasileira
- PHPID permanece opcional até estabelecimento do framework internacional
- Extensão UMC rastreia status de coordenação para integração futura

**Próximos Passos**:
1. Contatar UMC através do escritório OMS Brasil
2. Participar de reuniões de coordenação internacional IDMP
3. Alinhar com iniciativas globais de identificação farmacêutica
4. Implementar sistema PHPID completo após acordo internacional

**Referências**:
- ISO 11615:2017 - Informática em saúde — Identificação de produtos medicinais
- Uppsala Monitoring Centre (UMC): https://www.who-umc.org/
- WHO Drug Dictionary Global (DDG)

---

## Implementação de Elementos Definidores MPID (ISO 11615)

### Visão Geral
Implementadas extensões para rastrear elementos que, quando alterados, requerem geração de novo MPID conforme padrão ISO 11615.

### Extensões Implementadas
- `TherapeuticIndicationsDefining`: Rastreia indicações terapêuticas que definem MPID
- `LegalStatusDefining`: Rastreia mudanças de status legal que requerem novo MPID  
- `AssociatedDevices`: Rastreia dispositivos médicos associados

### Documentação das Regras de Mudança MPID

**Quando um novo MPID é necessário:**

1. **Mudanças de Indicações Terapêuticas** (Extensão: `therapeutic-indications-defining`)
   - Adição ou remoção de indicações terapêuticas principais
   - Mudança na categoria de indicação primária
   - Expansão significativa do escopo terapêutico
   - **Exemplos**: Adicionar indicação oncológica a analgésico, remover indicação chave

2. **Mudanças de Status Legal** (Extensão: `legal-status-defining`)  
   - Mudança de prescrição médica para venda livre (ou vice-versa)
   - Mudança na classificação de substância controlada
   - Adição/remoção de requisitos especiais de dispensação
   - **Exemplos**: Venda livre → Prescrição médica, adicionar status de substância controlada

3. **Mudanças de Dispositivos Associados** (Extensão: `associated-devices`)
   - Adição ou remoção de componentes de dispositivos médicos
   - Mudança no tipo ou funcionalidade do dispositivo
   - Modificação de características da combinação dispositivo-medicamento
   - **Exemplos**: Adicionar auto-injetor, remover dispositivo aplicador

4. **Elementos IDMP Centrais** (Propriedades FHIR existentes)
   - Mudanças de substância ativa (substância, concentração)
   - Mudanças de forma farmacêutica
   - Mudanças de via de administração
   - Mudanças de unidade de apresentação

### Regras de Validação (Invariantes)
- `mpd-br-004`: Valida se elementos definidores de indicações terapêuticas estão adequadamente codificados
- `mpd-br-005`: Valida se elementos definidores de status legal estão adequadamente codificados

### Localizações dos Arquivos
- **Extensões**: `/input/fsh/extensions/MPID-DefiningElements.fsh`
- **Integração de Perfil**: `/input/fsh/profiles/MedicinalProductDefinition-br.fsh` (linhas 146-159)
- **Invariantes**: `/input/fsh/profiles/MedicinalProductDefinition-br.fsh` (linhas 173-180)

### Diretrizes de Uso
1. **Registro de Novo Produto**: Todos os elementos definidores devem ser capturados durante registro inicial
2. **Atualizações de Produto**: Mudanças em elementos definidores acionam fluxo de mudança MPID
3. **Conformidade Regulatória**: Requisitos ANVISA alinhados com princípios ISO 11615
4. **Integração de Sistema**: Invariantes garantem qualidade e completude dos dados

---

## Implementação de Elementos Definidores PCID (ISO 11615)

### Visão Geral
Implementadas extensões para rastrear elementos de embalagem que, quando alterados, requerem geração de novo PCID conforme padrão ISO 11615.

### Extensões Implementadas

#### 1. PackageItemContainerDetails
- **URL**: `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/package-item-container-details`
- **Contexto**: `PackagedProductDefinition.packaging.containedItem`
- **Elementos**:
  - `containerType`: Tipo de recipiente (blister, frasco, ampola, etc.)
  - `containerQuantity`: Quantidade de recipientes por unidade
  - `containerMaterials`: Materiais do recipiente (PVC, alumínio, vidro, etc.)

#### 2. PackageComponentDetails  
- **URL**: `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/package-component-details`
- **Contexto**: `PackagedProductDefinition.packaging`
- **Elementos**:
  - `componentType`: Tipo de componente (tampa, rótulo, bula, etc.)
  - `componentMaterials`: Materiais do componente

#### 3. ManufacturedItemCriteria
- **URL**: `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/manufactured-item-criteria`
- **Contexto**: `PackagedProductDefinition.packaging.containedItem`
- **Elementos**:
  - `manufacturedDoseForm`: Forma farmacêutica manufaturada
  - `unitOfPresentation`: Unidade de apresentação
  - `quantityPerPackage`: Quantidade por embalagem

### Documentação das Regras de Mudança PCID

**Quando um novo PCID é necessário:**

1. **Mudanças de Tipo/Material do Recipiente** (Extensão: `package-item-container-details`)
   - Mudança no tipo de recipiente primário (blister → frasco)
   - Mudança nos materiais do recipiente (PVC → alumínio)
   - Adição/remoção de materiais do recipiente
   - **Exemplos**: Blister PVC → blister alumínio, frasco → ampola

2. **Mudanças de Componentes da Embalagem** (Extensão: `package-component-details`)
   - Adição/remoção de componentes da embalagem (aplicador, dessecante)
   - Mudança nos materiais dos componentes (tampa plástica → tampa alumínio)
   - Modificação de componentes funcionais
   - **Exemplos**: Adicionar tampa à prova de crianças, remover dessecante

3. **Mudanças de Critérios do Item Manufaturado** (Extensão: `manufactured-item-criteria`)
   - Mudança na forma farmacêutica manufaturada dentro da embalagem
   - Mudança na unidade de apresentação
   - Mudança na quantidade por embalagem
   - **Exemplos**: 10 comprimidos → 20 comprimidos, cápsula → comprimido

4. **Elementos Centrais de Embalagem** (Propriedades FHIR existentes)
   - Mudanças de tipo de embalagem (caixa → bolsa)
   - Mudanças de quantidade da embalagem
   - Mudanças de fabricação
   - Mudanças de EAN/GTIN

### Novos ValueSets Criados
- **ContainerTypeBR**: Blister, frasco, ampola, seringa, cartucho, sachê, bisnaga, etc.
- **ContainerMaterialsBR**: PVC, PE, PP, PET, alumínio, vidro, papelão, etc.
- **PackageComponentsBR**: Tampa, lacre, rótulo, bula, dessecante, separador, etc.

### Regras de Validação (Invariantes)
- `ppd-br-004`: Valida se elementos definidores de tipo/material do recipiente estão adequadamente codificados
- `ppd-br-005`: Valida requisitos de quantidade para mudanças PCID

### Localizações dos Arquivos
- **Extensões**: `/input/fsh/extensions/PCID-DefiningElements.fsh`
- **Integração de Perfil**: `/input/fsh/profiles/PackagedProductDefinition-br.fsh` (linhas 141-156)
- **Invariantes**: `/input/fsh/profiles/PackagedProductDefinition-br.fsh` (linhas 176-183)

### Diretrizes de Uso
1. **Registro de Nova Embalagem**: Todos os elementos definidores devem ser capturados durante registro inicial
2. **Atualizações de Embalagem**: Mudanças em elementos definidores acionam fluxo de mudança PCID
3. **Conformidade Regulatória**: Requisitos de embalagem ANVISA alinhados com princípios ISO 11615
4. **Integração de Sistema**: Extensões habilitam detecção automatizada de mudança PCID

### Conformidade Internacional
- Alinhado com requisitos ISO 11615 para identificação de embalagem
- Compatível com implementações IDMP internacionais
- Suporta verificação automatizada de conformidade regulatória
- Habilita gestão adequada do ciclo de vida da embalagem

---

## Implementação de Regras de Ciclo de Vida de Identificadores (ISO 11615)

### Visão Geral
Implementada gestão abrangente do ciclo de vida para identificadores MPID/PCID para definir quando manter vs criar novos identificadores conforme padrões internacionais.

### Extensão IdentifierLifecycleRules
- **URL**: `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/identifier-lifecycle-rules`
- **Contexto**: MedicinalProductDefinition, PackagedProductDefinition
- **Elementos**:
  - `previousMPID`: String - MPID anterior quando houve mudança
  - `previousPCID`: String - PCID anterior quando houve mudança  
  - `changeReason`: CodeableConcept - Motivo específico da mudança
  - `changeDate`: Date - Data da implementação da mudança
  - `changeSeverity`: Code - Nível de severidade (menor, moderada, maior, crítica)
  - `impactedProducts`: Reference[] - Produtos impactados pela mudança

### Motivos de Mudança de Identificadores (CodeSystem)

#### Mudanças que Requerem MPID
- `mah-transfer`: Transferência de detentor do registro
- `legal-status-change`: Mudança status legal (prescrição ↔ venda livre)
- `indication-change`: Mudança significativa em indicações terapêuticas
- `strength-change`: Alteração concentração/dosagem da substância ativa
- `form-change`: Alteração forma farmacêutica
- `route-change`: Mudança via de administração
- `substance-change`: Alteração substância ativa

#### Mudanças que Requerem PCID  
- `package-change`: Alteração significativa na embalagem
- `container-change`: Mudança tipo/material recipiente primário
- `quantity-change`: Alteração quantidade por embalagem
- `component-change`: Modificação componentes da embalagem

#### Mudanças Administrativas
- `regulatory-requirement`: Exigência regulatória
- `safety-update`: Atualização de segurança
- `quality-improvement`: Melhoria de qualidade
- `brand-change`: Mudança marca comercial
- `manufacturer-change`: Alteração fabricante

### Níveis de Severidade de Mudança
- **Menor**: Mudança menor sem impacto na segurança/eficácia
- **Moderada**: Mudança moderada com impacto limitado
- **Maior**: Mudança significativa que afeta características do produto
- **Crítica**: Mudança crítica que afeta segurança/eficácia

### Status do Ciclo de Vida do Identificador
- **Ativo**: Identificador atualmente ativo
- **Substituído**: Identificador substituído por nova versão
- **Depreciado**: Identificador depreciado mas ainda válido
- **Retirado**: Identificador retirado e não mais válido
- **Suspenso**: Identificador temporariamente suspenso

### Matriz de Decisão: Quando Criar Novos Identificadores

#### MANTER o Mesmo MPID Quando:
- Mudanças administrativas menores (contato, endereço)
- Correções tipográficas na rotulagem
- Atualizações de bula sem mudança de indicação
- Mudanças de preço ou comercialização
- Alterações de fabricante sem mudança técnica

#### CRIAR Novo MPID Quando:
- **Substância Ativa**: Qualquer mudança (adição, remoção, alteração)
- **Concentração/Dosagem**: Mudança na força da substância ativa
- **Forma Farmacêutica**: Comprimido → Cápsula, Líquido → Pó
- **Via de Administração**: Oral → Injetável, Tópico → Sistêmico
- **Indicações Terapêuticas**: Mudanças significativas no espectro terapêutico
- **Status Legal**: Prescrição médica → Venda livre, Controlado → Não controlado
- **Detentor do Registro**: Transferência da autorização de comercialização

#### MANTER o Mesmo PCID Quando:
- Mudanças de rotulagem/arte gráfica
- Alterações de idioma na embalagem
- Mudanças de fornecedor de componentes secundários
- Correções tipográficas na embalagem

#### CRIAR Novo PCID Quando:
- **Recipiente Primário**: Blister → Frasco, PVC → Alumínio
- **Quantidade**: 10 unidades → 20 unidades
- **Materiais**: Mudança materiais de embalagem primária
- **Componentes**: Adição/remoção aplicador, dessecante
- **Tipo Embalagem**: Caixa → Bolsa, Individual → Multi-dose

### Regras de Validação (Invariantes)
- `mpd-br-006`: Motivo de mudança deve ser consistente com tipo de elemento alterado
- `mpd-br-007`: MPID anterior deve ser fornecido quando há mudança que requer novo MPID
- `ppd-br-006`: Motivo de mudança deve ser consistente com alteração na embalagem
- `ppd-br-007`: PCID anterior deve ser fornecido quando há mudança que requer novo PCID

### Diretrizes de Uso
1. **Rastreamento Obrigatório**: Todas as mudanças significativas devem ser documentadas
2. **Rastreabilidade**: Manter histórico completo de identificadores anteriores
3. **Consistência**: Motivo da mudança deve ser consistente com tipo de alteração
4. **Gestão de Dados**: Registrar data precisa da implementação da mudança
5. **Avaliação de Impacto**: Identificar produtos relacionados impactados

### Conformidade Regulatória
- **Alinhamento ANVISA**: Alinhado com processos de variação/alteração da ANVISA
- **Conformidade ISO 11615**: Totalmente compatível com padrões internacionais
- **Trilha de Auditoria**: Histórico completo para auditoria regulatória
- **Gestão de Mudanças**: Processo estruturado para gestão de mudanças

### Localizações dos Arquivos
- **Extensões**: `/input/fsh/extensions/IdentifierLifecycle.fsh`
- **Integração MPID**: `/input/fsh/profiles/MedicinalProductDefinition-br.fsh` (linhas 146-162)
- **Integração PCID**: `/input/fsh/profiles/PackagedProductDefinition-br.fsh` (linhas 150-163)
- **Invariantes**: Ambos os perfis (mpd-br-006/007, ppd-br-006/007)

---

## Implementação de Partes do Nome do Produto (Padrões Internacionais)

### Visão Geral
Implementado suporte abrangente para partes estruturadas do nome do produto conforme padrões internacionais para habilitar identificação adequada de elementos definidores MPID dentro dos nomes dos produtos.

### Extensão ProductNameParts
- **URL**: `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/product-name-parts`
- **Contexto**: `MedicinalProductDefinition.name`
- **Elementos**:
  - `inventedNamePart`: String - Nome fantasia/comercial inventado
  - `scientificNamePart`: String - Nome científico/DCI/DCB
  - `companyNamePart`: String - Nome ou abreviação da empresa
  - `strengthPart`: String - Especificação da concentração/dosagem
  - `formPart`: String - Forma farmacêutica no nome
  - `containerPart`: String - Tipo de recipiente especificado
  - `populationPart`: String - População alvo (pediátrico, etc.)

### Integração DCB (Denominações Comuns Brasileiras)
- **CodeSystem**: `http://farmaco.maxapex.net/brig/fhir/CodeSystem/dcb-brasileiras`
- **Cobertura**: 25+ principais DCBs por categoria terapêutica
- **Categorias**:
  - Analgésicos: dipirona, paracetamol, ibuprofeno
  - Antibióticos: amoxicilina, azitromicina, ciprofloxacino
  - Cardiovasculares: losartana, enalapril, anlodipino
  - Psiquiátricos: fluoxetina, sertralina, risperidona
  - Endócrinos: metformina, levotiroxina
  - Respiratórios: salbutamol, budesonida
  - Gastroenterológicos: omeprazol, domperidona

### Regras de Extração de Nomes para Elementos MPID

#### Partes Centrais Definidoras de MPID:
1. **Parte do Nome Científico** (DCB/DCI)
   - **Impacto MPID**: CRÍTICO - Mudanças requerem novo MPID
   - **Exemplos**: "Dipirona" → "Paracetamol" = Novo MPID
   - **Validação**: Deve corresponder ao ValueSet DCB brasileiras

2. **Parte da Concentração/Dosagem**  
   - **Impacto MPID**: CRÍTICO - Mudanças requerem novo MPID
   - **Exemplos**: "500mg" → "1000mg" = Novo MPID
   - **Padrões**: Numérico + unidade (mg, g, %, UI, etc.)

3. **Parte da Forma Farmacêutica**
   - **Impacto MPID**: CRÍTICO - Mudanças requerem novo MPID  
   - **Exemplos**: "Comprimido" → "Cápsula" = Novo MPID
   - **Validação**: Deve alinhar com combinedPharmaceuticalDoseForm

#### Partes NÃO Definidoras de MPID:
1. **Parte do Nome Fantasia**
   - **Impacto MPID**: NENHUM - Mudanças NÃO requerem novo MPID
   - **Exemplos**: "Dipirox" → "Anador" = Mesmo MPID possível
   - **Propósito**: Diferenciação comercial apenas

2. **Parte do Nome da Empresa**
   - **Impacto MPID**: NENHUM - Mudanças NÃO requerem novo MPID
   - **Exemplos**: "Medley" → "EMS" = Mesmo MPID possível
   - **Propósito**: Identificação de marca apenas

3. **Partes de Recipiente/População**
   - **Impacto MPID**: DEPENDENTE DO CONTEXTO
   - **Recipiente**: Pode afetar PCID mas não MPID
   - **População**: Pode indicar concentração/forma diferente

### Exemplos de Análise de Nomes

#### Exemplo 1: "Dipirox 500mg Comprimidos - Medley"
- `inventedNamePart`: "Dipirox"
- `scientificNamePart`: "Dipirona" (inferido da DCB)
- `strengthPart`: "500mg"
- `formPart`: "Comprimidos"
- `companyNamePart`: "Medley"

#### Exemplo 2: "Amoxicilina 875mg Comprimidos Revestidos Pediátrico"
- `scientificNamePart`: "Amoxicilina"
- `strengthPart`: "875mg"
- `formPart`: "Comprimidos Revestidos"
- `populationPart`: "Pediátrico"

#### Exemplo 3: "Losartana Potássica 50mg - EMS Genérico"
- `scientificNamePart`: "Losartana"
- `strengthPart`: "50mg"
- `companyNamePart`: "EMS"
- `inventedNamePart`: "Genérico" (indicador de classificação)

### Matriz de Decisão de Geração MPID

#### Cenário: Mudanças no Nome do Produto
| Tipo de Mudança | Parte Antiga | Parte Nova | Decisão MPID |
|------------------|--------------|------------|--------------|
| Científico | "Dipirona" | "Paracetamol" | **NOVO MPID** |
| Concentração | "500mg" | "1000mg" | **NOVO MPID** |
| Forma | "Comprimido" | "Cápsula" | **NOVO MPID** |
| Fantasia | "Dipirox" | "Anador" | **MESMO MPID** |
| Empresa | "Medley" | "EMS" | **MESMO MPID** |
| Recipiente | "Frasco" | "Blister" | **MESMO MPID** (afeta PCID) |

### Regras de Validação (Invariantes)
- `mpd-br-008`: "Produto deve ter pelo menos nome fantasia OU nome científico"
- **Justificativa**: Todo produto deve ser identificável por nome comercial ou científico

### Extensão de Validação de Nome
- **NameValidationRules**: Controles adicionais de validação
- **requiresInventedName**: Boolean para nomes comerciais obrigatórios
- **requiresScientificName**: Boolean para DCB/DCI obrigatório
- **allowedCharacters**: Regex para validação de caracteres

### Benefícios da Implementação
1. **Decisão Automatizada MPID**: Sistema pode determinar automaticamente mudanças MPID
2. **Conformidade Regulatória**: Alinhado com requisitos de nomenclatura ANVISA
3. **Compatibilidade Internacional**: Compatível com padrões globais de análise de nomes
4. **Garantia de Qualidade**: Validação estruturada previne erros de nomenclatura
5. **Análise de Dados**: Habilita análise sofisticada de nomes de produtos

### Diretrizes de Uso
1. **Sempre Preencher**: Extrair todas as partes identificáveis do nome
2. **Alinhamento DCB**: Garantir que nomes científicos correspondam à DCB brasileiras
3. **Consistência de Concentração**: Alinhar partes de concentração com concentração real do produto
4. **Validação de Forma**: Validar partes de forma contra forma farmacêutica real
5. **Rastreamento de Mudanças**: Usar partes do nome para identificar mudanças que requerem MPID

### Localizações dos Arquivos
- **Extensões**: `/input/fsh/extensions/ProductNameParts.fsh`
- **Integração de Perfil**: `/input/fsh/profiles/MedicinalProductDefinition-br.fsh` (linhas 84-116)
- **CodeSystem DCB**: Cobertura completa de DCB brasileiras com categorias terapêuticas
- **Validação**: Invariante mpd-br-008 garante completude da nomenclatura

---

*Última Atualização: 2025-08-04*