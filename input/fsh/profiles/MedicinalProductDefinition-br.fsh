Profile: MedicinalProductDefinitionBR
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-br
Title: "Definição de Produto Medicinal - Brasil"
Description: "Profile brasileiro para MedicinalProductDefinition baseado no IDMP, adaptado para o contexto regulatório da ANVISA"

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
* ^purpose = "Definir a estrutura padronizada para produtos medicinais no contexto brasileiro, incluindo especificidades da ANVISA"
* ^copyright = "Copyright © 2025 Farmaco.io. Este trabalho está licenciado sob a MIT License."

// Identificadores obrigatórios para Brasil
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identificadores do produto medicinal"

// Slice para Registro ANVISA - obrigatório
* identifier contains anvisaRegistration 1..1 MS
* identifier[anvisaRegistration].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/anvisa-product-registration" (exactly)
* identifier[anvisaRegistration].value 1..1 MS
* identifier[anvisaRegistration] ^short = "Número de registro na ANVISA"
* identifier[anvisaRegistration] ^definition = "Número único de registro do produto medicinal junto à ANVISA"

// Slice para EAN/GTIN - recomendado
* identifier contains ean 0..1 MS
* identifier[ean].system = "http://hl7.org/fhir/sid/gs1" (exactly)
* identifier[ean].value 1..1 MS
* identifier[ean] ^short = "Código EAN/GTIN do produto"
* identifier[ean] ^definition = "Código de barras EAN/GTIN para identificação comercial"

// Tipo de produto - obrigatório
* type 1..1 MS
* type from http://farmaco.maxapex.net/brig/fhir/ValueSet/medicinal-product-type-br (required)
* type ^short = "Tipo do produto medicinal"
* type ^definition = "Classificação do tipo de produto medicinal conforme definições brasileiras"

// Domínio terapêutico - opcional (0..1 no base resource)
* domain 0..1 MS
* domain ^short = "Domínio terapêutico"
* domain ^definition = "Área terapêutica de aplicação do produto medicinal"

// Características gerais - obrigatórias
* combinedPharmaceuticalDoseForm 1..1 MS
* combinedPharmaceuticalDoseForm ^short = "Forma farmacêutica"
* combinedPharmaceuticalDoseForm ^definition = "Forma farmacêutica do produto medicinal"

// Indicações terapêuticas - opcional (0..1 no base resource)
* indication 0..1 MS
* indication ^short = "Indicações terapêuticas"
* indication ^definition = "Indicações terapêuticas aprovadas para o produto medicinal"

// Via de administração - obrigatória
* route 1..* MS
* route ^short = "Via(s) de administração"
* route ^definition = "Via(s) de administração aprovada(s) para o produto medicinal"

// Nomes do produto - obrigatório
* name 1..* MS
* name.productName 1..1 MS
* name.type 1..1 MS
* name.type from http://farmaco.maxapex.net/brig/fhir/ValueSet/product-name-type-br (required)
* name ^short = "Nome(s) do produto medicinal"
* name ^definition = "Nome(s) comercial(is) e/ou científico(s) do produto medicinal"

// Slicing para diferentes tipos de nomes
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type"
* name ^slicing.rules = #open
* name ^slicing.description = "Diferentes tipos de nomes do produto"

// Nome comercial - obrigatório
* name contains commercialName 1..1 MS
* name[commercialName].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/product-name-type-br#commercial (exactly)
* name[commercialName].productName 1..1 MS
* name[commercialName] ^short = "Nome comercial"
* name[commercialName] ^definition = "Nome comercial registrado do produto medicinal"

// Nome científico - obrigatório quando aplicável
* name contains scientificName 0..1 MS
* name[scientificName].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/product-name-type-br#scientific (exactly)
* name[scientificName].productName 1..1 MS
* name[scientificName] ^short = "Nome científico"
* name[scientificName] ^definition = "Nome científico ou denominação comum brasileira (DCB)"

// Informações de classificação
* classification 0..* MS
* classification from http://farmaco.maxapex.net/brig/fhir/ValueSet/product-classification-br (preferred)
* classification ^short = "Classificação do produto"
* classification ^definition = "Classificações aplicáveis ao produto (ATC, terapêutica, etc.)"

// Características especiais
* characteristic 0..* MS
* characteristic ^short = "Características especiais"
* characteristic ^definition = "Características especiais do produto (controlado, genérico, similar, etc.)"

// Status legal - obrigatório
* legalStatusOfSupply 1..1 MS
* legalStatusOfSupply from http://farmaco.maxapex.net/brig/fhir/ValueSet/legal-status-supply-br (required)
* legalStatusOfSupply ^short = "Status legal de fornecimento"
* legalStatusOfSupply ^definition = "Classificação legal para dispensação (prescrição médica, venda livre, etc.)"

// Informações de autorização - obrigatório
* marketingStatus 1..* MS
* marketingStatus.country 1..1 MS
* marketingStatus.country = urn:iso:std:iso:3166#BR (exactly)
* marketingStatus.status 1..1 MS
* marketingStatus.status from http://farmaco.maxapex.net/brig/fhir/ValueSet/marketing-status-br (required)
* marketingStatus.dateRange 1..1 MS
* marketingStatus.dateRange.start 1..1 MS
* marketingStatus ^short = "Status de comercialização"
* marketingStatus ^definition = "Status atual de comercialização no Brasil"

// Anexos e documentos
* attachedDocument 0..* MS
* attachedDocument ^short = "Documentos anexos"
* attachedDocument ^definition = "Bulas, rotulagem e outros documentos regulatórios anexos"

// Organizações relacionadas
* contact 0..* MS
* contact.type 1..1 MS
* contact.type from http://farmaco.maxapex.net/brig/fhir/ValueSet/organization-role-br (required)
* contact.contact 1..1 MS
* contact ^short = "Contatos organizacionais"
* contact ^definition = "Organizações relacionadas (titular, fabricante, importador, etc.)"

// Extensões brasileiras específicas (a serem definidas futuramente)
// * extension contains
//     http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-category 0..1 MS and
//     http://farmaco.maxapex.net/brig/fhir/StructureDefinition/controlled-substance 0..1 MS and
//     http://farmaco.maxapex.net/brig/fhir/StructureDefinition/generic-reference 0..1 MS

// Invariantes específicas para Brasil
* obeys mpd-br-001 and mpd-br-002 and mpd-br-003

Invariant: mpd-br-001
Description: "Produtos controlados devem ter a extensão controlled-substance preenchida"
Expression: "characteristic.where(coding.system = 'http://farmaco.maxapex.net/brig/fhir/CodeSystem/product-characteristics-br' and coding.code = 'controlled').exists() implies extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/controlled-substance').exists()"
Severity: #error

Invariant: mpd-br-002
Description: "Produtos genéricos devem ter a extensão generic-reference preenchida"
Expression: "characteristic.where(coding.system = 'http://farmaco.maxapex.net/brig/fhir/CodeSystem/product-characteristics-br' and coding.code = 'generic').exists() implies extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/generic-reference').exists()"
Severity: #error

Invariant: mpd-br-003
Description: "Registro ANVISA deve seguir padrão brasileiro"
Expression: "identifier.where(system = 'http://farmaco.maxapex.net/brig/fhir/CodeSystem/anvisa-product-registration').value.matches('^[0-9]{1}\\.[0-9]{4}\\.[0-9]{4}\\.[0-9]{3}-[0-9]{1}$')"
Severity: #warning