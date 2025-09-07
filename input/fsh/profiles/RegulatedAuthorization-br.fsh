Profile: RegulatedAuthorizationBR
Parent: RegulatedAuthorization
Id: RegulatedAuthorization-br
Title: "Autorização Regulatória - Brasil"
Description: "Profile brasileiro para RegulatedAuthorization representando autorizações ANVISA para medicamentos e produtos de saúde"

* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"
* ^publisher = "Eugênio Neves"
* ^contact.name = "Eugênio Neves"
* ^contact.telecom[0].system = #email
* ^contact.telecom[0].value = "eugenio@farmaco.io"
* ^contact.telecom[1].system = #url
* ^contact.telecom[1].value = "https://farmaco.maxapex.net/brig/fhir"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Definir a estrutura padronizada para autorizações regulatórias ANVISA, incluindo registros, renovações, variações e cancelamentos de medicamentos no contexto brasileiro"
* ^copyright = "Copyright © 2025 Farmaco.io. Este trabalho está licenciado sob a MIT License."

// Identificadores obrigatórios para Brasil - registro ANVISA
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identificadores da autorização regulatória"

// Slice para Registro ANVISA - identificador primário
* identifier contains anvisaRegistration 1..1 MS
* identifier[anvisaRegistration].system = "http://anvisa.gov.br/medicamentos/registro" (exactly)
* identifier[anvisaRegistration].value 1..1 MS
* identifier[anvisaRegistration].use = #official
* identifier[anvisaRegistration] ^short = "Número de Registro ANVISA"
* identifier[anvisaRegistration] ^definition = "Número oficial do registro ANVISA no formato 1.XXXX.XXXX.XXX-X"

// Slice para Código AFE (quando aplicável)
* identifier contains anvisaAfe 0..1 MS
* identifier[anvisaAfe].system = "http://anvisa.gov.br/afe" (exactly)
* identifier[anvisaAfe].value 1..1 MS
* identifier[anvisaAfe] ^short = "AFE ANVISA"
* identifier[anvisaAfe] ^definition = "Autorização de Funcionamento de Empresa quando aplicável"

// Slice para Processo ANVISA
* identifier contains anvisaProcess 0..1 MS
* identifier[anvisaProcess].system = "http://anvisa.gov.br/processos" (exactly)
* identifier[anvisaProcess].value 1..1 MS
* identifier[anvisaProcess] ^short = "Número do Processo ANVISA"
* identifier[anvisaProcess] ^definition = "Número do processo administrativo ANVISA relacionado"

// Tipo de autorização - obrigatório
* type 1..1 MS
* type from http://farmaco.maxapex.net/brig/fhir/ValueSet/regulated-authorization-type-br (required)
* type ^short = "Tipo da autorização regulatória"
* type ^definition = "Tipo específico da autorização ANVISA (registro, renovação, variação, etc.)"

// Região - fixado para Brasil
* region 1..1 MS
* region = urn:iso:std:iso:3166#BR (exactly)
* region ^short = "Jurisdição - Brasil"
* region ^definition = "Jurisdição regulatória - fixado para Brasil"

// Status da autorização - obrigatório
* status 1..1 MS
* status from http://farmaco.maxapex.net/brig/fhir/ValueSet/regulated-authorization-status-br (required)
* status ^short = "Status da autorização"
* status ^definition = "Status atual da autorização regulatória ANVISA"

// Data de status
* statusDate 0..1 MS
* statusDate ^short = "Data do status atual"
* statusDate ^definition = "Data em que o status atual foi estabelecido"

// Validade da autorização
* validityPeriod 0..1 MS
* validityPeriod ^short = "Período de validade"
* validityPeriod ^definition = "Período de validade da autorização ANVISA"
* validityPeriod.start 1..1 MS
* validityPeriod.start ^short = "Início da validade"
* validityPeriod.end 0..1 MS
* validityPeriod.end ^short = "Fim da validade (10 anos padrão)"

// Detentor da autorização - obrigatório
* holder 1..1 MS
* holder only Reference(Organization)
* holder ^short = "Detentor da autorização"
* holder ^definition = "Organização detentora da autorização regulatória"

// Autoridade reguladora - fixada para ANVISA
* regulator 1..1 MS
* regulator only Reference(Organization)
* regulator ^short = "ANVISA"
* regulator ^definition = "Agência Nacional de Vigilância Sanitária como autoridade reguladora"

// Produto relacionado - obrigatório
* subject 1..* MS
* subject only Reference(MedicinalProductDefinition or PackagedProductDefinition or SubstanceDefinition)
* subject ^short = "Produto autorizado"
* subject ^definition = "Produto medicinal ou substância objeto da autorização regulatória"

// Base legal (usando basis que existe no recurso)
* basis 0..* MS
* basis from http://farmaco.maxapex.net/brig/fhir/ValueSet/legal-basis-anvisa-br (preferred)
* basis ^short = "Base legal ANVISA"
* basis ^definition = "Base legal regulatória ANVISA (RDC, Lei, Portaria)"

// Casos de uso relacionados (para variações) - indication existe
* indication 0..* MS  
* indication ^short = "Indicações específicas"
* indication ^definition = "Indicações específicas da autorização quando aplicável"

// Extensões específicas brasileiras
* extension contains 
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-registration-category 0..1 MS and
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/variation-classification 0..1 MS and
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/renewal-history 0..1 MS

// Invariantes específicas para Brasil
* obeys reg-br-001 and reg-br-002 and reg-br-003 and reg-br-004

Invariant: reg-br-001
Description: "Registro ANVISA deve seguir formato 1.XXXX.XXXX.XXX-X"
Expression: "identifier.where(system = 'http://anvisa.gov.br/medicamentos/registro').value.matches('^1\\.[0-9]{4}\\.[0-9]{4}\\.[0-9]{3}-[0-9]{1}$')"
Severity: #error

Invariant: reg-br-002
Description: "Autorização ativa deve ter período de validade definido"
Expression: "status.coding.where(system = 'http://farmaco.maxapex.net/brig/fhir/CodeSystem/regulated-authorization-status-br' and code = 'active').exists() implies validityPeriod.exists()"
Severity: #warning

Invariant: reg-br-003
Description: "Variações devem ter classificação de variação definida"
Expression: "type.coding.where(system = 'http://farmaco.maxapex.net/brig/fhir/CodeSystem/regulated-authorization-type-br' and code = 'variation').exists() implies extension.where(url = 'http://farmaco.maxapex.net/brig/fhir/StructureDefinition/variation-classification').exists()"
Severity: #warning

Invariant: reg-br-004
Description: "Região deve ser Brasil"
Expression: "region.coding.code = 'BR'"
Severity: #error