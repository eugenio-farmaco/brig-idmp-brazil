ValueSet: SubstanceCodeBR
Id: substance-code-br
Title: "Códigos de Substância - Brasil"
Description: "Códigos padronizados para substâncias no contexto brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

// Incluir códigos ATC da WHO
* include codes from system http://www.whocc.no/atc

// Incluir códigos SNOMED CT para substâncias
* include codes from system http://snomed.info/sct where concept is-a #105590001 "Substance (substance)"

// Incluir códigos específicos brasileiros
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/anvisa-substance-code

CodeSystem: ANVISASubstanceCode
Id: anvisa-substance-code
Title: "Códigos ANVISA de Substância"
Description: "Sistema de códigos específicos da ANVISA para substâncias"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #example

// Exemplos de códigos ANVISA (a serem expandidos)
* #SUB001 "Paracetamol"
  "Paracetamol - código ANVISA"
* #SUB002 "Dipirona Sódica"
  "Dipirona Sódica - código ANVISA"
* #SUB003 "Ácido Acetilsalicílico"
  "Ácido Acetilsalicílico - código ANVISA"
* #SUB004 "Ibuprofeno"
  "Ibuprofeno - código ANVISA"
* #SUB005 "Diclofenaco Sódico"
  "Diclofenaco Sódico - código ANVISA"