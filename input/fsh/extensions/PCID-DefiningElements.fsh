// Extensions para elementos definidores de PCID conforme padrões internacionais

// Extension para detalhes de containers de item da embalagem
Extension: PackageItemContainerDetails
Id: package-item-container-details
Title: "Detalhes de Container do Item da Embalagem"
Description: "Detalhes específicos do container que são elementos definidores do PCID - mudanças requerem novo PCID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Identificar características de container que, quando alteradas, requerem geração de novo PCID conforme padrões internacionais"
* ^context[0].type = #element
* ^context[0].expression = "PackagedProductDefinition.packaging.containedItem"

* extension contains
    containerType 1..1 MS and
    containerQuantity 0..1 MS and
    containerMaterials 0..* MS

* extension[containerType] ^short = "Tipo de container"
* extension[containerType] ^definition = "Tipo específico do container que é elemento definidor do PCID"
* extension[containerType].value[x] only CodeableConcept
* extension[containerType].valueCodeableConcept from ContainerTypeBR (required)

* extension[containerQuantity] ^short = "Quantidade de containers"
* extension[containerQuantity] ^definition = "Quantidade de containers por unidade de embalagem"
* extension[containerQuantity].value[x] only integer

* extension[containerMaterials] ^short = "Materiais do container"
* extension[containerMaterials] ^definition = "Materiais utilizados na composição do container"
* extension[containerMaterials].value[x] only CodeableConcept
* extension[containerMaterials].valueCodeableConcept from ContainerMaterialsBR (required)

// ---

// Extension para detalhes de componentes da embalagem
Extension: PackageComponentDetails
Id: package-component-details
Title: "Detalhes de Componentes da Embalagem"
Description: "Detalhes específicos dos componentes que são elementos definidores do PCID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Identificar componentes de embalagem que, quando alterados, requerem geração de novo PCID"
* ^context[0].type = #element
* ^context[0].expression = "PackagedProductDefinition.packaging"

* extension contains
    componentType 1..1 MS and
    componentMaterials 0..* MS

* extension[componentType] ^short = "Tipo de componente"
* extension[componentType] ^definition = "Tipo específico do componente da embalagem"
* extension[componentType].value[x] only CodeableConcept
* extension[componentType].valueCodeableConcept from PackageComponentsBR (required)

* extension[componentMaterials] ^short = "Materiais do componente"
* extension[componentMaterials] ^definition = "Materiais utilizados na composição do componente"
* extension[componentMaterials].value[x] only CodeableConcept
* extension[componentMaterials].valueCodeableConcept from ContainerMaterialsBR (required)

// ---

// Extension para critérios do item manufaturado
Extension: ManufacturedItemCriteria
Id: manufactured-item-criteria
Title: "Critérios do Item Manufaturado"
Description: "Critérios específicos do item manufaturado que são elementos definidores do PCID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Identificar critérios do item manufaturado que, quando alterados, requerem geração de novo PCID"
* ^context[0].type = #element
* ^context[0].expression = "PackagedProductDefinition.packaging.containedItem"

* extension contains
    manufacturedDoseForm 1..1 MS and
    unitOfPresentation 1..1 MS and
    quantityPerPackage 0..1 MS

* extension[manufacturedDoseForm] ^short = "Forma farmacêutica manufaturada"
* extension[manufacturedDoseForm] ^definition = "Forma farmacêutica específica do item manufaturado"
* extension[manufacturedDoseForm].value[x] only CodeableConcept
* extension[manufacturedDoseForm].valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/manufactured-dose-form-br (required)

* extension[unitOfPresentation] ^short = "Unidade de apresentação"
* extension[unitOfPresentation] ^definition = "Unidade de apresentação específica do item manufaturado"
* extension[unitOfPresentation].value[x] only CodeableConcept
* extension[unitOfPresentation].valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/manufactured-unit-br (required)

* extension[quantityPerPackage] ^short = "Quantidade por embalagem"
* extension[quantityPerPackage] ^definition = "Quantidade de unidades do item manufaturado por embalagem"
* extension[quantityPerPackage].value[x] only integer

// ---

// ValueSets para tipos de containers brasileiros
ValueSet: ContainerTypeBR
Id: container-type-br
Title: "Tipos de Container - Brasil"
Description: "Tipos de containers padronizados para embalagens brasileiras"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/container-type-br

