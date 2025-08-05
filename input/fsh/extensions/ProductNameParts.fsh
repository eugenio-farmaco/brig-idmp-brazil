// Extensions para partes do nome do produto conforme padrões internacionais

// Extension para partes específicas do nome do produto
Extension: ProductNameParts
Id: product-name-parts
Title: "Partes do Nome do Produto"
Description: "Partes específicas do nome do produto que são elementos definidores para MPID conforme padrões internacionais"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Identificar e estruturar partes específicas do nome que são elementos definidores do MPID conforme ISO 11615"
* ^context[0].type = #element
* ^context[0].expression = "MedicinalProductDefinition.name"

* extension contains
    inventedNamePart 0..1 MS and
    scientificNamePart 0..1 MS and
    companyNamePart 0..1 MS and
    strengthPart 0..1 MS and
    formPart 0..1 MS and
    containerPart 0..1 MS and
    populationPart 0..1 MS

* extension[inventedNamePart] ^short = "Parte do nome fantasia"
* extension[inventedNamePart] ^definition = "Parte do nome que representa o nome fantasia/comercial inventado pela empresa"
* extension[inventedNamePart].value[x] only string
* extension[inventedNamePart].valueString ^example.label = "Exemplo"
* extension[inventedNamePart].valueString ^example.valueString = "Dipirox"

* extension[scientificNamePart] ^short = "Parte do nome científico"
* extension[scientificNamePart] ^definition = "Parte do nome que representa o nome científico/DCI/DCB da substância ativa"
* extension[scientificNamePart].value[x] only string
* extension[scientificNamePart].valueString ^example.label = "Exemplo"
* extension[scientificNamePart].valueString ^example.valueString = "Dipirona"

* extension[companyNamePart] ^short = "Parte do nome da empresa"
* extension[companyNamePart] ^definition = "Parte do nome que inclui o nome ou abreviação da empresa fabricante"
* extension[companyNamePart].value[x] only string
* extension[companyNamePart].valueString ^example.label = "Exemplo"
* extension[companyNamePart].valueString ^example.valueString = "Medley"

* extension[strengthPart] ^short = "Parte da concentração"
* extension[strengthPart] ^definition = "Parte do nome que especifica a concentração ou dosagem do produto"
* extension[strengthPart].value[x] only string
* extension[strengthPart].valueString ^example.label = "Exemplo"
* extension[strengthPart].valueString ^example.valueString = "500mg"

* extension[formPart] ^short = "Parte da forma farmacêutica"
* extension[formPart] ^definition = "Parte do nome que especifica a forma farmacêutica do produto"
* extension[formPart].value[x] only string
* extension[formPart].valueString ^example.label = "Exemplo"
* extension[formPart].valueString ^example.valueString = "Comprimido"

* extension[containerPart] ^short = "Parte do container"
* extension[containerPart] ^definition = "Parte do nome que especifica o tipo de container ou embalagem"
* extension[containerPart].value[x] only string
* extension[containerPart].valueString ^example.label = "Exemplo"
* extension[containerPart].valueString ^example.valueString = "Frasco"

* extension[populationPart] ^short = "Parte da população alvo"
* extension[populationPart] ^definition = "Parte do nome que especifica a população alvo (pediátrico, geriátrico, etc.)"
* extension[populationPart].value[x] only string
* extension[populationPart].valueString ^example.label = "Exemplo"
* extension[populationPart].valueString ^example.valueString = "Pediátrico"

// ---

// ValueSet para Denominações Comuns Brasileiras (DCB)
ValueSet: DCBBrasileiras
Id: dcb-brasileiras
Title: "Denominações Comuns Brasileiras (DCB)"
Description: "Denominações Comuns Brasileiras padronizadas pela ANVISA para substâncias ativas"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^copyright = "ANVISA - Agência Nacional de Vigilância Sanitária"
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/dcb-brasileiras

CodeSystem: DCBBrasileiras
Id: dcb-brasileiras
Title: "Denominações Comuns Brasileiras (DCB)"
Description: "Sistema de códigos para Denominações Comuns Brasileiras conforme ANVISA"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Principais DCBs por categoria terapêutica
// Analgésicos e Anti-inflamatórios
* #dipirona "Dipirona"
  "Analgésico e antitérmico"
* #paracetamol "Paracetamol"
  "Analgésico e antitérmico"
* #ibuprofeno "Ibuprofeno"
  "Anti-inflamatório não esteroidal"
* #diclofenaco "Diclofenaco"
  "Anti-inflamatório não esteroidal"
