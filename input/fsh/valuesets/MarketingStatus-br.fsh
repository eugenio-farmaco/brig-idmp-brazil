ValueSet: MarketingStatusBR
Id: marketing-status-br
Title: "Status de Comercialização - Brasil"
Description: "Status de comercialização de produtos medicinais no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/marketing-status-br

CodeSystem: MarketingStatusBR
Id: marketing-status-br
Title: "Status de Comercialização - Brasil"
Description: "Sistema de códigos para status de comercialização no contexto brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #active "Ativo"
  "Produto com registro válido e comercialização autorizada"
* #suspended "Suspenso"
  "Produto com comercialização temporariamente suspensa"
* #cancelled "Cancelado"
  "Produto com registro cancelado pela ANVISA"
* #expired "Vencido"
  "Produto com registro vencido e não renovado"
* #withdrawn "Retirado"
  "Produto voluntariamente retirado do mercado pelo titular"
* #pending "Pendente"
  "Produto com processo de registro em análise"
* #denied "Negado"
  "Produto com registro negado pela ANVISA"
* #revoked "Revogado"
  "Produto com registro revogado por determinação legal"