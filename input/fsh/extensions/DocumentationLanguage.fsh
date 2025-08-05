// Extension para estabelecer português brasileiro como idioma padrão de documentação

// Extension para idioma de documentação
Extension: DocumentationLanguage
Id: documentation-language
Title: "Idioma de Documentação"
Description: "Define o idioma padrão para toda documentação BRIG - sempre português brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = false
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves - BRIG Brasil"
* ^contact.name = "Eugênio Neves"
* ^contact.telecom[0].system = #email
* ^contact.telecom[0].value = "eugenio@farmaco.io"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Estabelecer português brasileiro como idioma obrigatório para toda documentação BRIG, garantindo consistência nacional"
* ^context[0].type = #element
* ^context[0].expression = "StructureDefinition"
* ^context[1].type = #element
* ^context[1].expression = "ValueSet" 
* ^context[2].type = #element
* ^context[2].expression = "CodeSystem"

* value[x] only code
* valueCode = #pt-BR (exactly)
* valueCode ^short = "Código do idioma - sempre pt-BR"
* valueCode ^definition = "Código ISO 639-1 para português brasileiro - valor fixo para todos os recursos BRIG"
* valueCode ^comment = "Este valor é fixo em 'pt-BR' para garantir que toda documentação BRIG seja em português brasileiro"

// ---

// Extension para padrões de terminologia brasileira
Extension: BrazilianTerminologyStandards
Id: brazilian-terminology-standards
Title: "Padrões de Terminologia Brasileira"
Description: "Define padrões específicos de terminologia para contexto farmacêutico brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = false
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves - BRIG Brasil"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Padronizar terminologia técnica farmacêutica para contexto brasileiro"
* ^context[0].type = #element
* ^context[0].expression = "StructureDefinition"

* extension contains
    preferredTerminology 0..* MS and
    contextualMeaning 0..1 MS and
    anvisaAlignment 0..1 MS

* extension[preferredTerminology] ^short = "Terminologia preferida"
* extension[preferredTerminology] ^definition = "Terminologia técnica preferida no contexto brasileiro"
* extension[preferredTerminology].value[x] only CodeableConcept
* extension[preferredTerminology].valueCodeableConcept from BrazilianPharmaceuticalTerminology (preferred)

* extension[contextualMeaning] ^short = "Significado contextual"
* extension[contextualMeaning] ^definition = "Explicação adicional do termo no contexto regulatório brasileiro"
* extension[contextualMeaning].value[x] only string

* extension[anvisaAlignment] ^short = "Alinhamento ANVISA"
* extension[anvisaAlignment] ^definition = "Indica se o termo está alinhado com terminologia oficial ANVISA"
* extension[anvisaAlignment].value[x] only boolean

// ---

// ValueSet para terminologia farmacêutica brasileira
ValueSet: BrazilianPharmaceuticalTerminology
Id: brazilian-pharmaceutical-terminology
Title: "Terminologia Farmacêutica Brasileira"
Description: "Terminologia padronizada para uso farmacêutico no contexto brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = false
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves - BRIG Brasil"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/brazilian-pharmaceutical-terminology

CodeSystem: BrazilianPharmaceuticalTerminology
Id: brazilian-pharmaceutical-terminology
Title: "Terminologia Farmacêutica Brasileira"
Description: "Sistema de códigos para terminologia farmacêutica brasileira padronizada"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = false
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves - BRIG Brasil"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Terminologia técnica preferida em português brasileiro
* #marketing-authorization-holder "Detentor do Registro"
  "Empresa responsável pelo registro do medicamento junto à ANVISA"
* #pharmaceutical-form "Forma Farmacêutica"
  "Forma física final do medicamento (comprimido, cápsula, solução, etc.)"
* #legal-status "Status Legal de Dispensação"
  "Classificação legal para dispensação (prescrição médica, venda livre, controlado)"
* #package "Embalagem"
  "Sistema de acondicionamento do produto farmacêutico"
* #container "Recipiente"
  "Recipiente primário que contém diretamente o medicamento"
* #strength "Concentração"
  "Quantidade de substância ativa por unidade de dosagem"
* #dosage "Dosagem"
  "Quantidade específica de medicamento a ser administrada"
* #active-substance "Substância Ativa"
  "Componente farmacologicamente ativo do medicamento"
* #excipient "Excipiente"
  "Componente inativo do medicamento"
* #route-administration "Via de Administração"
  "Método pelo qual o medicamento é introduzido no organismo"
* #therapeutic-indication "Indicação Terapêutica"
  "Condição médica para a qual o medicamento é indicado"
* #contraindication "Contraindicação"
  "Situação em que o medicamento não deve ser usado"
* #adverse-reaction "Reação Adversa"
  "Efeito indesejado relacionado ao uso do medicamento"
* #presentation-unit "Unidade de Apresentação"
  "Unidade individual do medicamento (comprimido, cápsula, ampola, etc.)"
* #commercial-package "Embalagem Comercial"
  "Embalagem final para comercialização do produto"
* #primary-package "Embalagem Primária"
  "Embalagem em contato direto com o medicamento"
* #secondary-package "Embalagem Secundária"
  "Embalagem que contém a embalagem primária"
* #batch-lot "Lote"
  "Quantidade de produto fabricada em condições uniformes"
* #expiry-date "Data de Validade"
  "Data limite para uso seguro do medicamento"
* #storage-conditions "Condições de Armazenamento"
  "Requisitos específicos para conservação do medicamento"