// ValueSets para PackagedProductDefinition-br

// Tipos de produtos embalados
ValueSet: PackagedProductTypeBR
Id: packaged-product-type-br
Title: "Tipos de Produto Embalado - Brasil"
Description: "Tipos de produtos embalados utilizados no contexto regulatório brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/packaged-product-type-br

CodeSystem: PackagedProductTypeBR
Id: packaged-product-type-br
Title: "Tipos de Produto Embalado - Brasil"
Description: "Sistema de códigos para tipos de produtos embalados no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #medicamento "Medicamento Embalado"
  "Produto medicinal em embalagem comercial para dispensação"
* #medicamento-hospitalar "Medicamento Hospitalar"
  "Produto medicinal em embalagem para uso hospitalar"
* #medicamento-controlado "Medicamento Controlado"
  "Produto medicinal controlado em embalagem específica com requisitos especiais"
* #medicamento-generico "Medicamento Genérico"
  "Medicamento genérico em embalagem comercial"
* #medicamento-similar "Medicamento Similar"
  "Medicamento similar em embalagem comercial"
* #medicamento-referencia "Medicamento de Referência"
  "Medicamento de referência (inovador) em embalagem comercial"
* #fitoterapico "Fitoterápico"
  "Produto fitoterápico em embalagem comercial"
* #homeopatico "Homeopático"
  "Produto homeopático em embalagem comercial"
* #cosmetico "Cosmético"
  "Produto cosmético em embalagem comercial"
* #saneante "Saneante"
  "Produto saneante em embalagem comercial"

// ---

// Tipos de embalagem
ValueSet: PackagingTypeBR
Id: packaging-type-br
Title: "Tipos de Embalagem - Brasil"
Description: "Tipos de embalagem utilizados para produtos farmacêuticos no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/packaging-type-br

CodeSystem: PackagingTypeBR
Id: packaging-type-br
Title: "Tipos de Embalagem - Brasil"
Description: "Sistema de códigos para tipos de embalagem no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Embalagens primárias
* #blister "Blister"
  "Embalagem blister para comprimidos/cápsulas"
* #frasco "Frasco"
  "Frasco para líquidos ou sólidos"
* #ampola "Ampola"
  "Ampola para injetáveis"
* #seringa "Seringa Preenchida"
  "Seringa pré-preenchida"
* #vial "Frasco-ampola (Vial)"
  "Frasco-ampola para injetáveis"
* #sachê "Sachê"
  "Sachê para pós ou granulados"
* #tubo "Tubo"
  "Tubo para cremes/pomadas"
* #envelope "Envelope"
  "Envelope para produtos em pó"

// Embalagens secundárias
* #caixa "Caixa"
  "Caixa de papelão"
* #estojo "Estojo"
  "Estojo para múltiplas unidades"
* #cartucho "Cartucho"
  "Cartucho para produtos específicos"

// Embalagens especiais
* #frasco-gotejador "Frasco Gotejador"
  "Frasco com sistema gotejador"
* #spray "Frasco Spray"
  "Frasco com sistema de spray"
* #inalador "Inalador"
  "Dispositivo inalador"
* #dispositivo-aplicacao "Dispositivo de Aplicação"
  "Dispositivo especial para aplicação"

// ---

// Materiais de embalagem
ValueSet: PackagingMaterialBR
Id: packaging-material-br
Title: "Materiais de Embalagem - Brasil"
Description: "Materiais utilizados em embalagens farmacêuticas no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/packaging-material-br

CodeSystem: PackagingMaterialBR
Id: packaging-material-br
Title: "Materiais de Embalagem - Brasil"
Description: "Sistema de códigos para materiais de embalagem no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #vidro "Vidro"
  "Embalagem de vidro"
* #plastico "Plástico"
  "Embalagem plástica"
* #aluminio "Alumínio"
  "Embalagem de alumínio"
* #papel "Papel"
  "Embalagem de papel/papelão"
* #pvc "PVC"
  "Cloreto de polivinila"
* #pe "Polietileno"
  "Polietileno"
* #pp "Polipropileno"
  "Polipropileno"
* #pet "PET"
  "Politereftalato de etileno"
* #pvdc "PVDC"
  "Cloreto de polivinilideno"
* #borracha "Borracha"
  "Material de borracha/elastômero"
* #metal "Metal"
  "Material metálico geral"
* #lamina-aluminio "Lâmina de Alumínio"
  "Lâmina/folha de alumínio"

// ---

// Características de embalagem
ValueSet: PackageCharacteristicBR
Id: package-characteristic-br
Title: "Características de Embalagem - Brasil"
Description: "Características especiais de embalagens farmacêuticas no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/package-characteristic-br

CodeSystem: PackageCharacteristicBR
Id: package-characteristic-br
Title: "Características de Embalagem - Brasil"
Description: "Sistema de códigos para características de embalagens no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Características de proteção
* #protecao-luz "Proteção à Luz"
  "Embalagem com proteção contra luz"
* #protecao-umidade "Proteção à Umidade"
  "Embalagem com proteção contra umidade"
* #protecao-temperatura "Proteção à Temperatura"
  "Embalagem com proteção térmica"
* #protecao-oxidacao "Proteção à Oxidação"
  "Embalagem com proteção contra oxidação"

// Características especiais
* #inviolavel "Inviolável"
  "Embalagem com sistema de inviolabilidade"
* #crianca-resistente "Resistente a Crianças"
  "Embalagem com abertura resistente a crianças"
* #esteril "Estéril"
  "Embalagem estéril"
* #unidose "Unidose"
  "Embalagem de dose única"
* #multidose "Multidose"
  "Embalagem de múltiplas doses"
* #descartavel "Descartável"
  "Embalagem descartável"
* #reutilizavel "Reutilizável"
  "Embalagem reutilizável"

// Características regulatórias
* #controlado "Produto Controlado"
  "Embalagem para produto controlado"
* #hospitalar "Uso Hospitalar"
  "Embalagem para uso exclusivo hospitalar"
* #refrigerado "Refrigerado"
  "Produto que requer refrigeração"
* #congelado "Congelado"
  "Produto que requer congelamento"