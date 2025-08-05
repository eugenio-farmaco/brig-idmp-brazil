# Análise Completa: Extensions Brasileiras para BRIG

## Visão Geral
Este documento apresenta a análise completa das extensions específicas brasileiras necessárias para os profiles SubstanceDefinition-br e MedicinalProductDefinition-br no contexto regulatório da ANVISA.

## A) Extensions para SubstanceDefinition-br

### 1. anvisa-regulatory-status
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-regulatory-status`
**Tipo:** CodeableConcept
**Cardinalidade:** 0..1
**Descrição:** Status regulatório da substância junto à ANVISA
**Valores:**
- `approved` - Aprovada para uso
- `restricted` - Uso restrito/controlado
- `suspended` - Suspensa temporariamente
- `prohibited` - Proibida
- `under-review` - Em análise

### 2. controlled-substance-category
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/controlled-substance-category`
**Tipo:** CodeableConcept
**Cardinalidade:** 0..1
**Descrição:** Categoria de controle da substância conforme legislação brasileira
**Valores:**
- `A1` - Lista A1 (Entorpecentes)
- `A2` - Lista A2 (Entorpecentes de uso permitido)
- `A3` - Lista A3 (Psicotrópicos)
- `B1` - Lista B1 (Psicotrópicos)
- `B2` - Lista B2 (Psicotrópicos anorexígenos)
- `C1` - Lista C1 (Outras substâncias controladas)
- `C2` - Lista C2 (Retinóides)
- `C3` - Lista C3 (Imunossupressores)
- `C4` - Lista C4 (Anti-retrovirais)
- `C5` - Lista C5 (Anabolizantes)

### 3. import-manufacturing-status
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/import-manufacturing-status`
**Tipo:** CodeableConcept
**Cardinalidade:** 0..1
**Descrição:** Status de importação/fabricação nacional da substância
**Valores:**
- `national-manufacturing` - Fabricação nacional
- `imported` - Importada
- `both` - Ambos (nacional e importada)
- `not-available` - Não disponível no Brasil

### 4. substance-origin-type
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/substance-origin-type`
**Tipo:** CodeableConcept
**Cardinalidade:** 0..1
**Descrição:** Tipo de origem da substância
**Valores:**
- `synthetic` - Sintética
- `semi-synthetic` - Semi-sintética
- `natural` - Natural (vegetal, animal, mineral)
- `biotechnology` - Biotecnologia/recombinante
- `radiopharmaceutical` - Radiofarmacêutica

## B) Extensions para MedicinalProductDefinition-br

### 1. anvisa-category
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-category`
**Tipo:** CodeableConcept
**Cardinalidade:** 0..1
**Descrição:** Categoria específica da ANVISA para classificação do produto
**Valores:**
- `new` - Medicamento Novo
- `generic` - Medicamento Genérico
- `similar` - Medicamento Similar
- `reference` - Medicamento de Referência
- `specific` - Medicamento Específico
- `biological` - Produto Biológico
- `biosimilar` - Produto Biosimilar

### 2. controlled-substance
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/controlled-substance`
**Tipo:** Complex Extension
**Cardinalidade:** 0..1
**Descrição:** Informações sobre controle especial do produto
**Sub-extensions:**
- `category` (CodeableConcept) - Categoria de controle
- `prescription-retention` (boolean) - Requer retenção de receita
- `special-book` (boolean) - Requer livro de registro especial
- `notification-required` (boolean) - Requer notificação especial

### 3. generic-reference
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/generic-reference`
**Tipo:** Reference(MedicinalProductDefinition)
**Cardinalidade:** 0..1
**Descrição:** Referência ao produto de referência para genéricos/similares

### 4. therapeutic-class-br
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/therapeutic-class-br`
**Tipo:** CodeableConcept
**Cardinalidade:** 0..*
**Descrição:** Classificação terapêutica brasileira do produto
**Valores:** Baseado na classificação terapêutica da ANVISA

