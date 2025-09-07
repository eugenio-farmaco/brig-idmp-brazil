CodeSystem: RegulatedAuthorizationStatusBR
Id: regulated-authorization-status-br
Title: "Status de Autorização Regulatória ANVISA"
Description: "Status de autorizações regulatórias conforme processos ANVISA para medicamentos"
* ^url = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/regulated-authorization-status-br"
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

* #active "Ativo"
  "Autorização regulatória ativa e válida"
* #suspended "Suspenso"
  "Autorização temporariamente suspensa pela ANVISA"
* #cancelled "Cancelado"
  "Autorização cancelada definitivamente"
* #discontinued "Descontinuado"
  "Produto descontinuado pelo detentor"
* #expired "Expirado"
  "Autorização expirada por fim de validade"
* #pending "Pendente"
  "Processo de autorização em análise"
* #under-review "Em Revisão"
  "Autorização sob revisão regulatória"
* #renewal-required "Renovação Necessária"
  "Autorização próxima do vencimento, renovação necessária"
* #revoked "Revogado"
  "Autorização revogada por decisão regulatória"
* #withdrawn "Retirado"
  "Produto retirado do mercado por solicitação do detentor"

ValueSet: RegulatedAuthorizationStatusBR
Id: regulated-authorization-status-br
Title: "Status de Autorização Regulatória Brasil"
Description: "Conjunto de valores para status de autorizações regulatórias ANVISA"
* ^url = "http://farmaco.maxapex.net/brig/fhir/ValueSet/regulated-authorization-status-br"
* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/regulated-authorization-status-br