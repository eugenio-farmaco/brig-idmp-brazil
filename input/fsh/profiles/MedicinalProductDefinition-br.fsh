Profile: MedicinalProductDefinitionBR
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-br
Title: "Definição de Produto Medicinal - Brasil"
Description: "Perfil brasileiro para MedicinalProductDefinition baseado no IDMP, adaptado para o contexto regulatório da ANVISA. Documenta produtos medicinais conforme padrões ISO 11615 e regulamentações brasileiras."

* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^contact.name = "Eugênio Neves - BRIG Brasil"
* ^contact.telecom[0].system = #email
* ^contact.telecom[0].value = "eugenio@farmaco.io"
* ^contact.telecom[1].system = #url
* ^contact.telecom[1].value = "https://farmaco.maxapex.net/brig/fhir"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^language = #pt-BR
* ^purpose = "Definir a estrutura padronizada para produtos medicinais no contexto brasileiro, incluindo especificidades da ANVISA e conformidade com ISO 11615"
* ^copyright = "Copyright © 2025 Farmaco.io. Este trabalho está licenciado sob a MIT License. Documentação em português brasileiro."

// Identificadores obrigatórios para Brasil
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identificadores do produto medicinal"

// Slice para MPID - obrigatório (ISO 11615)
* identifier contains mpid 1..1 MS
* identifier[mpid].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/mpid-br" (exactly)
* identifier[mpid].value 1..1 MS
* identifier[mpid] ^short = "MPID - Identificador de Produto Medicinal (ISO 11615)"
* identifier[mpid] ^definition = "Identificador único do produto medicinal conforme ISO 11615 - formato BR-{Detentor}-{Código}"

// Slice para Registro ANVISA - obrigatório (seguindo padrão oficial brasileiro)
* identifier contains anvisaRegistration 1..1 MS
* identifier[anvisaRegistration].system = "http://anvisa.gov.br/medicamentos/registro" (exactly)
* identifier[anvisaRegistration].value 1..1 MS
* identifier[anvisaRegistration] ^short = "Número de registro na ANVISA"
* identifier[anvisaRegistration] ^definition = "Número único de registro do produto medicinal junto à ANVISA conforme sistema oficial"

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

// Nomes do produto - obrigatório com suporte a partes estruturadas
* name 1..* MS
* name.productName 1..1 MS
* name.type 1..1 MS
* name.type from http://farmaco.maxapex.net/brig/fhir/ValueSet/product-name-type-br (required)
* name ^short = "Nome(s) do produto medicinal"
* name ^definition = "Nome(s) comercial(is) e/ou científico(s) do produto medicinal com partes estruturadas"

// Extensions para partes estruturadas do nome
* name.extension contains
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/product-name-parts named productNameParts 0..1 MS and
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/name-validation-rules named nameValidationRules 0..1 MS

* name.extension[productNameParts] ^short = "Partes estruturadas do nome"
* name.extension[productNameParts] ^definition = "Decomposição estruturada do nome em partes específicas (fantasia, científico, empresa, etc.)"

* name.extension[nameValidationRules] ^short = "Regras de validação do nome"
* name.extension[nameValidationRules] ^definition = "Regras específicas de validação aplicáveis ao nome do produto"

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
* name[scientificName] ^definition = "Nome científico ou denominação comum brasileira (DCB) conforme padronização ANVISA"

// Binding com DCB para nomes científicos
* name[scientificName].extension[productNameParts].extension[scientificNamePart] ^binding.strength = #preferred
* name[scientificName].extension[productNameParts].extension[scientificNamePart] ^binding.valueSet = "http://farmaco.maxapex.net/brig/fhir/ValueSet/dcb-brasileiras"

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

// Organizações relacionadas (referenciando Organization-anvisa)
* contact 0..* MS
* contact.type 1..1 MS
* contact.type from http://farmaco.maxapex.net/brig/fhir/ValueSet/organization-contact-purpose-br (required)
* contact.contact 1..1 MS
* contact.contact only Reference(OrganizationANVISASimple)
* contact ^short = "Contatos organizacionais"
* contact ^definition = "Organizações relacionadas conforme padrão ANVISA (titular, fabricante, importador, etc.)"

