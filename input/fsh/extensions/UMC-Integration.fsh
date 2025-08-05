// Extensions para integração futura com Uppsala Monitoring Centre (UMC/OMS)

Extension: UMCIntegrationMapping
Id: umc-integration-mapping
Title: "UMC Integration Mapping"
Description: "Extension para mapping futuro com Uppsala Monitoring Centre para coordenação internacional de identificadores PHPID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Facilitar integração futura com sistema global de identificação farmacêutica do UMC/OMS"
* ^context[0].type = #element
* ^context[0].expression = "AdministrableProductDefinition"

// Mapping para identificador UMC futuro
* extension contains
    umcRequestId 0..1 MS and
    umcStatus 0..1 MS and
    coordinationNotes 0..1 MS

* extension[umcRequestId] ^short = "ID de solicitação UMC"
* extension[umcRequestId] ^definition = "Identificador da solicitação de coordenação com UMC"
* extension[umcRequestId].value[x] only string

* extension[umcStatus] ^short = "Status da coordenação UMC"
* extension[umcStatus] ^definition = "Status atual da coordenação com Uppsala Monitoring Centre"
* extension[umcStatus].value[x] only code
* extension[umcStatus].value[x] from UMCCoordinationStatus (required)

* extension[coordinationNotes] ^short = "Notas de coordenação"
* extension[coordinationNotes] ^definition = "Notas sobre o processo de coordenação internacional"
* extension[coordinationNotes].value[x] only string

// ---

// ValueSet para status de coordenação UMC
ValueSet: UMCCoordinationStatus
Id: umc-coordination-status
Title: "Status de Coordenação UMC"
Description: "Status do processo de coordenação com Uppsala Monitoring Centre"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/umc-coordination-status

CodeSystem: UMCCoordinationStatus
Id: umc-coordination-status
Title: "Status de Coordenação UMC"
Description: "Códigos para status de coordenação com Uppsala Monitoring Centre"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #pending "Pendente"
  "Coordenação com UMC pendente"
* #requested "Solicitado"
  "Solicitação enviada ao UMC"
* #in-review "Em Revisão"
  "Solicitação em revisão pelo UMC"
* #approved "Aprovado"
  "PHPID aprovado pelo UMC"
* #assigned "Atribuído"
  "PHPID oficial atribuído pelo UMC"
* #rejected "Rejeitado"
  "Solicitação rejeitada pelo UMC"
* #on-hold "Em Espera"
  "Processo em espera aguardando informações adicionais"