Profile: IngredientBR
Parent: Ingredient
Id: Ingredient-br
Title: "Ingrediente - Brasil"
Description: "Profile brasileiro para Ingredient - representa o USO de uma substância em um produto medicinal específico, incluindo papel e concentração"

* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^contact.name = "Eugênio Neves"
* ^contact.telecom[0].system = #email
* ^contact.telecom[0].value = "eugenio@farmaco.io"
* ^contact.telecom[1].system = #url
* ^contact.telecom[1].value = "https://farmaco.maxapex.net/brig/fhir"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Definir a estrutura padronizada para ingredientes utilizados em produtos medicinais brasileiros, incluindo especificidades da ANVISA para papéis, concentrações e conformidade regulatória"
* ^copyright = "Copyright © 2025 Farmaco.io. Este trabalho está licenciado sob a MIT License."

// Status - obrigatório
* status 1..1 MS
* status ^short = "Status do ingrediente"
* status ^definition = "Status atual do ingrediente no contexto do produto medicinal"

// Produto ao qual pertence - obrigatório
* for 1..* MS
* for only Reference(MedicinalProductDefinitionBR)
* for ^short = "Produto medicinal que contém o ingrediente"
* for ^definition = "Referência ao produto medicinal brasileiro que contém este ingrediente"

// Papel do ingrediente - obrigatório
* role 1..1 MS
* role from http://farmaco.maxapex.net/brig/fhir/ValueSet/ingredient-role-br (required)
* role ^short = "Papel do ingrediente"
* role ^definition = "Função do ingrediente no produto medicinal (ativo, excipiente, conservante, etc.)"

// Função específica - opcional
* function 0..* MS
* function from http://farmaco.maxapex.net/brig/fhir/ValueSet/ingredient-function-br (preferred)
* function ^short = "Função específica"
* function ^definition = "Função detalhada do ingrediente (antioxidante, estabilizante, etc.)"

// Substância utilizada - obrigatório
* substance 1..1 MS
* substance ^short = "Substância do ingrediente"
* substance ^definition = "Identificação da substância química utilizada como ingrediente"

// Código da substância - obrigatório
* substance.code 1..1 MS
* substance.code only CodeableReference(SubstanceDefinitionBR)
* substance.code ^short = "Código/referência da substância"
* substance.code ^definition = "Código ou referência à SubstanceDefinition-br utilizada"

// Concentração/força - obrigatório para ingredientes ativos
* substance.strength 0..* MS
* substance.strength ^short = "Concentração do ingrediente"
* substance.strength ^definition = "Concentração ou dosagem do ingrediente no produto medicinal"

// Slicing para diferentes tipos de concentração
* substance.strength ^slicing.discriminator.type = #value
* substance.strength ^slicing.discriminator.path = "presentationRatio.exists() or concentrationRatio.exists() or referenceStrength.exists()"
* substance.strength ^slicing.rules = #open
* substance.strength ^slicing.description = "Diferentes representações de concentração"

// Concentração por apresentação (ex: mg por comprimido)
* substance.strength contains apresentacao 0..1 MS
* substance.strength[apresentacao].presentationRatio 1..1 MS
* substance.strength[apresentacao].presentationRatio ^short = "Concentração por unidade de apresentação"
* substance.strength[apresentacao].presentationRatio ^definition = "Quantidade do ingrediente por unidade de apresentação do produto"

// Unidades brasileiras para numerador
* substance.strength[apresentacao].presentationRatio.numerator from http://farmaco.maxapex.net/brig/fhir/ValueSet/concentration-unit-br (preferred)
* substance.strength[apresentacao].presentationRatio.numerator ^short = "Quantidade do ingrediente"

// Unidades brasileiras para denominador
* substance.strength[apresentacao].presentationRatio.denominator from http://farmaco.maxapex.net/brig/fhir/ValueSet/presentation-unit-br (preferred)
* substance.strength[apresentacao].presentationRatio.denominator ^short = "Unidade de apresentação"

// Concentração por concentração (ex: mg/mL)
* substance.strength contains concentracao 0..1 MS
* substance.strength[concentracao].concentrationRatio 1..1 MS
* substance.strength[concentracao].concentrationRatio ^short = "Concentração por volume/peso"
* substance.strength[concentracao].concentrationRatio ^definition = "Concentração do ingrediente por unidade de volume ou peso"

// Unidades brasileiras para concentração
* substance.strength[concentracao].concentrationRatio.numerator from http://farmaco.maxapex.net/brig/fhir/ValueSet/concentration-unit-br (preferred)
* substance.strength[concentracao].concentrationRatio.denominator from http://farmaco.maxapex.net/brig/fhir/ValueSet/concentration-unit-br (preferred)

// Concentração de referência - para comparações padronizadas
* substance.strength contains referencia 0..1 MS
* substance.strength[referencia].referenceStrength 1..1 MS
* substance.strength[referencia].referenceStrength ^short = "Concentração de referência"
* substance.strength[referencia].referenceStrength ^definition = "Concentração padronizada para comparação (ex: equivalência de sal vs base)"

// Substância de referência
* substance.strength[referencia].referenceStrength.substance 1..1 MS
* substance.strength[referencia].referenceStrength.substance only CodeableReference(SubstanceDefinitionBR)
* substance.strength[referencia].referenceStrength.substance ^short = "Substância de referência"

// Dosagem de referência
* substance.strength[referencia].referenceStrength.strengthRatio 1..1 MS
* substance.strength[referencia].referenceStrength.strengthRatio ^short = "Dosagem de referência"

// Fabricante do ingrediente - opcional
* manufacturer 0..* MS
* manufacturer ^short = "Fabricante do ingrediente"
* manufacturer ^definition = "Organizações responsáveis pela fabricação ou fornecimento do ingrediente"

// Organização fabricante deve ser brasileira quando aplicável
* manufacturer.manufacturer only Reference(OrganizationANVISASimple)
* manufacturer.manufacturer ^short = "Organização fabricante"

// Indicador de alérgeno - opcional mas importante
* allergenicIndicator 0..1 MS
* allergenicIndicator ^short = "Indicador de alérgeno"
* allergenicIndicator ^definition = "Indica se o ingrediente é um alérgeno conhecido"

// Invariantes específicas para Brasil
* obeys ing-br-001 and ing-br-002 and ing-br-003

Invariant: ing-br-001
Description: "Ingredientes ativos devem ter pelo menos uma concentração especificada"
Expression: "role.coding.where(system = 'http://farmaco.maxapex.net/brig/fhir/CodeSystem/ingredient-role-br' and code = 'ativo').exists() implies substance.strength.exists()"
Severity: #error

Invariant: ing-br-002
Description: "Substância deve ser compatível com o papel do ingrediente"
Expression: "true" // Implementação específica será adicionada conforme necessário
Severity: #warning

Invariant: ing-br-003
Description: "Produto medicinal de referência deve ser brasileiro válido"
Expression: "for.all(resolve().conformsTo('http://farmaco.maxapex.net/brig/fhir/StructureDefinition/MedicinalProductDefinition-br'))"
Severity: #error