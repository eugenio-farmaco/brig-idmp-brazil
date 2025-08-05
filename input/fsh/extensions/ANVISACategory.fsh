Extension: ANVISACategory
Id: anvisa-category
Title: "Categoria ANVISA"
Description: "Categoria específica da ANVISA para classificação do produto medicinal"
Context: MedicinalProductDefinition
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^contact.name = "Eugênio Neves"
* ^contact.telecom[0].system = #email
* ^contact.telecom[0].value = "eugenio@farmaco.io"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Permitir a classificação de produtos medicinais conforme categorias específicas da ANVISA"

* value[x] only CodeableConcept
* valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/anvisa-category-br (required)
* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "Categoria ANVISA do produto"
* valueCodeableConcept ^definition = "Categoria específica da ANVISA para o produto medicinal"

ValueSet: ANVISACategoryBR
Id: anvisa-category-br
Title: "Categorias ANVISA - Brasil"
Description: "Categorias de produtos medicinais conforme classificação da ANVISA"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/anvisa-category-br

CodeSystem: ANVISACategoryBR
Id: anvisa-category-br
Title: "Categorias ANVISA - Brasil"
Description: "Sistema de códigos para categorias de produtos medicinais da ANVISA"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #new "Medicamento Novo"
  "Medicamento com princípio ativo sintético ou semi-sintético, conhecido e usado em terapêutica, que não esteja registrado no país"
* #generic "Medicamento Genérico"
  "Medicamento similar a um produto de referência ou inovador, que se pretende ser intercambiável com este produto"
* #similar "Medicamento Similar"
  "Aquele que contém o mesmo ou os mesmos princípios ativos, apresenta a mesma concentração, forma farmacêutica, via de administração, posologia e indicação terapêutica"
* #reference "Medicamento de Referência"
  "Produto inovador registrado no órgão federal responsável pela vigilância sanitária e comercializado no país"
* #specific "Medicamento Específico"
  "Medicamento com características particulares ou específicas"
* #biological "Produto Biológico"
  "Produto obtido de fluidos ou tecidos de origem biológica, incluindo vacinas, soros, hemoderivados"
* #biosimilar "Produto Biosimilar"
  "Produto biológico similar a um produto biológico de referência já registrado"
* #phytotherapeutic "Fitoterápico"
  "Medicamento obtido empregando-se exclusivamente matérias-primas ativas vegetais"
* #homeopathic "Homeopático"
  "Medicamento preparado segundo as normas e princípios da arte farmacêutica homeopática"
* #radiopharmaceutical "Radiofármaco"
  "Preparação farmacêutica que contém um ou mais radionuclídeos"