Instance: regulated-authorization-dipirona-example
InstanceOf: RegulatedAuthorizationBR
Usage: #example
Title: "Registro ANVISA - Dipirona 500mg"
Description: "Exemplo de RegulatedAuthorization para registro ANVISA da dipirona 500mg"

// Identificadores ANVISA
* identifier[anvisaRegistration].system = "http://anvisa.gov.br/medicamentos/registro"
* identifier[anvisaRegistration].value = "1.0123.4567.001-8"
* identifier[anvisaRegistration].use = #official

* identifier[+].system = "http://anvisa.gov.br/processos"
* identifier[=].value = "25351.123456/2023-15"
* identifier[=].use = #secondary

// Tipo de autorização - registro de medicamento similar
* type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/regulated-authorization-type-br#similar-drug "Medicamento Similar"

// Região - Brasil
* region = urn:iso:std:iso:3166#BR

// Status ativo
* status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/regulated-authorization-status-br#active "Ativo"
* statusDate = "2023-08-15"

// Período de validade (10 anos conforme RDC 317/2019)
* validityPeriod.start = "2023-08-15"
* validityPeriod.end = "2033-08-15"

// Detentor do registro
* holder = Reference(organization-neoquimica-example)
* holder.display = "Laboratório Neoqúimica Ltda."

// Autoridade reguladora - ANVISA  
* regulator = Reference(organization-anvisa-example)
* regulator.display = "Agência Nacional de Vigilância Sanitária - ANVISA"

// Produto registrado
* subject = Reference(dipirona-medicinal-product-example)
* subject.display = "Dipirona Sódica 500mg Comprimidos"

// Base legal (usando basis)
* basis[+] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/legal-basis-anvisa-br#rdc-753-2022 "RDC 753/2022"

// Indicações terapêuticas (temporariamente comentadas)
// * indication[+].coding.system = "http://snomed.info/sct"
// * indication[=].coding.code = #22253000
// * indication[=].coding.display = "Pain"

// * indication[+].coding.system = "http://snomed.info/sct"  
// * indication[=].coding.code = #386661006
// * indication[=].coding.display = "Fever"

// Extension para categoria de registro ANVISA
// * extension[+].url = "http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-registration-category"
// * extension[=].valueCodeableConcept.coding.system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/anvisa-category-br"
// * extension[=].valueCodeableConcept.coding.code = #medicamento-similar
// * extension[=].valueCodeableConcept.coding.display = "Medicamento Similar"