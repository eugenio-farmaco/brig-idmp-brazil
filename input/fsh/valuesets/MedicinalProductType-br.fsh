ValueSet: MedicinalProductTypeBR
Id: medicinal-product-type-br
Title: "Tipos de Produto Medicinal - Brasil"
Description: "Tipos de produtos medicinais conforme classificação brasileira/ANVISA"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/medicinal-product-type-br

CodeSystem: MedicinalProductTypeBR
Id: medicinal-product-type-br
Title: "Tipos de Produto Medicinal - Brasil"
Description: "Sistema de códigos para tipos de produtos medicinais no contexto brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #medicamento "Medicamento"
  "Produto farmacêutico tecnicamente obtido ou elaborado, com finalidade profilática, curativa, paliativa ou para fins de diagnóstico"
* #vacina "Vacina"
  "Preparação que contém agente imunizante com a finalidade de produzir imunidade ativa específica"
* #soro "Soro"
  "Preparação que contém imunoglobulinas específicas com finalidade profilática ou terapêutica"
* #hemoderivado "Hemoderivado"
  "Produto obtido a partir do sangue humano para uso terapêutico"
* #radioativo "Radiofármaco"
  "Preparação farmacêutica que contém um ou mais radionuclídeos"
* #biologico "Produto Biológico"
  "Produto obtido de fluidos ou tecidos de origem biológica"
* #fitoterápico "Fitoterápico"
  "Medicamento obtido empregando-se exclusivamente matérias-primas ativas vegetais"
* #homeopatico "Homeopático"
  "Medicamento preparado segundo as normas e princípios da arte farmacêutica homeopática"
* #dinamizado "Medicamento Dinamizado"
  "Medicamento preparado a partir de insumo ativo ou inerte dinamizado segundo técnica especial"
* #antroposófico "Medicamento Antroposófico"
  "Medicamento obtido empregando matérias-primas de acordo com a farmacotécnica antroposófica"