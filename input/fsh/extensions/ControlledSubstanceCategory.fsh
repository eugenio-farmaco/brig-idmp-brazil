Extension: ControlledSubstanceCategory
Id: controlled-substance-category
Title: "Categoria de Substância Controlada"
Description: "Categoria de controle da substância conforme legislação brasileira"
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
* ^purpose = "Identificar a categoria de controle especial de substâncias conforme Portaria SVS/MS n° 344/1998"

* value[x] only CodeableConcept
* valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/controlled-substance-category-br (required)
* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "Categoria de controle da substância"
* valueCodeableConcept ^definition = "Categoria de controle especial conforme legislação brasileira"

ValueSet: ControlledSubstanceCategoryBR
Id: controlled-substance-category-br
Title: "Categorias de Substâncias Controladas - Brasil"
Description: "Categorias de controle de substâncias conforme Portaria SVS/MS n° 344/1998"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/controlled-substance-category-br

CodeSystem: ControlledSubstanceCategoryBR
Id: controlled-substance-category-br
Title: "Categorias de Substâncias Controladas - Brasil"
Description: "Sistema de códigos para categorias de controle de substâncias no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #A1 "Lista A1 - Entorpecentes"
  "Substâncias entorpecentes - Lista A1 (Portaria SVS/MS n° 344/1998)"
* #A2 "Lista A2 - Entorpecentes de uso permitido somente em concentrações especiais"
  "Entorpecentes de uso permitido somente em concentrações especiais - Lista A2"
* #A3 "Lista A3 - Psicotrópicos"
  "Substâncias psicotrópicas - Lista A3"
* #B1 "Lista B1 - Psicotrópicos"
  "Substâncias psicotrópicas - Lista B1"
* #B2 "Lista B2 - Psicotrópicos anorexígenos"
  "Substâncias psicotrópicas anorexígenas - Lista B2"
* #C1 "Lista C1 - Outras substâncias sujeitas a controle especial"
  "Outras substâncias sujeitas a controle especial - Lista C1"
* #C2 "Lista C2 - Retinóides de uso sistêmico"
  "Retinóides de uso sistêmico - Lista C2"
* #C3 "Lista C3 - Imunossupressores"
  "Substâncias imunossupressoras - Lista C3"
* #C4 "Lista C4 - Anti-retrovirais"
  "Substâncias anti-retrovirais - Lista C4"
* #C5 "Lista C5 - Anabolizantes"
  "Substâncias anabolizantes - Lista C5"
* #D1 "Lista D1 - Precursores de entorpecentes e psicotrópicos"
  "Insumos químicos utilizados como precursores para fabricação de entorpecentes e psicotrópicos - Lista D1"
* #D2 "Lista D2 - Insumos químicos utilizados para outros fins"
  "Insumos químicos que podem ser utilizados para fabricação de entorpecentes, psicotrópicos ou outras substâncias - Lista D2"
* #E "Lista E - Plantas proscritas"
  "Plantas e suas partes que podem originar substâncias entorpecentes e psicotrópicas - Lista E"
* #F "Lista F - Substâncias de uso proscrito no Brasil"
  "Substâncias de uso proscrito no Brasil - Lista F"