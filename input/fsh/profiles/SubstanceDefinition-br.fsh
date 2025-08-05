Profile: SubstanceDefinitionBR
Parent: SubstanceDefinition
Id: SubstanceDefinition-br
Title: "Definição de Substância - Brasil"
Description: "Profile brasileiro para SubstanceDefinition baseado no IDMP, adaptado para o contexto regulatório da ANVISA"

* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^contact.name = "Eugênio Neves"
* ^contact.telecom[0].system = #email
* ^contact.telecom[0].value = "eugenio@farmaco.io"
* ^contact.telecom[1].system = #url
* ^contact.telecom[1].value = "https://farmaco.maxapex.net/brig/fhir"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Definir a estrutura padronizada para substâncias no contexto brasileiro, incluindo especificidades da ANVISA para identificação, classificação e controle regulatório"
* ^copyright = "Copyright © 2025 Farmaco.io. Este trabalho está licenciado sob a MIT License."

// Identificadores obrigatórios para Brasil - pelo menos um deve estar presente
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identificadores da substância"

// Slice para DCB - Denominação Comum Brasileira (prioritário para substâncias ativas)
* identifier contains dcb 0..1 MS
* identifier[dcb].system = "https://anvisa.gov.br/dcb" (exactly)
* identifier[dcb].value 1..1 MS
* identifier[dcb] ^short = "Denominação Comum Brasileira (DCB)"
* identifier[dcb] ^definition = "Código DCB da ANVISA para substâncias ativas conforme padrão oficial"

// Slice para CAS Number - padrão internacional
* identifier contains cas 0..1 MS
* identifier[cas].system = "urn:oid:2.16.840.1.113883.6.61" (exactly)
* identifier[cas].value 1..1 MS
* identifier[cas] ^short = "Número CAS"
* identifier[cas] ^definition = "Chemical Abstracts Service Registry Number"

// Slice para UNII - FDA Unique Ingredient Identifier
* identifier contains unii 0..1 MS
* identifier[unii].system = "http://fdasis.nlm.nih.gov" (exactly)
* identifier[unii].value 1..1 MS
* identifier[unii] ^short = "UNII (FDA)"
* identifier[unii] ^definition = "FDA Unique Ingredient Identifier"

// Slice para SUB-ID EMA
* identifier contains subid 0..1 MS
* identifier[subid].system = "http://ema.europa.eu/identifier" (exactly)
* identifier[subid].value 1..1 MS
* identifier[subid] ^short = "SUB-ID (EMA)"
* identifier[subid] ^definition = "European Medicines Agency Substance ID"

// Slice para Código ANVISA específico
* identifier contains anvisaCode 0..1 MS
* identifier[anvisaCode].system = "https://anvisa.gov.br/substancias/codigo" (exactly)
* identifier[anvisaCode].value 1..1 MS
* identifier[anvisaCode] ^short = "Código ANVISA da Substância"
* identifier[anvisaCode] ^definition = "Código específico da ANVISA para a substância conforme sistema oficial"

// Status - obrigatório
* status 1..1 MS
* status from http://farmaco.maxapex.net/brig/fhir/ValueSet/substance-status-br (required)
* status ^short = "Status da substância"
* status ^definition = "Status regulatório da substância no contexto brasileiro"

// Classificação - obrigatória
* classification 1..* MS
* classification from http://farmaco.maxapex.net/brig/fhir/ValueSet/substance-classification-br (preferred)
* classification ^short = "Classificação da substância"
* classification ^definition = "Classificação da substância (ativa, excipiente, controlada, etc.)"

// Domínio - para categorizar uso (0..1 no base resource)
* domain 0..1 MS
* domain ^short = "Domínio de uso"
* domain ^definition = "Domínio de aplicação da substância (humano, veterinário, etc.)"

// Grau/qualidade da substância
* grade 0..* MS
* grade from http://farmaco.maxapex.net/brig/fhir/ValueSet/substance-grade-br (preferred)
* grade ^short = "Grau da substância"
* grade ^definition = "Grau ou qualidade da substância (farmacêutico, técnico, etc.)"

// Informações do fabricante/fornecedor
* manufacturer 0..* MS
* manufacturer ^short = "Fabricante/fornecedor"
* manufacturer ^definition = "Organizações responsáveis pela fabricação ou fornecimento da substância"

// Informações do fornecedor
* supplier 0..* MS
* supplier ^short = "Fornecedor"
* supplier ^definition = "Organizações que fornecem a substância"

// Nomes da substância - obrigatório
* name 1..* MS
* name.name 1..1 MS
* name.type 1..1 MS
* name.type from http://farmaco.maxapex.net/brig/fhir/ValueSet/substance-name-type-br (required)
* name ^short = "Nome(s) da substância"
* name ^definition = "Nomes pelos quais a substância é conhecida"

// Slicing para diferentes tipos de nomes
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type"
* name ^slicing.rules = #open
* name ^slicing.description = "Diferentes tipos de nomes da substância"

// Nome oficial/sistemático - obrigatório
* name contains officialName 1..1 MS
* name[officialName].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-name-type-br#official (exactly)
* name[officialName].name 1..1 MS
* name[officialName] ^short = "Nome oficial"
* name[officialName] ^definition = "Nome oficial ou sistemático da substância"

// Nome comum/comercial - opcional
* name contains commonName 0..* MS
* name[commonName].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-name-type-br#common (exactly)
* name[commonName].name 1..1 MS
* name[commonName] ^short = "Nome comum"
* name[commonName] ^definition = "Nome(s) comum(ns) ou comercial(is) da substância"

// Estrutura molecular - para substâncias químicas
* structure 0..1 MS
* structure ^short = "Estrutura molecular"
* structure ^definition = "Informações sobre a estrutura molecular da substância"

// Códigos relacionados
* code 0..* MS
* code ^short = "Códigos da substância"
* code ^definition = "Códigos padronizados para a substância (ATC, etc.)"

// Descrição textual
* description 0..1 MS
* description ^short = "Descrição"
* description ^definition = "Descrição textual da substância"

// Propriedades da substância
* property 0..* MS
* property ^short = "Propriedades"
* property ^definition = "Propriedades físico-químicas e outras características da substância"

// Informações regulatórias específicas
* sourceMaterial 0..1 MS
* sourceMaterial ^short = "Material de origem"
* sourceMaterial ^definition = "Informações sobre o material de origem para substâncias derivadas"

// Extensões específicas brasileiras (a serem habilitadas após correção)
// * extension contains
//     http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-regulatory-status 0..1 MS and
//     http://farmaco.maxapex.net/brig/fhir/StructureDefinition/controlled-substance-category 0..1 MS

// Invariantes específicas para Brasil
* obeys sub-br-001 and sub-br-002 and sub-br-003

Invariant: sub-br-001
Description: "Substâncias ativas devem ter DCB ou código internacional (CAS/UNII)"
Expression: "classification.where(coding.system = 'http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-classification-br' and coding.code = 'active').exists() implies (identifier.where(system = 'https://anvisa.gov.br/dcb').exists() or identifier.where(system = 'urn:oid:2.16.840.1.113883.6.61').exists() or identifier.where(system = 'http://fdasis.nlm.nih.gov').exists())"
Severity: #warning

Invariant: sub-br-002
Description: "Substâncias controladas devem ter extensão de categoria de controle"
Expression: "classification.where(coding.system = 'http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-classification-br' and coding.code = 'controlled').exists() implies extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/controlled-substance-category').exists()"
Severity: #error

Invariant: sub-br-003
Description: "Pelo menos um identificador deve estar presente"
Expression: "identifier.exists()"
Severity: #error