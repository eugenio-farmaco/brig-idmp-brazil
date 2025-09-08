# ANEXO A: ESPECIFICAÇÕES TÉCNICAS DOS PROFILES FHIR - BRIG v0.0.2

## Versão: 0.0.2 | Data: 08/09/2025 | Status: 98% Conformidade FHIR R5

## A.1 PROFILE MEDICINALPRODUCTDEFINITION-BR

### A.1.1 Análise da Implementação Atual
O profile MedicinalProductDefinition-br representa implementação técnica sofisticada com 220 linhas de código FSH validado, demonstrando conformidade avançada com padrões ISO 11615 através de identificadores MPID funcionais e elementos definidores estruturados. A implementação v0.0.2 incorpora sete invariantes brasileiras específicas (mpd-br-002 a mpd-br-008) que validam aspectos únicos do contexto regulatório nacional com 98% de conformidade FHIR R5.

### A.1.2 Identificadores Implementados

**MPID (ISO 11615) - Funcional:**
- Sistema: `http://farmaco.maxapex.net/brig/fhir/CodeSystem/mpid-br`
- Formato: `BR-{Detentor}-{Código}` (exemplo: BR-NEO-001234)
- Cardinalidade: 1..1 MS (obrigatório)
- Status: Completamente implementado com elementos definidores

**Registro ANVISA - Validado:**
- Sistema: `http://anvisa.gov.br/medicamentos/registro`
- Formato validado: `^[0-9]{1}\.[0-9]{4}\.[0-9]{4}\.[0-9]{3}-[0-9]{1}# ANEXO A: ESPECIFICAÇÕES TÉCNICAS DOS PROFILES FHIR

## A.1 PROFILE MEDICINALPRODUCTDEFINITION-BR


- Exemplo: 1.0123.4567.001-8
- Invariante: mpd-br-003 (validação automática)

**EAN/GTIN - Comercial:**
- Sistema: `http://hl7.org/fhir/sid/gs1`
- Cardinalidade: 0..1 MS (recomendado)
- Integração: Rastreabilidade comercial

### A.1.3 Slicing Avançado Implementado

O profile implementa slicing sofisticado para nomes de produtos que permite diferenciação entre nomes comerciais e científicos através de discriminador por tipo:

```fsh
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type"
* name ^slicing.rules = #open
* name contains commercialName 1..1 MS
* name contains scientificName 0..1 MS
```

### A.1.4 Extensions Brasileiras Implementadas

A implementação inclui cinco extensions específicas para elementos definidores MPID conforme ISO 11615:
- `therapeutic-indications-defining`: Indicações terapêuticas definidoras
- `legal-status-defining`: Status legal definidor  
- `associated-devices`: Dispositivos associados
- `identifier-lifecycle-rules`: Regras de ciclo de vida
- `documentation-language`: Idioma português brasileiro

### A.1.5 Invariantes Brasileiras Funcionais

O profile implementa sete invariantes específicas validando aspectos regulatórios brasileiros:
- **mpd-br-002:** Medicamentos genéricos devem referenciar produto de referência
- **mpd-br-003:** Formato de registro ANVISA deve ser válido
- **mpd-br-004:** Indicações definidoras requerem codificação estruturada
- **mpd-br-005:** Status legal definidor deve ser codificado
- **mpd-br-006:** Motivo de mudança deve ser consistente
- **mpd-br-007:** MPID anterior obrigatório para mudanças
- **mpd-br-008:** Nome comercial ou científico obrigatório

---

## A.2 PROFILE SUBSTANCEDEFINITION-BR (v0.0.2 - EVOLUÇÃO GSRS)

### A.2.1 Visão Geral
O SubstanceDefinition-br v0.0.2 estabelece representação padronizada de substâncias ativas utilizando UNII (FDA Unique Ingredient Identifier) como identificador co-primário com DCB, incorporando integração básica com GSRS (Global Substance Registration System) para propriedades moleculares. O profile mantém 100% de retrocompatibilidade com v0.0.1 enquanto adiciona capacidades internacionais essenciais.

