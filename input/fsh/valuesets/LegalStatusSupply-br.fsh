ValueSet: LegalStatusSupplyBR
Id: legal-status-supply-br
Title: "Status Legal de Fornecimento - Brasil"
Description: "Status legal para dispensação de produtos medicinais no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/legal-status-supply-br

CodeSystem: LegalStatusSupplyBR
Id: legal-status-supply-br
Title: "Status Legal de Fornecimento - Brasil"
Description: "Sistema de códigos para status legal de dispensação no contexto brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #venda-livre "Venda Livre"
  "Medicamento de venda livre, sem necessidade de prescrição médica"
* #prescricao-medica "Prescrição Médica"
  "Medicamento que requer prescrição médica para dispensação"
* #prescricao-medica-renovavel "Prescrição Médica Renovável"
  "Medicamento com prescrição médica que permite renovação"
* #receita-especial "Receita Especial"
  "Medicamento que requer receita de controle especial"
* #receita-azul "Receita Azul"
  "Medicamento controlado que requer receita azul (lista C1)"
* #receita-amarela "Receita Amarela"
  "Medicamento controlado que requer receita amarela (lista C2)"
* #notificacao-a "Notificação A"
  "Medicamento que requer notificação de receita A (entorpecentes)"
* #notificacao-b "Notificação B"
  "Medicamento que requer notificação de receita B (psicotrópicos)"
* #uso-hospitalar "Uso Hospitalar"
  "Medicamento de uso restrito a ambiente hospitalar"
* #uso-restrito "Uso Restrito"
  "Medicamento de uso restrito conforme regulamentação específica"