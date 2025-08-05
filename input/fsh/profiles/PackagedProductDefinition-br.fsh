Profile: PackagedProductDefinitionBR
Parent: PackagedProductDefinition
Id: PackagedProductDefinition-br
Title: "Definição de Produto Embalado - Brasil"
Description: "Profile brasileiro para PackagedProductDefinition baseado no IDMP, adaptado para o contexto regulatório da ANVISA"

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
* ^purpose = "Definir a estrutura padronizada para produtos embalados no contexto brasileiro, incluindo especificidades da ANVISA para embalagens, rotulagem e comercialização conforme ISO 11615"
* ^copyright = "Copyright © 2025 Farmaco.io. Este trabalho está licenciado sob a MIT License. Documentação em português brasileiro."

// Identificadores obrigatórios para Brasil
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identificadores do produto embalado"

// Slice para PCID - obrigatório (ISO 11615)
* identifier contains pcid 1..1 MS
* identifier[pcid].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/pcid-br" (exactly)
* identifier[pcid].value 1..1 MS
* identifier[pcid] ^short = "PCID - Identificador de Produto Embalado (ISO 11615)"
* identifier[pcid] ^definition = "Identificador único do produto embalado conforme ISO 11615 - formato {MPID}-P{PackCode}"

// Slice para Código de Barras EAN/GTIN - obrigatório para comercialização
* identifier contains ean 1..1 MS
* identifier[ean].system = "http://hl7.org/fhir/sid/gs1" (exactly)
* identifier[ean].value 1..1 MS
* identifier[ean] ^short = "Código EAN/GTIN da embalagem"
* identifier[ean] ^definition = "Código de barras EAN/GTIN obrigatório para identificação comercial da embalagem"

// Slice para Código ANVISA de Produto Embalado
* identifier contains anvisaPackageCode 0..1 MS
* identifier[anvisaPackageCode].system = "http://anvisa.gov.br/produtos/embalagem" (exactly)
* identifier[anvisaPackageCode].value 1..1 MS
* identifier[anvisaPackageCode] ^short = "Código ANVISA da embalagem"
* identifier[anvisaPackageCode] ^definition = "Código específico da ANVISA para identificação da embalagem"

// Nome/descrição do produto embalado - obrigatório
* name 1..1 MS
* name ^short = "Nome comercial do produto embalado"
* name ^definition = "Denominação comercial do produto conforme registrado e comercializado"

// Tipo de produto embalado - obrigatório
* type 1..1 MS
* type from http://farmaco.maxapex.net/brig/fhir/ValueSet/packaged-product-type-br (required)
* type ^short = "Tipo do produto embalado"
* type ^definition = "Classificação do tipo de produto embalado conforme padrões brasileiros"

// Referência ao produto medicinal base - obrigatório
* packageFor 1..* MS
* packageFor only Reference(MedicinalProductDefinitionBR)
* packageFor ^short = "Produto medicinal de referência"
* packageFor ^definition = "Referência ao produto medicinal que está sendo embalado"

// Status legal de fornecimento - obrigatório
* legalStatusOfSupply 1..1 MS
* legalStatusOfSupply.code from http://farmaco.maxapex.net/brig/fhir/ValueSet/legal-status-supply-br (required)
* legalStatusOfSupply ^short = "Status legal de fornecimento"
* legalStatusOfSupply ^definition = "Status legal para dispensação do produto embalado"

// Status de comercialização - obrigatório
* marketingStatus 1..* MS
* marketingStatus.country 1..1 MS
* marketingStatus.country = urn:iso:std:iso:3166#BR (exactly)
* marketingStatus.status 1..1 MS
* marketingStatus.status from http://farmaco.maxapex.net/brig/fhir/ValueSet/marketing-status-br (required)
* marketingStatus.dateRange 1..1 MS
* marketingStatus.dateRange.start 1..1 MS
* marketingStatus ^short = "Status de comercialização"
* marketingStatus ^definition = "Status atual de comercialização no Brasil"

// Características do produto embalado
* characteristic 0..* MS
* characteristic ^short = "Características da embalagem"
* characteristic ^definition = "Características especiais da embalagem (temperatura, luz, umidade, etc.)"

// Embalagem principal - obrigatório
* packaging 1..1 MS
* packaging ^short = "Estrutura de embalagem"
* packaging ^definition = "Descrição da estrutura de embalagem do produto"

// Tipo de embalagem - obrigatório
* packaging.type 1..1 MS
* packaging.type from http://farmaco.maxapex.net/brig/fhir/ValueSet/packaging-type-br (required)
* packaging.type ^short = "Tipo de embalagem"
* packaging.type ^definition = "Tipo de embalagem conforme padrões brasileiros"

// Quantidade na embalagem - obrigatório
* packaging.quantity 1..1 MS
* packaging.quantity ^short = "Quantidade na embalagem"
* packaging.quantity ^definition = "Quantidade de unidades contidas na embalagem"

// Material da embalagem - recomendado
* packaging.material 0..* MS
* packaging.material from http://farmaco.maxapex.net/brig/fhir/ValueSet/packaging-material-br (preferred)
* packaging.material ^short = "Material da embalagem"
* packaging.material ^definition = "Material(is) utilizado(s) na embalagem"

// Itens contidos - obrigatório
* packaging.containedItem 1..* MS
* packaging.containedItem ^short = "Itens contidos"
* packaging.containedItem ^definition = "Itens farmacêuticos contidos na embalagem"

