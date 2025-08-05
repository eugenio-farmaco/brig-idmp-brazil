# GLOSSÁRIO TÉCNICO FHIR-IDMP BRASILEIRO
**Terminologia Padronizada para Implementação BRIG**

*Versão: 1.0 | Data: 2025-08-04 | Idioma: Português Brasileiro (pt-BR)*

---

## OBJETIVO

Este glossário estabelece a terminologia técnica oficial em português brasileiro para o projeto BRIG (Brazilian Implementation Guide for IDMP), garantindo consistência e padronização em toda documentação técnica, especificações e implementações.

---

## TERMINOLOGIA FHIR BÁSICA

### Estruturas de Dados

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Profile | **Perfil** | Especificação que define como um recurso FHIR deve ser usado em um contexto específico |
| Extension | **Extensão** | Mecanismo para adicionar elementos não presentes no recurso FHIR base |
| ValueSet | **Conjunto de Valores** | Coleção específica de códigos utilizados em um contexto particular |
| CodeSystem | **Sistema de Códigos** | Conjunto de códigos com significados específicos definidos |
| Invariant | **Regra de Negócio** ou **Invariante** | Restrição que deve sempre ser verdadeira para o recurso |
| Constraint | **Restrição** | Limitação aplicada a um elemento ou recurso |
| Binding | **Vinculação** ou **Binding** | Associação entre um elemento e um conjunto de valores |
| Element | **Elemento** | Componente individual de um recurso FHIR |
| Slice | **Fatia** ou **Slice** | Subdivisão de um elemento repetível baseada em critérios específicos |

### Identificação e Referências

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Identifier | **Identificador** | Valor único que identifica uma instância específica |
| Reference | **Referência** | Ponteiro para outro recurso FHIR |
| Canonical URL | **URL Canônica** | URL que identifica unicamente um recurso de definição |
| Business Identifier | **Identificador de Negócio** | Identificador usado no mundo real para identificar algo |

---

## TERMINOLOGIA IDMP ESPECÍFICA

### Produtos Farmacêuticos

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Medicinal Product | **Produto Medicinal** | Produto farmacêutico destinado ao tratamento ou prevenção de doenças |
| Packaged Product | **Produto Embalado** | Produto medicinal em sua embalagem final para comercialização |
| Administrable Product | **Produto Administrável** | Forma final do produto pronta para administração ao paciente |
| Manufactured Item | **Item Fabricado** | Forma física do produto tal como fabricado |
| Pharmaceutical Product | **Produto Farmacêutico** | Forma farmacêutica com substâncias ativas específicas |

### Identificadores ISO 11615

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| MPID | **MPID** (Identificador de Produto Medicinal) | Identificador único global para produto medicinal |
| PCID | **PCID** (Identificador de Produto Embalado) | Identificador único global para produto embalado |
| PHPID | **PHPID** (Identificador de Produto Farmacêutico) | Identificador único global para produto farmacêutico |

### Substâncias e Ingredientes

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Substance Definition | **Definição de Substância** | Especificação completa de uma substância química |
| Ingredient | **Ingrediente** | Componente de um produto medicinal |
| Active Substance | **Substância Ativa** | Componente farmacologicamente ativo |
| Excipient | **Excipiente** | Componente farmacologicamente inativo |
| Strength | **Concentração** ou **Dosagem** | Quantidade de substância ativa por unidade |

---

## TERMINOLOGIA REGULATÓRIA BRASILEIRA

### Conceitos ANVISA

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Marketing Authorization | **Autorização de Comercialização** | Permissão oficial para comercializar um medicamento |
| Marketing Authorization Holder | **Detentor do Registro** | Empresa responsável pelo registro do produto |
| Regulatory | **Regulatório** | Relacionado à regulamentação e supervisão oficial |
| Regulatory Status | **Status Regulatório** | Situação do produto perante órgãos reguladores |
| Legal Status | **Status Legal de Dispensação** | Classificação legal para dispensação do produto |

### Classificações Brasileiras

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Over-the-Counter (OTC) | **Venda Livre** | Medicamento dispensado sem prescrição médica |
| Prescription Medicine | **Medicamento de Prescrição** | Medicamento que requer prescrição médica |
| Controlled Substance | **Substância Controlada** | Substância sujeita a controle especial |
| Generic Medicine | **Medicamento Genérico** | Medicamento similar ao de referência |
| Reference Medicine | **Medicamento de Referência** | Medicamento original registrado |

---

## TERMINOLOGIA DE EMBALAGEM

### Estruturas de Embalagem

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Package | **Embalagem** | Sistema completo de acondicionamento |
| Container | **Recipiente** | Recipiente que contém diretamente o produto |
| Primary Package | **Embalagem Primária** | Embalagem em contato direto com o medicamento |
| Secondary Package | **Embalagem Secundária** | Embalagem que contém a embalagem primária |
| Packaging Material | **Material de Embalagem** | Material utilizado na fabricação da embalagem |

### Tipos de Recipientes

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Blister | **Blister** | Embalagem individual selada para comprimidos/cápsulas |
| Bottle | **Frasco** | Recipiente para líquidos ou sólidos |
| Vial | **Frasco-ampola** | Pequeno frasco para injetáveis |
| Ampoule | **Ampola** | Recipiente de vidro selado |
| Tube | **Bisnaga** | Recipiente flexível para cremes/pomadas |

