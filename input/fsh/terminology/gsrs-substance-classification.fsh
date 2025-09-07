CodeSystem: GSRSSubstanceClassificationBR
Id: gsrs-substance-classification-br
Title: "GSRS Substance Classification - Brasil"
Description: "Classificação de substâncias conforme GSRS adaptado para Brasil"
* ^url = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/gsrs-substance-classification-br"
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

// Classificações GSRS básicas
* #chemical "Chemical Substance"
  "Substância química definida"
* #protein "Protein"
  "Substância proteica"
* #nucleicAcid "Nucleic Acid"
  "Ácido nucleico"
* #polymer "Polymer"
  "Substância polimérica"
* #structurallyDiverse "Structurally Diverse"
  "Substância estruturalmente diversa"
* #mixture "Mixture"
  "Mistura de substâncias"
* #specifiedSubstanceGroup1 "Specified Substance Group 1"
  "Grupo de substâncias especificadas tipo 1"

// Classificações brasileiras mantidas
* #active "Substância Ativa"
  "Substância ativa farmacêutica"
* #excipient "Excipiente"
  "Substância excipiente"
* #controlled "Controlada"
  "Substância controlada pela ANVISA"
* #precursor "Precursor"
  "Precursor químico"

ValueSet: SubstanceClassificationGSRSBR
Id: substance-classification-gsrs-br
Title: "Classificação de Substância GSRS/Brasil"
Description: "Conjunto de valores para classificação de substâncias GSRS e brasileiro"
* ^url = "http://farmaco.maxapex.net/brig/fhir/ValueSet/substance-classification-gsrs-br"
* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"

// Incluir códigos GSRS
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/gsrs-substance-classification-br

// Incluir códigos brasileiros existentes (compatibilidade)
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-classification-br