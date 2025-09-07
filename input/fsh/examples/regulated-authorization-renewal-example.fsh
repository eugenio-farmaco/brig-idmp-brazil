Instance: regulated-authorization-renewal-example
InstanceOf: RegulatedAuthorizationBR
Usage: #example
Title: "Renovação de Registro ANVISA - Paracetamol 750mg"
Description: "Exemplo de RegulatedAuthorization para renovação de registro ANVISA do paracetamol 750mg"

// Identificadores ANVISA
* identifier[anvisaRegistration].system = "http://anvisa.gov.br/medicamentos/registro"
* identifier[anvisaRegistration].value = "1.5678.9012.345-6"
* identifier[anvisaRegistration].use = #official

* identifier[+].system = "http://anvisa.gov.br/processos"
* identifier[=].value = "25351.987654/2024-82"
* identifier[=].use = #secondary

// AFE da empresa
* identifier[anvisaAfe].system = "http://anvisa.gov.br/afe"
* identifier[anvisaAfe].value = "1.23456.7"

// Tipo de autorização - renovação
* type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/regulated-authorization-type-br#renewal "Renovação"

// Região - Brasil
* region = urn:iso:std:iso:3166#BR

// Status ativo (renovação aprovada)
* status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/regulated-authorization-status-br#active "Ativo"
* statusDate = "2024-09-01"

// Período de validade (renovado por mais 10 anos)
* validityPeriod.start = "2024-09-01"
* validityPeriod.end = "2034-09-01"

// Detentor do registro
* holder = Reference(organization-ems-example)
* holder.display = "EMS S/A"

// Autoridade reguladora - ANVISA
* regulator = Reference(organization-anvisa-example)  
* regulator.display = "Agência Nacional de Vigilância Sanitária - ANVISA"

// Produto registrado
* subject = Reference(paracetamol-medicinal-product-example)
* subject.display = "Paracetamol 750mg Comprimidos"

// Base legal para renovação
* basis[+] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/legal-basis-anvisa-br#rdc-317-2019 "RDC 317/2019"

// Indicações mantidas na renovação  
* indication[+].coding.system = "http://snomed.info/sct"
* indication[=].coding.code = #22253000
* indication[=].coding.display = "Pain"

* indication[+].coding.system = "http://snomed.info/sct"
* indication[=].coding.code = #386661006
* indication[=].coding.display = "Fever"

// Extension para histórico de renovação
* extension[+].url = "http://farmaco.maxapex.net/brig/fhir/StructureDefinition/renewal-history"
* extension[=].extension[+].url = "previousRegistration"
* extension[=].extension[=].valueString = "1.5678.9012.345-6"
* extension[=].extension[+].url = "previousValidityEnd"
* extension[=].extension[=].valueDate = "2024-08-31"
* extension[=].extension[+].url = "renewalCount"
* extension[=].extension[=].valueInteger = 1

// Extension para categoria de registro (medicamento genérico)
* extension[+].url = "http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-registration-category"
* extension[=].valueCodeableConcept.coding.system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/anvisa-category-br"
* extension[=].valueCodeableConcept.coding.code = #medicamento-generico
* extension[=].valueCodeableConcept.coding.display = "Medicamento Genérico"