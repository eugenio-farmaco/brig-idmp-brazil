ValueSet: SubstanceStatusBR
Id: substance-status-br
Title: "Status de Substância - Brasil"
Description: "Status regulatório de substâncias no contexto brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-status-br

CodeSystem: SubstanceStatusBR
Id: substance-status-br
Title: "Status de Substância - Brasil"
Description: "Sistema de códigos para status regulatório de substâncias no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #active "Ativa"
  "Substância com status ativo para uso em medicamentos"
* #inactive "Inativa"
  "Substância com status inativo"
* #superseded "Substituída"
  "Substância substituída por outra"
* #provisional "Provisória"
  "Substância com aprovação provisória"
* #withdrawn "Retirada"
  "Substância retirada do mercado"
* #under-review "Em Análise"
  "Substância em processo de análise regulatória"