CodeSystem: GSRSSubstanceStatusBR
Id: gsrs-substance-status-br
Title: "GSRS Substance Status - Brasil"
Description: "Status de substâncias conforme padrão GSRS adaptado para Brasil"
* ^url = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/gsrs-substance-status-br"
* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"
* ^publisher = "Eugênio Neves"
* ^contact.name = "Eugênio Neves"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "eugenio@farmaco.io"
* ^caseSensitive = true
* ^content = #complete

* #active "Active"
  "Substância ativa e validada no sistema GSRS"
* #inactive "Inactive"  
  "Substância inativa ou descontinuada"
* #pending "Pending"
  "Substância pendente de validação GSRS"
* #validated "Validated"
  "Substância validada pela autoridade regulatória"
* #provisional "Provisional"
  "Substância com registro provisório"
* #deprecated "Deprecated"
  "Substância depreciada - usar alternativa"

ValueSet: SubstanceStatusGSRSBR
Id: substance-status-gsrs-br
Title: "Status de Substância GSRS/Brasil"
Description: "Conjunto de valores para status de substâncias GSRS e brasileiro"
* ^url = "http://farmaco.maxapex.net/brig/fhir/ValueSet/substance-status-gsrs-br"
* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"

// Incluir códigos GSRS
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/gsrs-substance-status-br

// Incluir códigos brasileiros existentes (compatibilidade)
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-status-br