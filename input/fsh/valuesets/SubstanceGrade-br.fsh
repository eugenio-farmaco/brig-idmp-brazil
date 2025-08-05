ValueSet: SubstanceGradeBR
Id: substance-grade-br
Title: "Grau de Substância - Brasil"
Description: "Graus ou qualidades de substâncias no contexto brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-grade-br

CodeSystem: SubstanceGradeBR
Id: substance-grade-br
Title: "Grau de Substância - Brasil"
Description: "Sistema de códigos para graus de qualidade de substâncias"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #pharmaceutical "Grau Farmacêutico"
  "Grau farmacêutico conforme farmacopeias"
* #food "Grau Alimentício"
  "Grau adequado para uso alimentício"
* #cosmetic "Grau Cosmético"
  "Grau adequado para uso cosmético"
* #technical "Grau Técnico"
  "Grau técnico ou industrial"
* #analytical "Grau Analítico"
  "Grau para reagente analítico"
* #usp "USP"
  "Grau conforme United States Pharmacopeia"
* #ep "EP"
  "Grau conforme European Pharmacopoeia"
* #fb "FB"
  "Grau conforme Farmacopeia Brasileira"
* #research "Grau Pesquisa"
  "Grau adequado para pesquisa científica"