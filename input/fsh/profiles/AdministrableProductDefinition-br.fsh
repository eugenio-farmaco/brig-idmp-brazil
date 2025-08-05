Profile: AdministrableProductDefinitionBR
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-br
Title: "Definição de Produto Administrável - Brasil"
Description: "Profile brasileiro para AdministrableProductDefinition - representa a forma final administrável do medicamento após preparo/reconstituição"

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
* ^purpose = "Definir a estrutura padronizada para produtos medicinais na forma final administrável no contexto brasileiro, incluindo especificidades da ANVISA para reconstituição e preparo"
* ^copyright = "Copyright © 2025 Farmaco.io. Este trabalho está licenciado sob a MIT License."

// Identificadores obrigatórios para Brasil
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identificadores do produto administrável"

// Slice para PHPID - opcional até integração UMC/OMS (ISO 11615)
* identifier contains phpid 0..1 MS
* identifier[phpid].system = "http://umc-products.org" (exactly)
* identifier[phpid].value 1..1 MS
* identifier[phpid] ^short = "PHPID - Identificador de Produto Farmacêutico (ISO 11615) - PLACEHOLDER"
* identifier[phpid] ^definition = "PLACEHOLDER: Identificador único do produto farmacêutico administrável conforme ISO 11615. Será implementado após coordenação com Uppsala Monitoring Centre (UMC/OMS) para governança internacional. Atualmente opcional até estabelecimento do sistema global."
* identifier[phpid] ^comment = "IMPORTANTE: PHPID requer coordenação internacional através do Uppsala Monitoring Centre (UMC) da OMS. Implementação nacional temporária até integração com sistema global de identificação farmacêutica."

* identifier ^short = "Identificadores do produto administrável"
* identifier ^definition = "Identificadores únicos da forma administrável final"

// Status - obrigatório
* status 1..1 MS
* status ^short = "Status do produto administrável"
* status ^definition = "Status atual do produto na forma administrável"

// Referência ao produto original - obrigatório
* formOf 1..* MS
* formOf only Reference(MedicinalProductDefinitionBR)
* formOf ^short = "Produto medicinal de origem"
* formOf ^definition = "Referência ao produto medicinal original do qual deriva esta forma administrável"

// Forma farmacêutica administrável - obrigatório
* administrableDoseForm 1..1 MS
* administrableDoseForm from http://farmaco.maxapex.net/brig/fhir/ValueSet/administrable-dose-form-br (required)
* administrableDoseForm ^short = "Forma farmacêutica administrável final"
* administrableDoseForm ^definition = "Forma farmacêutica do produto na sua forma final, pronta para administração ao paciente"

// Unidade de apresentação administrável - obrigatório
* unitOfPresentation 1..1 MS
* unitOfPresentation from http://farmaco.maxapex.net/brig/fhir/ValueSet/administrable-unit-br (required)
* unitOfPresentation ^short = "Unidade de apresentação administrável"
* unitOfPresentation ^definition = "Unidade que descreve a apresentação do produto na forma administrável"

// Via de administração - obrigatório
* routeOfAdministration 1..* MS
* routeOfAdministration ^short = "Via(s) de administração"
* routeOfAdministration ^definition = "Via(s) pela(s) qual(is) o produto é administrado ao paciente"

// Código da via de administração
* routeOfAdministration.code 1..1 MS
* routeOfAdministration.code from http://farmaco.maxapex.net/brig/fhir/ValueSet/route-administration-br (required)
* routeOfAdministration.code ^short = "Código da via de administração"
* routeOfAdministration.code ^definition = "Código padronizado da via de administração conforme terminologia brasileira"

// Dosagem primeira dose - opcional
* routeOfAdministration.firstDose 0..1 MS
* routeOfAdministration.firstDose ^short = "Primeira dose"
* routeOfAdministration.firstDose ^definition = "Quantidade da primeira dose a ser administrada"

// Dosagem máxima por dose - opcional
* routeOfAdministration.maxSingleDose 0..1 MS
* routeOfAdministration.maxSingleDose ^short = "Dose máxima unitária"
* routeOfAdministration.maxSingleDose ^definition = "Quantidade máxima permitida em uma única administração"

// Dosagem máxima diária - opcional
* routeOfAdministration.maxDosePerDay 0..1 MS
* routeOfAdministration.maxDosePerDay ^short = "Dose máxima diária"
* routeOfAdministration.maxDosePerDay ^definition = "Quantidade máxima permitida em 24 horas"

// Período máximo de tratamento - opcional
* routeOfAdministration.maxTreatmentPeriod 0..1 MS
* routeOfAdministration.maxTreatmentPeriod ^short = "Período máximo de tratamento"
* routeOfAdministration.maxTreatmentPeriod ^definition = "Duração máxima recomendada para o tratamento"

// Alvo anatômico - opcional
* routeOfAdministration.targetSpecies 0..* MS
* routeOfAdministration.targetSpecies ^short = "Espécie alvo"
* routeOfAdministration.targetSpecies ^definition = "Espécie(s) alvo para administração (humano, veterinário)"

// Propriedades específicas da forma administrável
* property 0..* MS
* property ^short = "Propriedades da forma administrável"
* property ^definition = "Propriedades específicas do produto na forma administrável final"

// Slicing para diferentes tipos de propriedades
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type.coding.code"
* property ^slicing.rules = #open
* property ^slicing.description = "Diferentes tipos de propriedades administráveis"

// Propriedades de reconstituição
* property contains reconstitutionProperties 0..* MS
* property[reconstitutionProperties].type.coding.system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/administrable-property-br"
* property[reconstitutionProperties].type.coding.code = #reconstitution
* property[reconstitutionProperties] ^short = "Propriedades de reconstituição"
* property[reconstitutionProperties] ^definition = "Instruções e propriedades relacionadas à reconstituição do produto"

// Propriedades de diluição
* property contains dilutionProperties 0..* MS
* property[dilutionProperties].type.coding.system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/administrable-property-br"
* property[dilutionProperties].type.coding.code = #dilution
* property[dilutionProperties] ^short = "Propriedades de diluição"
* property[dilutionProperties] ^definition = "Instruções e propriedades relacionadas à diluição do produto"

// Nota: características específicas implementadas via property ao invés de characteristic

// Invariantes específicas para Brasil
* obeys apd-br-001 and apd-br-002

Invariant: apd-br-001
Description: "Produto administrável deve referenciar produto medicinal brasileiro válido"
Expression: "formOf.all(resolve().conformsTo('http://farmaco.maxapex.net/brig/fhir/StructureDefinition/MedicinalProductDefinition-br'))"
Severity: #error

Invariant: apd-br-002
Description: "Via de administração deve ser compatível com a forma farmacêutica administrável"
Expression: "true" // Implementação específica será adicionada conforme necessário
Severity: #warning