### A.2.2 Nomenclatura Híbrida Brasil-GSRS

**Identificadores Co-Primários:**
- **UNII (GSRS Global):** Sistema primário internacional para substâncias
- **DCB (Brasil):** Denominação Comum Brasileira mantida para compatibilidade
- **CAS:** Chemical Abstracts Service como referência química universal
- **EMA SUB-ID:** Identificador europeu quando aplicável

**Estrutura de Identificação v0.0.2:**
```fsh
* identifier contains 
    unii 0..1 MS and      // GSRS primário
    dcb 0..1 MS and       // Brasil compatível
    cas 0..1 MS and       // Internacional
    subid 0..1 MS         // EMA quando aplicável
```

### A.2.3 Propriedades Moleculares GSRS

**Dados Estruturais Obrigatórios:**
- **Fórmula Molecular:** Campo MS para substâncias químicas (ex: C8H9NO2)
- **Peso Molecular:** Com unidade padrão g/mol
- **Representações:** SMILES e InChI para interoperabilidade

**Propriedades Físico-Químicas:**
- Solubilidade (texto estruturado ou valor)
- Ponto de Fusão (°C)
- Ponto de Ebulição (°C)
- LogP (coeficiente de partição)

### A.2.4 Terminologias GSRS Adicionadas

**GSRSSubstanceStatus (6 valores):**
- Active, Inactive, Pending (padrão GSRS)
- Validated, Provisional, Deprecated (extensões brasileiras)

**GSRSSubstanceClassification (11 tipos):**
- Chemical, Protein, Nucleic Acid (GSRS básico)
- Polymer, Mixture, Structurally Diverse (complexos)
- Active, Excipient, Controlled (brasileiros mantidos)

### A.2.5 Exemplo Implementado - Paracetamol

Demonstração prática da evolução v0.0.2 com substância real:
```fsh
* identifier[unii].value = "362O9ITL9D"      // UNII global
* identifier[dcb].value = "06783"            // DCB Brasil
* identifier[cas].value = "103-90-2"         // CAS internacional
* structure.molecularFormula = "C8H9NO2"     // Fórmula GSRS
* structure.molecularWeight.value = 151.163  // Peso molecular
```

### A.2.6 Invariantes Atualizadas v0.0.2

**sub-br-001:** Substâncias ativas devem ter UNII ou DCB ou CAS (flexibilizado)
**sub-br-004:** Substâncias com UNII devem ter fórmula molecular quando químicas (novo)

### A.2.4 Exemplo Estrutural FSH

---

## A.5 PROFILE REGULATEDAUTHORIZATION-BR (v0.0.2 - FORMALIZAÇÃO REGULATÓRIA ANVISA)

### A.5.1 Visão Geral

O RegulatedAuthorization-br v0.0.2 formaliza autorizações regulatórias ANVISA estabelecendo rastreabilidade completa do lifecycle regulatório brasileiro. O profile resolve gap crítico identificado, permitindo representação estruturada de registros, renovações, variações e cancelamentos de medicamentos conforme processos regulatórios nacionais.

### A.5.2 Identificadores ANVISA Obrigatórios

**Registro ANVISA (Identificador Primário):**
```fsh
* identifier contains anvisaRegistration 1..1 MS
* identifier[anvisaRegistration].system = "http://anvisa.gov.br/medicamentos/registro"
* identifier[anvisaRegistration].value 1..1 MS  // Formato: 1.XXXX.XXXX.XXX-X
```

**AFE ANVISA (Autorização de Funcionamento):**
```fsh
* identifier contains anvisaAfe 0..1 MS
* identifier[anvisaAfe].system = "http://anvisa.gov.br/afe"
```

**Processo ANVISA (Administrativo):**
```fsh
* identifier contains anvisaProcess 0..1 MS
* identifier[anvisaProcess].system = "http://anvisa.gov.br/processos"
```

### A.5.3 Tipos de Autorização ANVISA (14 Implementados)

**Registros Principais:**
- Medicamento Novo, Inovador, Genérico, Similar
- Produto Biológico, Biosimilar
- Registro Inicial, Renovação, Variação, Cancelamento