* #nimesulida "Nimesulida"
  "Anti-inflamatório não esteroidal"

// Antibióticos
* #amoxicilina "Amoxicilina"
  "Antibiótico beta-lactâmico"
* #azitromicina "Azitromicina"
  "Antibiótico macrolídeo"
* #ciprofloxacino "Ciprofloxacino"
  "Antibiótico fluoroquinolona"
* #cefalexina "Cefalexina"
  "Antibiótico cefalosporina"

// Cardiovasculares
* #losartana "Losartana"
  "Anti-hipertensivo antagonista da angiotensina II"
* #enalapril "Enalapril"
  "Inibidor da enzima conversora da angiotensina"
* #hidroclorotiazida "Hidroclorotiazida"
  "Diurético tiazídico"
* #anlodipino "Anlodipino"
  "Bloqueador dos canais de cálcio"

// Psiquiátricos/Neurológicos
* #fluoxetina "Fluoxetina"
  "Antidepressivo inibidor seletivo da recaptação de serotonina"
* #sertralina "Sertralina"
  "Antidepressivo inibidor seletivo da recaptação de serotonina"
* #risperidona "Risperidona"
  "Antipsicótico atípico"
* #clonazepam "Clonazepam"
  "Benzodiazepínico anticonvulsivante"

// Endócrinos
* #metformina "Metformina"
  "Antidiabético oral biguanida"
* #glibenclamida "Glibenclamida"
  "Antidiabético oral sulfoniluréia"
* #levotiroxina "Levotiroxina"
  "Hormônio da tireoide"

// Respiratórios
* #salbutamol "Salbutamol"
  "Broncodilatador beta-2 agonista"
* #budesonida "Budesonida"
  "Corticosteroide inalatório"
* #montelucaste "Montelucaste"
  "Antagonista dos receptores de leucotrienos"

// Gastroenterológicos
* #omeprazol "Omeprazol"
  "Inibidor da bomba de prótons"
* #ranitidina "Ranitidina"
  "Antagonista dos receptores H2"
* #domperidona "Domperidona"
  "Antiemético procinético"

// ---

// ValueSet para tipos de nome estruturado
ValueSet: StructuredNameTypes
Id: structured-name-types
Title: "Tipos de Nome Estruturado"
Description: "Tipos de elementos estruturados que podem compor um nome de produto"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/structured-name-types

CodeSystem: StructuredNameTypes
Id: structured-name-types
Title: "Tipos de Nome Estruturado"
Description: "Sistema de códigos para elementos estruturados de nomes de produtos"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #invented-name "Nome Fantasia"
  "Parte do nome comercial inventada pela empresa"
* #scientific-name "Nome Científico"
  "Denominação Comum Brasileira (DCB) ou Internacional (DCI)"
* #company-name "Nome da Empresa"
  "Nome ou abreviação do fabricante/titular"
* #strength "Concentração"
  "Especificação da dosagem ou concentração"
* #pharmaceutical-form "Forma Farmacêutica"
  "Especificação da forma farmacêutica no nome"
* #container-type "Tipo de Container"
  "Especificação do container na denominação"
* #target-population "População Alvo"
  "Especificação da população alvo (pediátrico, adulto, etc.)"
* #therapeutic-indication "Indicação Terapêutica"
  "Indicação terapêutica incluída no nome"
* #route-administration "Via de Administração"
  "Via de administração especificada no nome"

// ---

// Extension para validação estruturada de nomes
Extension: NameValidationRules
Id: name-validation-rules
Title: "Regras de Validação de Nome"
Description: "Regras específicas para validação de nomes de produtos brasileiros"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Aplicar regras de validação específicas para nomes de produtos conforme regulamentação brasileira"
* ^context[0].type = #element
* ^context[0].expression = "MedicinalProductDefinition.name"

* extension contains
    requiresInventedName 0..1 MS and
    requiresScientificName 0..1 MS and
    allowedCharacters 0..1 MS

* extension[requiresInventedName] ^short = "Requer nome fantasia"
* extension[requiresInventedName] ^definition = "Indica se o produto requer nome fantasia obrigatório"
* extension[requiresInventedName].value[x] only boolean

* extension[requiresScientificName] ^short = "Requer nome científico"
* extension[requiresScientificName] ^definition = "Indica se o produto requer DCB/DCI obrigatório"
* extension[requiresScientificName].value[x] only boolean

* extension[allowedCharacters] ^short = "Caracteres permitidos"
* extension[allowedCharacters] ^definition = "Regex para caracteres permitidos no nome"
* extension[allowedCharacters].value[x] only string