// Extensões brasileiras específicas - Elementos definidores de MPID e lifecycle
* extension contains
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/therapeutic-indications-defining named therapeuticIndicationsDefining 0..* MS and
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/legal-status-defining named legalStatusDefining 0..1 MS and
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/associated-devices named associatedDevices 0..* MS and
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/identifier-lifecycle-rules named identifierLifecycleRules 0..1 MS and
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/documentation-language named documentationLanguage 0..1 MS

* extension[therapeuticIndicationsDefining] ^short = "Indicações terapêuticas definidoras do MPID"
* extension[therapeuticIndicationsDefining] ^definition = "Indicações terapêuticas que são elementos definidores do MPID - mudanças requerem novo MPID"

* extension[legalStatusDefining] ^short = "Status legal definidor do MPID"
* extension[legalStatusDefining] ^definition = "Status legal que é elemento definidor do MPID - mudanças requerem novo MPID"

* extension[associatedDevices] ^short = "Dispositivos associados definidores do MPID"
* extension[associatedDevices] ^definition = "Dispositivos associados que são elementos definidores do MPID"

* extension[identifierLifecycleRules] ^short = "Regras de ciclo de vida do MPID"
* extension[identifierLifecycleRules] ^definition = "Regras e rastreamento para mudanças no MPID durante o ciclo de vida do produto"

* extension[documentationLanguage] ^short = "Idioma da documentação"
* extension[documentationLanguage] ^definition = "Define português brasileiro como idioma padrão para toda documentação BRIG"

// Invariantes específicas para Brasil
* obeys mpd-br-002 and mpd-br-003 and mpd-br-004 and mpd-br-005 and mpd-br-006 and mpd-br-007 and mpd-br-008

Invariant: mpd-br-002
Description: "Produtos genéricos devem ter a extensão generic-reference preenchida"
Expression: "extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-category' and valueCodeableConcept.coding.code = 'generic').exists() implies extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/generic-reference').exists()"
Severity: #warning

Invariant: mpd-br-003
Description: "Registro ANVISA deve seguir padrão brasileiro"
Expression: "identifier.where(system = 'http://anvisa.gov.br/medicamentos/registro').value.matches('^[0-9]{1}\\.[0-9]{4}\\.[0-9]{4}\\.[0-9]{3}-[0-9]{1}$')"
Severity: #warning

Invariant: mpd-br-004
Description: "Mudança em indicações terapêuticas definidoras requer novo MPID"
Expression: "extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/therapeutic-indications-defining').exists() implies extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/therapeutic-indications-defining').all(valueCodeableConcept.exists())"
Severity: #warning

Invariant: mpd-br-005
Description: "Mudança em status legal definidor requer novo MPID"
Expression: "extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/legal-status-defining').exists() implies extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/legal-status-defining').valueCodeableConcept.exists()"
Severity: #warning

Invariant: mpd-br-006
Description: "Motivo de mudança deve ser consistente com tipo de elemento alterado"
Expression: "extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/identifier-lifecycle-rules').exists() implies extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/identifier-lifecycle-rules').extension.where(url = 'changeReason').valueCodeableConcept.exists()"
Severity: #warning

Invariant: mpd-br-007
Description: "MPID anterior deve ser fornecido quando há mudança que requer novo MPID"
Expression: "extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/identifier-lifecycle-rules').extension.where(url = 'changeReason').valueCodeableConcept.coding.where(code.memberOf('http://farmaco.maxapex.net/brig/fhir/ValueSet/mpid-requiring-changes')).exists() implies extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/identifier-lifecycle-rules').extension.where(url = 'previousMPID').valueString.exists()"
Severity: #error

Invariant: mpd-br-008
Description: "Produto deve ter pelo menos nome fantasia OU nome científico"
Expression: "name.where(type.coding.code = 'commercial').exists() or name.where(type.coding.code = 'scientific').exists()"
Severity: #error