### 5. sanitary-risk-classification
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/sanitary-risk-classification`
**Tipo:** CodeableConcept
**Cardinalidade:** 0..1
**Descrição:** Classificação de risco sanitário do produto
**Valores:**
- `class-1` - Classe I (Risco mínimo)
- `class-2` - Classe II (Risco baixo)
- `class-3` - Classe III (Risco médio)
- `class-4` - Classe IV (Risco alto)

### 6. market-authorization-holder-br
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/market-authorization-holder-br`
**Tipo:** Complex Extension
**Cardinalidade:** 0..1
**Descrição:** Informações específicas do titular da autorização de comercialização
**Sub-extensions:**
- `holder` (Reference(Organization)) - Organização titular
- `cnpj` (string) - CNPJ da empresa
- `authorization-number` (string) - Número da autorização
- `authorization-date` (date) - Data da autorização

### 7. manufacturing-authorization
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/manufacturing-authorization`
**Tipo:** Complex Extension
**Cardinalidade:** 0..*
**Descrição:** Autorizações de fabricação do produto
**Sub-extensions:**
- `manufacturer` (Reference(Organization)) - Fabricante
- `authorization-number` (string) - Número da AFE
- `manufacturing-type` (CodeableConcept) - Tipo de fabricação

### 8. import-authorization
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/import-authorization`
**Tipo:** Complex Extension
**Cardinalidade:** 0..*
**Descrição:** Autorizações de importação do produto
**Sub-extensions:**
- `importer` (Reference(Organization)) - Importador
- `authorization-number` (string) - Número da AIE
- `country-origin` (CodeableConcept) - País de origem

### 9. pharmacovigilance-contact
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/pharmacovigilance-contact`
**Tipo:** Complex Extension
**Cardinalidade:** 0..1
**Descrição:** Contato responsável pela farmacovigilância
**Sub-extensions:**
- `contact` (Reference(PractitionerRole)) - Responsável técnico
- `notification-system` (uri) - Sistema de notificação

### 10. price-regulation-status
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/price-regulation-status`
**Tipo:** CodeableConcept
**Cardinalidade:** 0..1
**Descrição:** Status de regulação de preço do produto
**Valores:**
- `regulated` - Preço regulado pela CMED
- `not-regulated` - Preço livre
- `cap-price` - Preço teto
- `under-monitoring` - Sob monitoramento

## C) Extensions Compartilhadas

### 1. brazilian-regulatory-context
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/brazilian-regulatory-context`
**Tipo:** Complex Extension
**Cardinalidade:** 0..1
**Descrição:** Contexto regulatório brasileiro geral
**Sub-extensions:**
- `regulation-date` (date) - Data da regulamentação
- `regulation-reference` (string) - Referência legal
- `competent-authority` (CodeableConcept) - Autoridade competente

### 2. compliance-status
**URL:** `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/compliance-status`
**Tipo:** CodeableConcept
**Cardinalidade:** 0..1
**Descrição:** Status de conformidade regulatória
**Valores:**
- `compliant` - Em conformidade
- `non-compliant` - Não conforme
- `pending-review` - Aguardando revisão
- `conditional` - Conformidade condicional

## D) Priorização para Implementação

### Fase 1 (Essenciais):
1. `anvisa-category` (Produtos)
2. `controlled-substance-category` (Substâncias)
3. `generic-reference` (Produtos)
4. `anvisa-regulatory-status` (Substâncias)

### Fase 2 (Importantes):
1. `controlled-substance` (Produtos)
2. `sanitary-risk-classification` (Produtos)
3. `import-manufacturing-status` (Substâncias)
4. `substance-origin-type` (Substâncias)

### Fase 3 (Complementares):
1. `market-authorization-holder-br` (Produtos)
2. `therapeutic-class-br` (Produtos)
3. `manufacturing-authorization` (Produtos)
4. `pharmacovigilance-contact` (Produtos)

## E) Considerações Técnicas

### Padrões de Nomenclatura:
- URLs seguem o padrão: `http://farmaco.maxapex.net/brig/fhir/StructureDefinition/[nome-kebab-case]`
- Nomes descritivos em inglês para compatibilidade internacional
- Sufixo `-br` apenas quando necessário para diferenciação

### CodeSystems Relacionados:
- Criar CodeSystems específicos para cada ValueSet das extensions
- Manter alinhamento com terminologias oficiais da ANVISA
- Incluir mapeamentos para terminologias internacionais quando aplicável

### Validação:
- Implementar invariantes que garantam consistência
- Validações cruzadas entre extensions relacionadas
- Compatibilidade com validadores FHIR padrão