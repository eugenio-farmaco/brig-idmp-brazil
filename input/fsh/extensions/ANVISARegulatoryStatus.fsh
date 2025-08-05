Extension: ANVISARegulatoryStatus
Id: anvisa-regulatory-status
Title: "Status Regulatório ANVISA"
Description: "Status regulatório da substância junto à ANVISA"
Context: SubstanceDefinition
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^contact.name = "Eugênio Neves"
* ^contact.telecom[0].system = #email
* ^contact.telecom[0].value = "eugenio@farmaco.io"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Identificar o status regulatório específico da substância no contexto da ANVISA"

* extension contains
    status 1..1 MS and
    approvalDate 0..1 MS and
    expiryDate 0..1 MS and
    restrictions 0..* MS and
    lastReviewDate 0..1 MS

* extension[status] ^short = "Status regulatório"
* extension[status] ^definition = "Status atual da substância junto à ANVISA"
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/anvisa-regulatory-status-br (required)

* extension[approvalDate] ^short = "Data de aprovação"
* extension[approvalDate] ^definition = "Data de aprovação da substância pela ANVISA"
* extension[approvalDate].value[x] only date

* extension[expiryDate] ^short = "Data de expiração"
* extension[expiryDate] ^definition = "Data de expiração da aprovação regulatória"
* extension[expiryDate].value[x] only date

* extension[restrictions] ^short = "Restrições de uso"
* extension[restrictions] ^definition = "Restrições específicas de uso impostas pela ANVISA"
* extension[restrictions].value[x] only string

* extension[lastReviewDate] ^short = "Data da última revisão"
* extension[lastReviewDate] ^definition = "Data da última revisão regulatória pela ANVISA"
* extension[lastReviewDate].value[x] only date

ValueSet: ANVISARegulatoryStatusBR
Id: anvisa-regulatory-status-br
Title: "Status Regulatório ANVISA - Brasil"
Description: "Status regulatório de substâncias junto à ANVISA"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/anvisa-regulatory-status-br

CodeSystem: ANVISARegulatoryStatusBR
Id: anvisa-regulatory-status-br
Title: "Status Regulatório ANVISA - Brasil"
Description: "Sistema de códigos para status regulatório de substâncias na ANVISA"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #approved "Aprovada"
  "Substância aprovada para uso em medicamentos"
* #approved-restricted "Aprovada com Restrições"
  "Substância aprovada com restrições específicas de uso"
* #suspended "Suspensa"
  "Substância com uso temporariamente suspenso"
* #prohibited "Proibida"
  "Substância proibida para uso em medicamentos"
* #under-review "Em Análise"
  "Substância em processo de análise regulatória"
* #provisional "Aprovação Provisória"
  "Substância com aprovação provisória ou condicional"
* #withdrawn "Retirada"
  "Substância com aprovação retirada"
* #not-applicable "Não Aplicável"
  "Status regulatório não aplicável (ex: excipientes não controlados)"