// ValueSets para AdministrableProductDefinition-br

// Formas farmacêuticas administráveis (forma final pronta para uso)
ValueSet: AdministrableDoseFormBR
Id: administrable-dose-form-br
Title: "Formas Farmacêuticas Administráveis - Brasil"
Description: "Formas farmacêuticas na apresentação final, prontas para administração ao paciente"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/administrable-dose-form-br

CodeSystem: AdministrableDoseFormBR
Id: administrable-dose-form-br
Title: "Formas Farmacêuticas Administráveis - Brasil"
Description: "Sistema de códigos para formas farmacêuticas na apresentação final administrável"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Formas líquidas administráveis
* #solucao-oral "Solução Oral"
  "Solução líquida pronta para administração oral"
* #suspensao-oral "Suspensão Oral"
  "Suspensão líquida pronta para administração oral (após reconstituição se necessário)"
* #solucao-injetavel "Solução Injetável"
  "Solução estéril pronta para administração parenteral (após reconstituição se necessário)"
* #suspensao-injetavel "Suspensão Injetável"
  "Suspensão estéril pronta para administração parenteral (após reconstituição se necessário)"
* #emulsao-injetavel "Emulsão Injetável"
  "Emulsão estéril pronta para administração parenteral"

// Formas sólidas administráveis (prontas para uso)
* #comprimido-oral "Comprimido para Uso Oral"
  "Comprimido pronto para administração oral"
* #capsula-oral "Cápsula para Uso Oral"
  "Cápsula pronta para administração oral"
* #comprimido-sublingual "Comprimido Sublingual"
  "Comprimido pronto para administração sublingual"
* #comprimido-bucal "Comprimido Bucal"
  "Comprimido pronto para administração bucal"

// Formas tópicas administráveis
* #creme-topico "Creme Tópico"
  "Creme pronto para aplicação tópica"
* #pomada-topica "Pomada Tópica"
  "Pomada pronta para aplicação tópica"
* #gel-topico "Gel Tópico"
  "Gel pronto para aplicação tópica"
* #locao-topica "Loção Tópica"
  "Loção pronta para aplicação tópica"

// Formas especiais administráveis
* #aerossol-inalacao "Aerossol para Inalação"
  "Aerossol pronto para inalação"
* #solucao-inalacao "Solução para Inalação"
  "Solução pronta para inalação (após diluição se necessário)"
* #supositorio-retal "Supositório Retal"
  "Supositório pronto para inserção retal"
* #ovulo-vaginal "Óvulo Vaginal"
  "Óvulo pronto para inserção vaginal"

// ---

// Unidades de apresentação administrável
ValueSet: AdministrableUnitBR
Id: administrable-unit-br
Title: "Unidades Administráveis - Brasil"
Description: "Unidades que descrevem a apresentação final administrável"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/administrable-unit-br

CodeSystem: AdministrableUnitBR
Id: administrable-unit-br
Title: "Unidades Administráveis - Brasil"
Description: "Sistema de códigos para unidades de apresentação administrável"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Unidades de volume
* #ml-dose "mL por dose"
  "Mililitros por dose administrada"
* #dose-unitaria "Dose unitária"
  "Uma dose completa pronta para administração"
* #aplicacao "Aplicação"
  "Uma aplicação tópica"

// Unidades sólidas
* #comprimido "Comprimido"
  "Um comprimido pronto para administração"
* #capsula "Cápsula"
  "Uma cápsula pronta para administração"
* #supositorio "Supositório"
  "Um supositório pronto para inserção"

// Unidades especiais
* #inalacao "Inalação"
  "Uma dose inalatória"
* #borrifo "Borrifo"
  "Um borrifo nasal ou oral"

// ---

// Vias de administração brasileiras
ValueSet: RouteAdministrationBR
Id: route-administration-br
Title: "Vias de Administração - Brasil"
Description: "Vias de administração de medicamentos conforme padrões brasileiros"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/route-administration-br

CodeSystem: RouteAdministrationBR
Id: route-administration-br
Title: "Vias de Administração - Brasil"
Description: "Sistema de códigos para vias de administração de medicamentos"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Vias orais
* #oral "Via Oral"
  "Administração pela boca para deglutição"
* #sublingual "Via Sublingual"
  "Administração sob a língua"
* #bucal "Via Bucal"
  "Administração na mucosa bucal"

// Vias parenterais
* #intravenosa "Via Intravenosa"
  "Administração diretamente na veia"
* #intramuscular "Via Intramuscular"
  "Administração no músculo"
* #subcutanea "Via Subcutânea"
  "Administração no tecido subcutâneo"
* #intra-articular "Via Intra-articular"
  "Administração dentro da articulação"
* #intratecal "Via Intratecal"
  "Administração no espaço subaracnóideo"

// Vias tópicas
* #topica "Via Tópica"
  "Aplicação na pele"
* #oftalmica "Via Oftálmica"
  "Aplicação nos olhos"
* #otica "Via Ótica"
  "Aplicação nos ouvidos"
* #nasal "Via Nasal"
  "Aplicação no nariz"

// Vias especiais
* #retal "Via Retal"
  "Administração por via retal"
* #vaginal "Via Vaginal"
  "Administração por via vaginal"
* #inalatoria "Via Inalatória"
  "Administração por inalação"

// ---

// Propriedades administráveis
ValueSet: AdministrablePropertyBR
Id: administrable-property-br
Title: "Propriedades Administráveis - Brasil"
Description: "Tipos de propriedades específicas para produtos administráveis"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/administrable-property-br

CodeSystem: AdministrablePropertyBR
Id: administrable-property-br
Title: "Propriedades Administráveis - Brasil"
Description: "Sistema de códigos para propriedades de produtos administráveis"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #reconstitution "Reconstituição"
  "Propriedades relacionadas à reconstituição do produto"
* #dilution "Diluição"
  "Propriedades relacionadas à diluição do produto"
* #ph "pH"
  "Valor de pH da solução final"
* #osmolaridade "Osmolaridade"
  "Osmolaridade da solução final"
* #concentracao-final "Concentração Final"
  "Concentração do produto na forma administrável final"