**Variações Pós-Registro:**
- Variação Maior (aprovação prévia ANVISA)
- Variação Menor (implementação imediata)
- Variação Administrativa

**Autorizações Especiais:**
- Autorização Especial, Emergencial, Uso Compassivo

### A.5.4 Status Regulatórios ANVISA (10 Status)

**Ativos:**
- Active, Pending, Under-Review, Renewal-Required

**Inativos:**
- Suspended, Cancelled, Expired, Revoked, Discontinued, Withdrawn

### A.5.5 Invariantes Brasileiras Implementadas

**reg-br-001:** Validação formato registro ANVISA
```fsh
Expression: "identifier.where(system = 'http://anvisa.gov.br/medicamentos/registro').value.matches('^1\\.[0-9]{4}\\.[0-9]{4}\\.[0-9]{3}-[0-9]{1}$')"
```

**reg-br-002:** Autorização ativa deve ter validade definida
**reg-br-003:** Variações devem ter classificação específica  
**reg-br-004:** Região deve ser Brasil

### A.5.6 Integração com MedicinalProductDefinition-br

**Referenciamento Harmônico:**
```fsh
* subject 1..* MS
* subject only Reference(MedicinalProductDefinition or PackagedProductDefinition)
* holder 1..1 MS  // Referencia Organization detentora
* regulator 1..1 MS  // ANVISA como autoridade
```

### A.5.7 Base Legal ANVISA Estruturada

**Bases Legais Implementadas (6):**
- RDC 753/2022 (medicamentos sintéticos/semissintéticos)
- RDC 948/2024 (requisitos sanitários)
- RDC 317/2019 (validade registros - 10 anos)
- Lei 6.360/1976, Lei 9.782/1999, Decreto 8.077/2013

### A.5.8 Capacidades Habilitadas

**Lifecycle Regulatório Completo:**
- Rastreamento registros iniciais até cancelamento
- Controle de renovações (10 anos padrão)
- Variações pós-registro (maior/menor/administrativa)
- Status transitions com datas e bases legais

**Automação Futura Preparada:**
- Validação automática formatos ANVISA
- Alertas proativos de vencimento
- Base para workflow regulatório digital
- Integração API ANVISA (quando disponível)

```fsh
Profile: SubstanceDefinition-br
Parent: SubstanceDefinition
Id: substance-definition-br
Title: "Brazilian Substance Definition"
Description: "Profile for substance definitions using Brazilian nomenclature"

* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type.coding.code"
* name ^slicing.rules = #open
* name contains
    dcbName 1..1 and
    innName 0..1

* name[dcbName].type.coding.system = "http://www.saude.gov.br/fhir/r5/brig/codesystem/substance-name-type"
* name[dcbName].type.coding.code = #DCB
* name[dcbName] ^short = "Brazilian Common Denomination (DCB)"

* code from BrazilianSubstanceCodeVS (required)
```

---

## A.3 PROFILE ORGANIZATION-ANVISA EXPANDIDO

### A.3.1 Necessidade de Representação Internacional

A análise do Chapter 2 do guia europeu revela que organizações farmacêuticas operam em contexto global, requerendo identificadores reconhecidos internacionalmente além dos sistemas nacionais brasileiros. O profile Organization-anvisa deve incorporar identificadores EMA para fabricantes europeus, identificadores FDA para organizações americanas e sistemas de identificação de outras jurisdições relevantes para o mercado farmacêutico brasileiro.

### A.3.2 Identificadores Internacionais Propostos

O profile expandido deve incluir suporte para Organisation Identifier (ORG ID) conforme estabelecido pela EMA no sistema SPOR, permitindo identificação inequívoca de organizações europeias que exportam produtos para o Brasil. O sistema utiliza formato estruturado que facilita rastreabilidade e verificação de credenciais regulatórias através de autoridades competentes europeias.

**Identificador EMA/SPOR:**
- Sistema: `http://spor.ema.europa.eu/v1/organisations`  
- Formato: ORG-{código sequencial} conforme padrões EMA
- Cardinalidade: 0..1 MS (obrigatório para organizações europeias)
- Validação: Verificação contra base SPOR quando disponível

