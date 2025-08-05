ValueSet: SubstanceClassificationBR
Id: substance-classification-br
Title: "Classificação de Substância - Brasil"
Description: "Classificação de substâncias no contexto brasileiro/ANVISA"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-classification-br

CodeSystem: SubstanceClassificationBR
Id: substance-classification-br
Title: "Classificação de Substância - Brasil"
Description: "Sistema de códigos para classificação de substâncias no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #active "Substância Ativa"
  "Princípio ativo farmacologicamente ativo"
* #excipient "Excipiente"
  "Substância farmacologicamente inativa usada como veículo"
* #controlled "Substância Controlada"
  "Substância sujeita a controle especial"
* #narcotic "Entorpecente"
  "Substância entorpecente (Lista A)"
* #psychotropic "Psicotrópico"
  "Substância psicotrópica (Lista B)"
* #precursor "Precursor"
  "Substância precursora de drogas"
* #natural "Natural"
  "Substância de origem natural"
* #synthetic "Sintética"
  "Substância de origem sintética"
* #semi-synthetic "Semi-sintética"
  "Substância semi-sintética"
* #biotechnology "Biotecnológica"
  "Substância produzida por biotecnologia"
* #radiopharmaceutical "Radiofarmacêutica"
  "Substância radiofarmacêutica"