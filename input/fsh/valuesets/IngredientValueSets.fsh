// ValueSets para Ingredient-br

// Papéis de ingredientes brasileiros
ValueSet: IngredientRoleBR
Id: ingredient-role-br
Title: "Papéis de Ingredientes - Brasil"
Description: "Papéis/funções de ingredientes em medicamentos conforme padrões brasileiros"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/ingredient-role-br

CodeSystem: IngredientRoleBR
Id: ingredient-role-br
Title: "Papéis de Ingredientes - Brasil"
Description: "Sistema de códigos para papéis de ingredientes em medicamentos brasileiros"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Ingredientes ativos
* #ativo "Ingrediente Ativo"
  "Substância responsável pelo efeito terapêutico principal"
* #co-ativo "Co-ativo"
  "Substância ativa secundária que contribui para o efeito terapêutico"

// Ingredientes inativos
* #excipiente "Excipiente"
  "Substância inativa que compõe a formulação"
* #diluente "Diluente"
  "Substância utilizada para diluir o ingrediente ativo"
* #aglutinante "Aglutinante"
  "Substância que promove a coesão dos componentes"
* #desintegrante "Desintegrante"
  "Substância que facilita a desintegração da forma farmacêutica"
* #lubrificante "Lubrificante"
  "Substância que reduz o atrito durante a fabricação"
* #deslizante "Deslizante"
  "Substância que melhora o fluxo dos pós"

// Conservantes e estabilizantes
* #conservante "Conservante"
  "Substância que previne deterioração microbiana"
* #antioxidante "Antioxidante"
  "Substância que previne oxidação"
* #estabilizante "Estabilizante"
  "Substância que mantém a estabilidade da formulação"
* #tampao "Sistema Tampão"
  "Substância que mantém o pH estável"

// Modificadores de propriedades
* #edulcorante "Edulcorante"
  "Substância que confere sabor doce"
* #aromatizante "Aromatizante"
  "Substância que confere aroma ou sabor"
* #corante "Corante"
  "Substância que confere cor"
* #opacificante "Opacificante"
  "Substância que confere opacidade"

// Agentes específicos
* #emulsificante "Emulsificante"
  "Substância que promove a formação de emulsões"
* #solubilizante "Solubilizante"
  "Substância que aumenta a solubilidade"
* #isotonizante "Isotonizante"
  "Substância que ajusta a tonicidade"
* #umectante "Umectante"
  "Substância que retém umidade"

// ---

// Funções específicas de ingredientes
ValueSet: IngredientFunctionBR
Id: ingredient-function-br
Title: "Funções de Ingredientes - Brasil"
Description: "Funções específicas detalhadas de ingredientes em medicamentos"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/ingredient-function-br

CodeSystem: IngredientFunctionBR
Id: ingredient-function-br
Title: "Funções de Ingredientes - Brasil"
Description: "Sistema de códigos para funções específicas de ingredientes"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Funções farmacotécnicas específicas
* #revestimento "Revestimento"
  "Componente do revestimento de comprimidos/cápsulas"
* #nucleo "Núcleo"
  "Componente do núcleo da forma farmacêutica"
* #liberacao-controlada "Liberação Controlada"
  "Componente que modifica a liberação do fármaco"
* #gastroprotetor "Gastroprotetor"
  "Componente que protege contra o pH gástrico"
* #enterico "Entérico"
  "Componente do revestimento entérico"

// Funções de estabilidade
* #quelante "Quelante"
  "Substância que complexa íons metálicos"
* #sequestrante "Sequestrante"
  "Substância que remove impurezas"
* #crioprotetor "Crioprotetor"
  "Substância que protege contra congelamento"

// Funções de apresentação
* #identificacao "Identificação"
  "Substância para identificação visual do produto"
* #diferenciacao "Diferenciação"
  "Substância para diferenciação entre apresentações"

// ---

// Unidades de concentração brasileiras
ValueSet: ConcentrationUnitBR
Id: concentration-unit-br
Title: "Unidades de Concentração - Brasil"
Description: "Unidades utilizadas para expressar concentrações de ingredientes"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://unitsofmeasure.org
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/concentration-unit-br

CodeSystem: ConcentrationUnitBR
Id: concentration-unit-br
Title: "Unidades de Concentração - Brasil"
Description: "Sistema de códigos para unidades de concentração específicas brasileiras"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Unidades de massa
* #mg "mg"
  "Miligramas"
* #g "g"
  "Gramas"
* #mcg "mcg"
  "Microgramas"
* #kg "kg"
  "Quilogramas"

// Unidades de volume
* #ml "mL"
  "Mililitros"
* #l "L"
  "Litros"

// Unidades de concentração específicas
* #mg-ml "mg/mL"
  "Miligramas por mililitro"
* #mcg-ml "mcg/mL"
  "Microgramas por mililitro"
* #g-l "g/L"
  "Gramas por litro"
* #percent-p-p "% p/p"
  "Porcentagem peso por peso"
* #percent-p-v "% p/v"
  "Porcentagem peso por volume"
* #percent-v-v "% v/v"
  "Porcentagem volume por volume"

// Unidades internacionais
* #ui "UI"
  "Unidades Internacionais"
* #ui-ml "UI/mL"
  "Unidades Internacionais por mililitro"

// ---

// Unidades de apresentação para denominador
ValueSet: PresentationUnitBR
Id: presentation-unit-br
Title: "Unidades de Apresentação - Brasil"
Description: "Unidades utilizadas para expressar apresentações de produtos"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/presentation-unit-br

CodeSystem: PresentationUnitBR
Id: presentation-unit-br
Title: "Unidades de Apresentação - Brasil"
Description: "Sistema de códigos para unidades de apresentação de produtos farmacêuticos"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Formas sólidas unitárias
* #comprimido "comprimido"
  "Por comprimido"
* #dragea "drágea"
  "Por drágea"
* #capsula "cápsula"
  "Por cápsula"
* #capsula-dura "cápsula dura"
  "Por cápsula dura"
* #capsula-mole "cápsula mole"
  "Por cápsula mole"

// Formas especiais
* #supositorio "supositório"
  "Por supositório"
* #ovulo "óvulo"
  "Por óvulo"
* #adesivo "adesivo"
  "Por adesivo transdérmico"

// Volumes específicos
* #dose "dose"
  "Por dose"
* #aplicacao "aplicação"
  "Por aplicação"
* #ml-dose "mL por dose"
  "Mililitros por dose"

// Apresentações variáveis
* #frasco "frasco"
  "Por frasco"  
* #ampola "ampola"
  "Por ampola"
* #seringa "seringa"
  "Por seringa"
* #bisnaga "bisnaga"
  "Por bisnaga"