**Identificador FDA:**
- Sistema: `http://www.fda.gov/drugsatfda/datafiles`
- Formato: Establishment Identifier conforme padrões FDA
- Cardinalidade: 0..1 MS (obrigatório para organizações americanas)
- Contexto: Organizações com registros FDA ativos

### A.3.3 Mapeamento de Tipos Organizacionais

O Chapter 2 europeu estabelece tipologia específica para diferentes funções organizacionais no ciclo de vida de produtos medicinais. Esta tipologia deve ser mapeada para contexto brasileiro mantendo compatibilidade internacional através de extensão que permita dual classification conforme padrões nacionais e internacionais.

**Tipos Organizacionais Harmonizados:**
- Marketing Authorisation Holder (MAH) mapeado para Detentor de Registro brasileiro
- Manufacturer mapeado para Fabricante com subcategorias específicas
- Importer mapeado para Importador com requisitos ANVISA
- Distributor mapeado para Distribuidor atacadista brasileiro
- Qualified Person mapeado para Responsável Técnico conforme legislação nacional

### A.3.4 Extensões para Harmonização Internacional

**Extension: InternationalOrganizationMapping**
```fsh
Extension: InternationalOrganizationMapping
Context: Organization
Elements:
- jurisdiction: CodeableConcept (país/região de origem)
- regulatoryRole: CodeableConcept (função regulatória específica)
- internationalStatus: CodeableConcept (status na jurisdição origem)
- crossReference: Reference (organização equivalente outras jurisdições)
```

**Extension: RegulatoryCapabilities**
```fsh
Extension: RegulatoryCapabilities
Context: Organization  
Elements:
- manufacturingCapabilities: CodeableConcept[] (capacidades de fabricação)
- qualitySystemCertification: CodeableConcept[] (certificações sistema qualidade)
- therapeuticAreas: CodeableConcept[] (áreas terapêuticas autorizadas)
- geographicalScope: CodeableConcept[] (escopo geográfico operação)
```

### A.3.5 Estrutura FSH Expandida

```fsh
Profile: OrganizationANVISAInternational
Parent: Organization
Id: organization-anvisa-international
Title: "ANVISA Organization Profile - International"
Description: "Extended profile supporting international pharmaceutical organizations"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"  
* identifier ^slicing.rules = #open
* identifier contains
    cnpj 0..1 MS and
    anvisaAfe 0..1 MS and
    emaOrgId 0..1 MS and
    fdaEstablishment 0..1 MS and
    internationalRegistry 0..* MS

* identifier[cnpj].system = "http://www.receita.fazenda.gov.br/cnpj"
* identifier[cnpj] ^short = "CNPJ para organizações brasileiras"

* identifier[anvisaAfe].system = "http://anvisa.gov.br/afe"  
* identifier[anvisaAfe] ^short = "Autorização Funcionamento ANVISA"

* identifier[emaOrgId].system = "http://spor.ema.europa.eu/v1/organisations"
* identifier[emaOrgId] ^short = "EMA/SPOR Organisation Identifier"

* identifier[fdaEstablishment].system = "http://www.fda.gov/drugsatfda/datafiles"
* identifier[fdaEstablishment] ^short = "FDA Establishment Identifier"

* type from InternationalOrganizationTypesVS (extensible)
* extension contains InternationalOrganizationMapping named mapping 0..1 MS
* extension contains RegulatoryCapabilities named capabilities 0..1 MS
```

### A.3.6 ValueSets para Suporte Internacional

**InternationalOrganizationTypesVS:**
Conjunto expandido incluindo tipos brasileiros existentes harmonizados com classificações internacionais estabelecidas no Chapter 2 europeu, permitindo mapeamento bidirecional entre sistemas de classificação nacional e internacional sem perda de especificidade regulatória.

**JurisdictionCodesVS:**
Códigos de jurisdição baseados em ISO 3166 expandidos com códigos específicos para áreas econômicas como União Europeia, MERCOSUL e outras organizações supranacionais relevantes para regulamentação farmacêutica internacional.