---

## TERMINOLOGIA DE FABRICAÇÃO

### Processos Produtivos

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Manufacturing | **Fabricação** | Processo de produção do medicamento |
| Manufacturer | **Fabricante** | Empresa responsável pela fabricação |
| Batch | **Lote** | Quantidade produzida em condições uniformes |
| Lot Number | **Número do Lote** | Identificação específica do lote |
| Good Manufacturing Practice (GMP) | **Boas Práticas de Fabricação (BPF)** | Padrões de qualidade para fabricação |

### Formas Farmacêuticas

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Pharmaceutical Form | **Forma Farmacêutica** | Forma física final do medicamento |
| Dosage Form | **Forma de Dosagem** | Forma farmacêutica com dosagem específica |
| Unit of Presentation | **Unidade de Apresentação** | Unidade individual do medicamento |
| Route of Administration | **Via de Administração** | Método de introdução do medicamento no organismo |

---

## TERMINOLOGIA CLÍNICA

### Aspectos Terapêuticos

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Therapeutic Indication | **Indicação Terapêutica** | Condição médica para a qual o medicamento é indicado |
| Contraindication | **Contraindicação** | Situação em que o medicamento não deve ser usado |
| Adverse Reaction | **Reação Adversa** | Efeito indesejado relacionado ao uso do medicamento |
| Side Effect | **Efeito Colateral** | Efeito secundário do medicamento |
| Dosage | **Posologia** | Regime de doses recomendado |

### Administração

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Administration | **Administração** | Ato de dar o medicamento ao paciente |
| Dose | **Dose** | Quantidade específica a ser administrada |
| Frequency | **Frequência** | Intervalo entre administrações |
| Duration | **Duração** | Período total de tratamento |

---

## TERMINOLOGIA DE QUALIDADE

### Controle de Qualidade

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Quality Control | **Controle de Qualidade** | Verificação da conformidade com especificações |
| Quality Assurance | **Garantia de Qualidade** | Sistema para assegurar qualidade |
| Specification | **Especificação** | Critérios de qualidade definidos |
| Validation | **Validação** | Confirmação de que critérios são atendidos |
| Verification | **Verificação** | Comprovação de conformidade |

### Armazenamento

| **Termo Inglês** | **Termo Português BR** | **Definição** |
|------------------|------------------------|---------------|
| Storage Conditions | **Condições de Armazenamento** | Requisitos para conservação adequada |
| Shelf Life | **Prazo de Validade** | Período de validade do produto |
| Expiry Date | **Data de Validade** | Data limite para uso seguro |
| Stability | **Estabilidade** | Capacidade de manter qualidade ao longo do tempo |

---

## DIRETRIZES DE USO

### Regras de Aplicação

1. **Obrigatório**: Usar terminologia portuguesa em toda documentação BRIG
2. **Consistência**: Manter sempre os mesmos termos para os mesmos conceitos
3. **Contexto**: Adaptar termos ao contexto regulatório brasileiro quando necessário
4. **Clareza**: Preferir termos técnicos precisos a traduções literais
5. **Atualização**: Manter glossário atualizado com novos termos conforme necessário

### Casos Especiais

#### Termos que Permanecem em Inglês
- **FHIR** (Fast Healthcare Interoperability Resources)
- **JSON** (JavaScript Object Notation)
- **URL** (Uniform Resource Locator)
- **HTTP** (HyperText Transfer Protocol)
- **API** (Application Programming Interface)

#### Termos com Dupla Grafia Aceita
- **Binding** ou **Vinculação**
- **Slice** ou **Fatia**
- **Invariant** ou **Regra de Negócio**
- **Profile** ou **Perfil**

---

## EXEMPLOS DE USO

### ❌ Incorreto (Inglês)
```
"This profile defines constraints for MedicinalProductDefinition resources used in Brazilian regulatory context, including marketing authorization holder information and legal status binding."
```

### ✅ Correto (Português BR)
```
"Este perfil define restrições para recursos MedicinalProductDefinition utilizados no contexto regulatório brasileiro, incluindo informações do detentor do registro e vinculação de status legal de dispensação."
```

---

## CONTROLE DE VERSÃO

| **Versão** | **Data** | **Alterações** |
|------------|----------|----------------|
| 1.0 | 2025-08-04 | Versão inicial do glossário |

---

## REFERÊNCIAS

- **ISO 11615:2017** - Health informatics — Identification of medicinal products
- **FHIR R5 Specification** - HL7 FHIR Release 5.0.0
- **ANVISA Resolução RDC nº 73/2016** - Boas Práticas de Fabricação
- **Portaria SVS/MS nº 344/1998** - Regulamento Técnico sobre substâncias controladas

---

*Este documento é parte integrante do projeto BRIG (Brazilian Implementation Guide for IDMP) e deve ser utilizado como referência obrigatória para toda documentação técnica em português brasileiro.*

**Contato**: [eugenio@farmaco.io](mailto:eugenio@farmaco.io) | **Website**: https://farmaco.maxapex.net/brig/fhir

---

**Copyright © 2025 BRIG Brasil | Licença MIT | Documentação em Português Brasileiro**