CodeSystem: ContainerTypeBR
Id: container-type-br
Title: "Tipos de Container - Brasil"
Description: "Sistema de códigos para tipos de containers de embalagens brasileiras"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Containers primários
* #blister "Blister"
  "Embalagem blister para comprimidos/cápsulas"
* #bottle "Frasco"
  "Frasco para líquidos ou sólidos"
* #vial "Ampola/Frasco-ampola"
  "Ampola de vidro ou frasco-ampola"
* #ampoule "Ampola"
  "Ampola de vidro selada"
* #syringe "Seringa"
  "Seringa pré-carregada"
* #cartridge "Refil/Cartucho"
  "Cartucho ou refil para dispositivos"
* #sachet "Sachê"
  "Envelope/sachê para pós ou líquidos"
* #tube "Bisnaga"
  "Bisnaga para cremes/pomadas"
* #inhaler "Inalador"
  "Dispositivo inalador"
* #patch "Adesivo"
  "Adesivo transdérmico"

// Containers secundários
* #box "Caixa"
  "Caixa de papelão"
* #pouch "Bolsa"
  "Bolsa plástica"
* #strip "Tira"
  "Tira de embalagem unitária"

// ---

// ValueSet para materiais de containers brasileiros
ValueSet: ContainerMaterialsBR
Id: container-materials-br
Title: "Materiais de Container - Brasil"
Description: "Materiais padronizados para containers de embalagens brasileiras"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/container-materials-br

CodeSystem: ContainerMaterialsBR
Id: container-materials-br
Title: "Materiais de Container - Brasil"
Description: "Sistema de códigos para materiais de containers brasileiros"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Materiais plásticos
* #pvc "PVC"
  "Cloreto de polivinila"
* #pe "Polietileno"
  "Polietileno (PE)"
* #pp "Polipropileno"
  "Polipropileno (PP)"
* #pet "PET"
  "Tereftalato de polietileno"
* #pvdc "PVDC"
  "Cloreto de polivinilideno"
* #eva "EVA"
  "Acetato-vinilo de etileno"

// Materiais metálicos
* #aluminum "Alumínio"
  "Folha ou lâmina de alumínio"
* #tinplate "Folha de flandres"
  "Aço com revestimento de estanho"
* #stainless-steel "Aço inoxidável"
  "Aço inoxidável"

// Materiais vítreos
* #glass-clear "Vidro transparente"
  "Vidro transparente incolor"
* #glass-amber "Vidro âmbar"
  "Vidro com coloração âmbar"
* #glass-blue "Vidro azul"
  "Vidro com coloração azul"

// Outros materiais
* #cardboard "Papelão"
  "Papelão ou cartão"
* #paper "Papel"
  "Papel comum ou especial"
* #rubber "Borracha"
  "Borracha natural ou sintética"
* #silicone "Silicone"
  "Silicone médico"

// ---

// ValueSet para componentes de embalagem brasileiros
ValueSet: PackageComponentsBR
Id: package-components-br
Title: "Componentes de Embalagem - Brasil"
Description: "Componentes padronizados para embalagens brasileiras"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/package-components-br

CodeSystem: PackageComponentsBR
Id: package-components-br
Title: "Componentes de Embalagem - Brasil"
Description: "Sistema de códigos para componentes de embalagens brasileiras"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Componentes de fechamento
* #cap "Tampa"
  "Tampa roscada ou encaixe"
* #lid "Lacre"
  "Lacre de segurança"
* #stopper "Rolha"
  "Rolha de borracha ou plástico"
* #closure "Fechamento"
  "Sistema de fechamento genérico"

// Componentes informativos
* #label "Rótulo"
  "Rótulo com informações do produto"
* #insert "Bula"
  "Bula ou folheto informativo"
* #leaflet "Folheto"
  "Folheto informativo adicional"
* #barcode "Código de barras"
  "Etiqueta com código de barras"

// Componentes funcionais
* #desiccant "Dessecante"
  "Sachê ou pastilha dessecante"
* #cotton "Algodão"
  "Algodão protetor"
* #separator "Separador"
  "Divisória ou separador interno"
* #applicator "Aplicador"
  "Dispositivo aplicador"

// Componentes de proteção
* #seal "Selo"
  "Selo de proteção ou inviolabilidade"
* #shrink-wrap "Filme plástico"
  "Filme plástico termocontrátil"
* #protective-cap "Tampa protetora"
  "Tampa protetora adicional"