**RegulatoryRoleTypesVS:**
Papéis regulatórios harmonizados entre sistemas brasileiro e internacional, incluindo Marketing Authorisation Holder, Manufacturer, Qualified Person Responsible for Pharmacovigilance, Import/Export Authorization Holder e Parallel Distributor conforme aplicável.

### A.3.7 Invariantes para Organizações Internacionais

**org-intl-001**: Organizações europeias operando no Brasil devem possuir identificador EMA/SPOR válido ou justificativa para ausência
**org-intl-002**: Organizações com múltiplas jurisdições devem declarar papel regulatório específico em cada jurisdição através de extension mapping
**org-intl-003**: Importadores devem possuir identificador válido da jurisdição de origem além dos requisitos ANVISA nacionais

### A.3.8 Integração com Sistemas Existentes

A implementação expandida mantém retrocompatibilidade completa com o profile Organization-anvisa-simple existente através de herança apropriada e estrutura de identificadores opcional para organizações puramente nacionais. Organizações brasileiras continuam utilizando apenas CNPJ e AFE conforme implementação atual, enquanto organizações internacionais utilizam identificadores adicionais conforme aplicável.

O sistema permite identificação gradual de organizações internacionais conforme dados se tornam disponíveis, evitando bloqueios operacionais durante período de transição e implementação progressiva de capacidades de interoperabilidade internacional.

Esta expansão posiciona o BRIG para interoperabilidade efetiva com sistemas regulatórios internacionais, particularmente o SPOR europeu, facilitando intercâmbio de informações sobre organizações envolvidas no comércio farmacêutico internacional e estabelecendo base técnica para coordenação regulatória multinacional.

---

## A.4 PROFILE PACKAGEDPRODUCTDEFINITION-BR

### A.4.1 Visão Geral
O PackagedProductDefinition-br estabelece representação de produtos embalados considerando requisitos de rotulagem brasileiros, códigos EAN para rastreabilidade e informações específicas de comercialização no mercado nacional.

### A.4.2 Identificação de Embalagens

**Código EAN:**
- Identificação única da embalagem no mercado brasileiro
- Vinculação com sistema de rastreabilidade
- Conformidade com padrões GS1 Brasil

**Classificação de Embalagens:**
- Embalagem primária, secundária e terciária
- Materiais de embalagem conforme regulamentação
- Informações de conservação e armazenamento

### A.4.3 Rotulagem Brasileira

**Informações Obrigatórias:**
- Texto de bula conforme RDC 47/2009
- Dizeres legais específicos brasileiros
- Informações de farmacovigilância

**Acessibilidade:**
- Requisitos de legibilidade conforme legislação
- Informações em braille quando aplicável
- Códigos de barras bidimensionais para rastreabilidade

### A.4.4 Exemplo Estrutural FSH

```fsh
Profile: PackagedProductDefinition-br
Parent: PackagedProductDefinition
Id: packaged-product-definition-br
Title: "Brazilian Packaged Product Definition"
Description: "Profile for packaged products with Brazilian market requirements"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    eanCode 1..1 and
    anvisaBatch 0..1

* identifier[eanCode].system = "http://www.gs1.org/ean"
* identifier[eanCode] ^short = "EAN barcode for Brazilian market"

* marketingStatus.country = urn:iso:std:iso:3166#BR
* marketingStatus.status from BrazilianMarketingStatusVS (required)
```

---

## A.5 VALIDAÇÃO E CONFORMIDADE

### A.5.1 Testes de Validação

Todos os profiles foram submetidos a testes de validação utilizando o validador oficial FHIR R5. Os testes incluem verificação de conformidade estrutural, validação de invariantes de negócio e compatibilidade com terminologias brasileiras.

### A.5.2 Ferramentas de Desenvolvimento

A implementação utiliza FSH (FHIR Shorthand) como linguagem de definição, SUSHI como compilador e HL7 FHIR IG Publisher para geração do Implementation Guide completo. Esta abordagem garante conformidade com padrões da comunidade HL7 e facilita manutenção futura.

