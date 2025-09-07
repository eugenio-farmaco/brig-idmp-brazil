// ===================================
// CLINICAL USE TYPE - BRASIL v0.0.2
// ===================================

CodeSystem: ClinicalUseIdBR
Id: clinical-use-id-br
Title: "Identificadores de Uso Clínico - Brasil"
Description: "Sistema de identificadores únicos para definições de uso clínico no contexto brasileiro."

* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"
* ^publisher = "BRIG Brasil - Implementação IDMP"
* ^contact.name = "BRIG Brasil Team"
* ^contact.telecom[0].system = #url
* ^contact.telecom[0].value = "https://farmaco.maxapex.net/brig/fhir"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^language = #pt-BR
* ^caseSensitive = true
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete

// ===================================

CodeSystem: ClinicalUseTypeBR
Id: clinical-use-type-br
Title: "Tipos de Uso Clínico - Brasil"
Description: "Tipos de definição de uso clínico adaptados para o contexto brasileiro incluindo indicações terapêuticas, contraindicações, interações medicamentosas e critérios DCE-SUS."

* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"
* ^publisher = "BRIG Brasil - Implementação IDMP"
* ^contact.name = "BRIG Brasil Team"
* ^contact.telecom[0].system = #url
* ^contact.telecom[0].value = "https://farmaco.maxapex.net/brig/fhir"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^language = #pt-BR
* ^caseSensitive = true
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete
* ^count = 8
* ^property[0].code = #status
* ^property[0].description = "Status do conceito"
* ^property[0].type = #code
* ^property[1].code = #priority
* ^property[1].description = "Prioridade clínica"
* ^property[1].type = #string

// Indicação terapêutica
* #indication "Indicação terapêutica"
  * ^definition = "Condição médica ou situação clínica para a qual o medicamento é indicado"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Indicação terapêutica"
  * ^designation[1].language = #en
  * ^designation[1].value = "Therapeutic indication"
  * ^property[0].code = #status
  * ^property[0].valueCode = #active
  * ^property[1].code = #priority
  * ^property[1].valueString = "crítica"

// Contraindicação
* #contraindication "Contraindicação"
  * ^definition = "Condição ou situação que desaconselha ou proíbe o uso do medicamento"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Contraindicação"
  * ^designation[1].language = #en
  * ^designation[1].value = "Contraindication"
  * ^property[0].code = #status
  * ^property[0].valueCode = #active
  * ^property[1].code = #priority
  * ^property[1].valueString = "crítica"

// Interação medicamentosa
* #interaction "Interação medicamentosa"
  * ^definition = "Interação entre medicamentos, alimentos ou outros produtos que pode alterar eficácia ou segurança"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Interação medicamentosa"
  * ^designation[1].language = #en
  * ^designation[1].value = "Drug interaction"
  * ^property[0].code = #status
  * ^property[0].valueCode = #active
  * ^property[1].code = #priority
  * ^property[1].valueString = "alta"

// Efeito indesejável
* #undesirable-effect "Efeito indesejável"
  * ^definition = "Reação adversa ou efeito colateral associado ao uso do medicamento"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Efeito indesejável"
  * ^designation[1].language = #en
  * ^designation[1].value = "Undesirable effect"
  * ^property[0].code = #status
  * ^property[0].valueCode = #active
  * ^property[1].code = #priority
  * ^property[1].valueString = "alta"

// Advertência especial
* #warning "Advertência especial"
  * ^definition = "Precaução ou advertência especial para uso seguro do medicamento"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Advertência especial"
  * ^designation[1].language = #en
  * ^designation[1].value = "Special warning"
  * ^property[0].code = #status
  * ^property[0].valueCode = #active
  * ^property[1].code = #priority
  * ^property[1].valueString = "alta"

// Posologia - específico brasileiro
* #dosage "Posologia"
  * ^definition = "Esquema posológico recomendado incluindo dose, frequência e duração"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Posologia"
  * ^designation[1].language = #en
  * ^designation[1].value = "Dosage regimen"
  * ^property[0].code = #status
  * ^property[0].valueCode = #active
  * ^property[1].code = #priority
  * ^property[1].valueString = "média"

// DCE-SUS - específico brasileiro
* #dce-sus "Critério DCE-SUS"
  * ^definition = "Critério de elegibilidade para Componente Especializado da Assistência Farmacêutica"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Critério DCE-SUS"
  * ^designation[1].language = #en
  * ^designation[1].value = "DCE-SUS criteria"
  * ^property[0].code = #status
  * ^property[0].valueCode = #active
  * ^property[1].code = #priority
  * ^property[1].valueString = "crítica"

// RENAME - específico brasileiro
* #rename "Critério RENAME"
  * ^definition = "Critério de inclusão na Relação Nacional de Medicamentos Essenciais"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Critério RENAME"
  * ^designation[1].language = #en
  * ^designation[1].value = "RENAME criteria"
  * ^property[0].code = #status
  * ^property[0].valueCode = #active
  * ^property[1].code = #priority
  * ^property[1].valueString = "média"

// ===================================

CodeSystem: ClinicalUseStatusBR
Id: clinical-use-status-br
Title: "Status de Uso Clínico - Brasil"
Description: "Status das definições de uso clínico adaptados para o contexto regulatório brasileiro."

* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"
* ^publisher = "BRIG Brasil - Implementação IDMP"
* ^contact.name = "BRIG Brasil Team"
* ^contact.telecom[0].system = #url
* ^contact.telecom[0].value = "https://farmaco.maxapex.net/brig/fhir"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^language = #pt-BR
* ^caseSensitive = true
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete
* ^count = 6
* ^property[0].code = #regulatory-impact
* ^property[0].description = "Impacto regulatório"
* ^property[0].type = #string

// Ativo
* #active "Ativo"
  * ^definition = "Definição de uso clínico ativa e aplicável"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Ativo"
  * ^designation[1].language = #en
  * ^designation[1].value = "Active"
  * ^property[0].code = #regulatory-impact
  * ^property[0].valueString = "total"

// Suspenso
* #suspended "Suspenso"
  * ^definition = "Definição temporariamente suspensa por decisão regulatória ou técnica"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Suspenso"
  * ^designation[1].language = #en
  * ^designation[1].value = "Suspended"
  * ^property[0].code = #regulatory-impact
  * ^property[0].valueString = "parcial"

// Depreciado
* #deprecated "Depreciado"
  * ^definition = "Definição depreciada mantida por compatibilidade histórica"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Depreciado"
  * ^designation[1].language = #en
  * ^designation[1].value = "Deprecated"
  * ^property[0].code = #regulatory-impact
  * ^property[0].valueString = "mínimo"

// Em revisão
* #under-review "Em revisão"
  * ^definition = "Definição sob revisão técnica ou regulatória"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Em revisão"
  * ^designation[1].language = #en
  * ^designation[1].value = "Under review"
  * ^property[0].code = #regulatory-impact
  * ^property[0].valueString = "parcial"

// Pendente aprovação
* #pending-approval "Pendente aprovação"
  * ^definition = "Definição pendente de aprovação regulatória"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Pendente aprovação"
  * ^designation[1].language = #en
  * ^designation[1].value = "Pending approval"
  * ^property[0].code = #regulatory-impact
  * ^property[0].valueString = "nenhum"

// Rejeitado
* #rejected "Rejeitado"
  * ^definition = "Definição rejeitada por não conformidade técnica ou regulatória"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Rejeitado"
  * ^designation[1].language = #en
  * ^designation[1].value = "Rejected"
  * ^property[0].code = #regulatory-impact
  * ^property[0].valueString = "nenhum"