// Quantidade do item contido - obrigatório
* packaging.containedItem.amount 1..1 MS
* packaging.containedItem.amount ^short = "Quantidade do item"
* packaging.containedItem.amount ^definition = "Quantidade específica do item na embalagem"

// Item de referência - obrigatório (item fabricado)
* packaging.containedItem.item 1..1 MS
* packaging.containedItem.item only CodeableReference(ManufacturedItemDefinition or PackagedProductDefinition)
* packaging.containedItem.item ^short = "Item contido"
* packaging.containedItem.item ^definition = "Referência ao item fabricado ou produto embalado contido"

// TEMPORARY: Limite de recursão para desenvolvimento - máximo 3 níveis
// TODO: Remover após estabilização da estrutura de embalagens
* packaging.containedItem.item ^comment = "DESENVOLVIMENTO: Recursão limitada a 3 níveis para evitar loops infinitos durante implementação. Esta restrição será removida na versão final."

// Fabricantes da embalagem - obrigatório pelo menos um
* manufacturer 1..* MS
* manufacturer only Reference(OrganizationANVISASimple)
* manufacturer ^short = "Fabricantes da embalagem"
* manufacturer ^definition = "Organizações responsáveis pela fabricação da embalagem"

// Anexos (bulas, rotulagem) - recomendado
* attachedDocument 0..* MS
* attachedDocument ^short = "Documentos anexos"
* attachedDocument ^definition = "Bulas, rótulos e outros documentos regulatórios da embalagem"

// Extensões brasileiras específicas - Elementos definidores de PCID 
* packaging.containedItem.extension contains
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/package-item-container-details named packageItemContainerDetails 0..* MS and
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/manufactured-item-criteria named manufacturedItemCriteria 0..1 MS

* packaging.extension contains
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/package-component-details named packageComponentDetails 0..* MS

// Extension para lifecycle de PCID e documentação
* extension contains
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/identifier-lifecycle-rules named identifierLifecycleRules 0..1 MS and
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/documentation-language named documentationLanguage 0..1 MS

* packaging.containedItem.extension[packageItemContainerDetails] ^short = "Detalhes de container definidores do PCID"
* packaging.containedItem.extension[packageItemContainerDetails] ^definition = "Características do container que são elementos definidores do PCID - mudanças requerem novo PCID"

* packaging.containedItem.extension[manufacturedItemCriteria] ^short = "Critérios do item manufaturado definidores do PCID"
* packaging.containedItem.extension[manufacturedItemCriteria] ^definition = "Critérios do item manufaturado que são elementos definidores do PCID"

* packaging.extension[packageComponentDetails] ^short = "Componentes da embalagem definidores do PCID"
* packaging.extension[packageComponentDetails] ^definition = "Componentes específicos da embalagem que são elementos definidores do PCID"

* extension[identifierLifecycleRules] ^short = "Regras de ciclo de vida do PCID"
* extension[identifierLifecycleRules] ^definition = "Regras e rastreamento para mudanças no PCID durante o ciclo de vida da embalagem"

* extension[documentationLanguage] ^short = "Idioma da documentação"
* extension[documentationLanguage] ^definition = "Define português brasileiro como idioma padrão para toda documentação BRIG"

// Invariantes específicas para Brasil
* obeys ppd-br-001 and ppd-br-002 and ppd-br-003 and ppd-br-004 and ppd-br-005 and ppd-br-006 and ppd-br-007

Invariant: ppd-br-001
Description: "EAN/GTIN deve seguir padrão de código de barras válido"
Expression: "identifier.where(system = 'http://hl7.org/fhir/sid/gs1').value.matches('^[0-9]{8,14}$')"
Severity: #warning

Invariant: ppd-br-002
Description: "Produtos embalados devem ter pelo menos um fabricante brasileiro"
Expression: "manufacturer.exists()"
Severity: #error

Invariant: ppd-br-003
Description: "DESENVOLVIMENTO: Limite de recursão de embalagens aninhadas (máximo 3 níveis)"
Expression: "true" // Implementação simplificada - validação manual durante desenvolvimento
Severity: #warning

Invariant: ppd-br-004
Description: "Mudança em tipo/material de container requer novo PCID"
Expression: "packaging.containedItem.extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/package-item-container-details').exists() implies packaging.containedItem.extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/package-item-container-details').all(extension.where(url = 'containerType').valueCodeableConcept.exists())"
Severity: #warning

Invariant: ppd-br-005
Description: "Mudança em quantidade requer novo PCID"
Expression: "packaging.quantity.exists() and packaging.containedItem.amount.exists()"
Severity: #warning

Invariant: ppd-br-006
Description: "Motivo de mudança deve ser consistente com tipo de elemento alterado na embalagem"
Expression: "extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/identifier-lifecycle-rules').exists() implies extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/identifier-lifecycle-rules').extension.where(url = 'changeReason').valueCodeableConcept.exists()"
Severity: #warning

Invariant: ppd-br-007
Description: "PCID anterior deve ser fornecido quando há mudança que requer novo PCID"
Expression: "extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/identifier-lifecycle-rules').extension.where(url = 'changeReason').valueCodeableConcept.coding.where(code.memberOf('http://farmaco.maxapex.net/brig/fhir/ValueSet/pcid-requiring-changes')).exists() implies extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/identifier-lifecycle-rules').extension.where(url = 'previousPCID').valueString.exists()"
Severity: #error