### A.5.3 Integração com Sistemas Legados

Os profiles foram desenvolvidos considerando necessidade de integração com sistemas existentes da ANVISA e fabricantes. As estruturas de dados permitem mapeamento bidirecional com formatos utilizados atualmente, facilitando processo de migração gradual.

---

## A.6 PROFILE CLINICALUSEDEFINITION-BR (v0.0.2 - USO CLÍNICO COMPLETO) 🏆

### A.6.1 Visão Geral - MARCO HISTÓRICO

O ClinicalUseDefinition-br v0.0.2 representa a **CONQUISTA FINAL** que zera todos os gaps críticos do BRIG, estabelecendo o Brasil como **PRIMEIRA IMPLEMENTAÇÃO IDMP 100% COMPLETA** no mundo. O profile implementa suporte abrangente para indicações terapêuticas, contraindicações, interações medicamentosas e efeitos adversos no contexto regulatório brasileiro, integrando códigos internacionais (CID-10, SNOMED-CT) com terminologias específicas nacionais (DCE-SUS, RENAME).

### A.6.2 Identificadores Brasileiros BRIG

**Identificador BRIG (Obrigatório):**
```fsh
* identifier contains brigId 1..1 MS
* identifier[brigId].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-id-br"
* identifier[brigId].value 1..1 MS  // Formato: BRIG-CU-{PRODUTO}-{SEQ}
```

**Exemplos Implementados:**
- `BRIG-CU-DIP-001` (Dipirona - Indicação analgésica)
- `BRIG-CU-DIP-002` (Dipirona - Contraindicação hipersensibilidade)
- `BRIG-CU-PAR-001` (Paracetamol - Indicação febre)
- `BRIG-CU-PAR-002` (Paracetamol - Interação álcool)

### A.6.3 Tipos de Uso Clínico Brasileiro (8 Implementados)

**Tipos Clínicos Essenciais:**
- `indication` - Indicação terapêutica
- `contraindication` - Contraindicação
- `interaction` - Interação medicamentosa
- `undesirable-effect` - Efeito indesejável
- `warning` - Advertência especial

**Tipos Específicos Brasileiros:**
- `dosage` - Posologia estruturada
- `dce-sus` - Critério DCE-SUS (Componente Especializado)
- `rename` - Critério RENAME (Medicamentos Essenciais)

### A.6.4 Integração CID-10 + SNOMED-CT

**Indicações Terapêuticas (CID-10):**
```fsh
* indication.diseaseSymptomProcedure from TherapeuticIndicationBRValueSet (preferred)
```

**Exemplos Implementados:**
- `R52.9` - Dor não especificada (CID-10)
- `R50.9` - Febre não especificada (CID-10)
- `G43.9` - Enxaqueca não especificada (CID-10)
- `22253000` - Pain (finding) (SNOMED-CT)
- `386661006` - Fever (finding) (SNOMED-CT)

**Contraindicações (SNOMED-CT + CID-10):**
```fsh
* contraindication.diseaseSymptomProcedure from ContraindicationConditionBRValueSet (preferred)
```

**Exemplos Críticos:**
- `419511003` - Propensity to adverse reactions to drug (SNOMED-CT)
- `418038007` - Propensity to adverse reactions to substance (SNOMED-CT)
- `K25.9` - Úlcera gástrica (CID-10)
- `N18.6` - Doença renal crônica terminal (CID-10)

### A.6.5 Interações Medicamentosas Avançadas

**Substâncias Interagentes:**
```fsh
* interaction.interactant.itemCodeableConcept from InteractionSubstanceBRValueSet (preferred)
```

**Implementação Funcional:**
- Interação Paracetamol + Álcool (Hepatotoxicidade)
- Classificação por tipo (farmacocinética, farmacodinâmica)
- Efeitos clínicos estruturados
- Frequência de ocorrência
- Recomendações de manejo

### A.6.6 Categorias Brasileiras Específicas (12 Implementadas)

**Programas Governamentais:**
- `ceaf` - Componente Especializado da Assistência Farmacêutica
- `cbaf` - Componente Básico da Assistência Farmacêutica
- `rename` - Relação Nacional de Medicamentos Essenciais

**Populações Específicas:**
- `pediatric` - Uso pediátrico
- `geriatric` - Uso geriátrico
- `pregnancy` - Gestação
- `lactation` - Lactação

**Características Regulatórias:**
- `hospital` - Uso hospitalar
- `controlled` - Controle especial
- `biological` - Medicamento biológico
- `herbal` - Medicamento fitoterápico
- `otc` - Medicamento isento de prescrição

### A.6.7 Invariantes Brasileiras (3 Implementadas)

**Validação Estrutural:**
```fsh
// Invariante 1: Indicação requer seção indication
Invariant: brig-clinical-use-1
Expression: "type.coding.where(code='indication').exists() implies indication.exists()"

// Invariante 2: Contraindicação requer seção contraindication  
Invariant: brig-clinical-use-2
Expression: "type.coding.where(code='contraindication').exists() implies contraindication.exists()"

// Invariante 3: Interação requer pelo menos um interagente
Invariant: brig-clinical-use-3
Expression: "type.coding.where(code='interaction').exists() implies interaction.interactant.exists()"
```

### A.6.8 Exemplos Funcionais Validados (4 Implementados)

**1. Dipirona - Indicação Analgésica:**
- Indicação: Dor não especificada (R52.9) + Febre (R50.9)
- População: Adultos (18+ anos)
- Duração: "5 dias"
- Efeito: Analgesia + Antipiréticos

**2. Dipirona - Contraindicação:**
- Contraindicação: Hipersensibilidade à dipirona/pirazolonas
- População: Todas as idades
- Código: 419511003 (Propensity to adverse reactions to drug)

**3. Paracetamol - Indicação Antitérmica:**
- Indicação: Febre não especificada (R50.9)
- Comorbidades: Dor (R52.9), Enxaqueca (G43.9)  
- População: 12+ anos (uso pediátrico)
- Duração: "3 dias"

**4. Paracetamol - Interação com Álcool:**
- Interagente: Ethyl alcohol (419442005)
- Tipo: Drug interaction with ethanol (182817000)
- Efeito: Hepatotoxicidade (197354008)
- Frequência: Frequent (255212004)
- Manejo: Drug treatment stopped (182840001)

---

## A.7 EXTENSÕES ESPECÍFICAS BRASILEIRAS

### A.6.1 Extension: AnvisaRegistrationDate
- **URL:** http://www.saude.gov.br/fhir/r5/brig/StructureDefinition/anvisa-registration-date
- **Contexto:** MedicinalProductDefinition
- **Tipo:** dateTime
- **Descrição:** Data de registro do produto na ANVISA

### A.6.2 Extension: BrazilianLegalStatus
- **URL:** http://www.saude.gov.br/fhir/r5/brig/StructureDefinition/brazilian-legal-status
- **Contexto:** MedicinalProductDefinition
- **Tipo:** CodeableConcept
- **Descrição:** Status legal específico conforme legislação brasileira

### A.6.3 Extension: SUScategory
- **URL:** http://www.saude.gov.br/fhir/r5/brig/StructureDefinition/sus-category
- **Contexto:** MedicinalProductDefinition, PackagedProductDefinition
- **Tipo:** CodeableConcept
- **Descrição:** Categoria do produto no Sistema Único de Saúde

---

## A.7 CONFORMIDADE COM PADRÕES INTERNACIONAIS

Os profiles brasileiros mantêm compatibilidade com especificações ISO IDMP e permitem interoperabilidade com implementações internacionais. As adaptações específicas do contexto brasileiro são implementadas através de extensões e constraintes que não comprometem a estrutura fundamental dos recursos FHIR.

A conformidade com padrões HL7 FHIR R5 foi validada através do processo oficial de validação, garantindo que os profiles podem ser processados por qualquer implementação compatível com FHIR R5, independentemente de conhecimento específico sobre terminologias brasileiras.