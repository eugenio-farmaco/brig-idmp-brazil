Profile: ClinicalUseDefinitionBR
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-br
Title: "Definição de Uso Clínico - Brasil"
Description: "Perfil brasileiro para ClinicalUseDefinition adaptado para indicações terapêuticas, contraindicações, interações medicamentosas e critérios DCE-SUS no contexto regulatório brasileiro."

* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"
* ^publisher = "BRIG Brasil - Implementação IDMP"
* ^contact.name = "BRIG Brasil Team"
* ^contact.telecom[0].system = #email
* ^contact.telecom[0].value = "contato@brig.farmaco.io"
* ^contact.telecom[1].system = #url
* ^contact.telecom[1].value = "https://farmaco.maxapex.net/brig/fhir"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^language = #pt-BR
* ^purpose = "Definir a estrutura padronizada para uso clínico de produtos medicinais no contexto brasileiro, incluindo indicações terapêuticas, contraindicações, interações medicamentosas e critérios específicos do SUS."
* ^copyright = "Copyright © 2025 BRIG Brasil. Licenciado sob MIT License."

// Identificadores obrigatórios
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identificadores do uso clínico"

// Slice para ID interno brasileiro
* identifier contains brigId 1..1 MS
* identifier[brigId].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-id-br" (exactly)
* identifier[brigId].value 1..1 MS
* identifier[brigId] ^short = "Identificador BRIG para uso clínico"
* identifier[brigId] ^definition = "Identificador único brasileiro para definição de uso clínico"

// Tipo de uso clínico - obrigatório com binding brasileiro
* type 1..1 MS
* type from http://farmaco.maxapex.net/brig/fhir/ValueSet/clinical-use-type-br (required)
* type ^short = "Tipo de uso clínico (indicação, contraindicação, interação, posologia)"
* type ^definition = "Categoria do uso clínico conforme classificação brasileira"

// Status do uso clínico - obrigatório
* status 1..1 MS
* status from http://farmaco.maxapex.net/brig/fhir/ValueSet/clinical-use-status-br (required)
* status ^short = "Status da definição de uso clínico"
* status ^definition = "Estado atual da definição (ativo, suspenso, depreciado)"

// Categoria específica brasileira
* category 0..* MS
* category from http://farmaco.maxapex.net/brig/fhir/ValueSet/clinical-use-category-br (preferred)
* category ^short = "Categoria clínica brasileira"
* category ^definition = "Classificação adicional para contexto brasileiro (DCE-SUS, RENAME, etc.)"

// Referência para produtos - obrigatório
* subject 1..* MS
* subject only Reference(MedicinalProductDefinitionBR)
* subject ^short = "Produto medicinal brasileiro referenciado"
* subject ^definition = "Referência para o produto medicinal brasileiro ao qual se aplica esta definição"

// População específica
* population 0..* MS
* population ^short = "População específica (pediatria, idoso, gestante)"
* population ^definition = "Características da população para a qual esta definição se aplica"

// Indicação terapêutica (quando type = indication)
* indication 0..1 MS
* indication ^short = "Detalhes da indicação terapêutica"
* indication ^definition = "Especificação completa da indicação terapêutica conforme contexto brasileiro"

// Doença/sintoma/procedimento com códigos brasileiros
* indication.diseaseSymptomProcedure 1..1 MS
* indication.diseaseSymptomProcedure from http://farmaco.maxapex.net/brig/fhir/ValueSet/therapeutic-indication-br (preferred)
* indication.diseaseSymptomProcedure ^short = "Condição médica (CID-10/SNOMED-CT)"
* indication.diseaseSymptomProcedure ^definition = "Doença, sintoma ou procedimento usando códigos CID-10 ou SNOMED-CT"

// Status da doença
* indication.diseaseStatus 0..1 MS
* indication.diseaseStatus ^short = "Status da condição (agudo, crônico)"
* indication.diseaseStatus ^definition = "Classificação do estágio ou status da condição médica"

// Comorbidades
* indication.comorbidity 0..* MS
* indication.comorbidity from http://farmaco.maxapex.net/brig/fhir/ValueSet/comorbidity-br (preferred)
* indication.comorbidity ^short = "Comorbidades relevantes"
* indication.comorbidity ^definition = "Condições médicas concomitantes relevantes para a indicação"

// Efeito pretendido
* indication.intendedEffect 0..1 MS
* indication.intendedEffect ^short = "Efeito terapêutico pretendido"
* indication.intendedEffect ^definition = "Resultado clínico esperado do tratamento"

// Duração do tratamento
* indication.duration[x] 0..1 MS
* indication.duration[x] ^short = "Duração recomendada do tratamento"
* indication.duration[x] ^definition = "Período de tempo recomendado para o tratamento"

// Contraindicação (quando type = contraindication)
* contraindication 0..1 MS
* contraindication ^short = "Detalhes da contraindicação"
* contraindication ^definition = "Especificação completa da contraindicação conforme contexto brasileiro"

// Doença/condição contraindicada
* contraindication.diseaseSymptomProcedure 1..1 MS
* contraindication.diseaseSymptomProcedure from http://farmaco.maxapex.net/brig/fhir/ValueSet/contraindication-condition-br (preferred)
* contraindication.diseaseSymptomProcedure ^short = "Condição que contraindica o uso"
* contraindication.diseaseSymptomProcedure ^definition = "Doença ou condição que impede o uso do medicamento"

// Comorbidades na contraindicação
* contraindication.comorbidity 0..* MS
* contraindication.comorbidity ^short = "Comorbidades que afetam a contraindicação"
* contraindication.comorbidity ^definition = "Condições médicas que influenciam a contraindicação"

// Interação medicamentosa (quando type = interaction)
* interaction 0..1 MS
* interaction ^short = "Detalhes da interação medicamentosa"
* interaction ^definition = "Especificação completa da interação medicamentosa"

// Substância/produto que interage
* interaction.interactant 1..* MS
* interaction.interactant ^short = "Substância ou produto que interage"
* interaction.interactant ^definition = "Medicamento, substância ou produto que causa interação"

// Referência para substância brasileira - usar apenas CodeableConcept para simplicidade
* interaction.interactant.item[x] only CodeableConcept
* interaction.interactant.item[x] from http://farmaco.maxapex.net/brig/fhir/ValueSet/interaction-substance-br (preferred)

// Tipo de interação
* interaction.type 0..1 MS
* interaction.type from http://farmaco.maxapex.net/brig/fhir/ValueSet/interaction-type-br (preferred)
* interaction.type ^short = "Tipo de interação (farmacocinética, farmacodinâmica)"
* interaction.type ^definition = "Classificação do mecanismo de interação"

// Efeito da interação
* interaction.effect 0..1 MS
* interaction.effect from http://farmaco.maxapex.net/brig/fhir/ValueSet/interaction-effect-br (preferred)
* interaction.effect ^short = "Efeito clínico da interação"
* interaction.effect ^definition = "Resultado clínico esperado da interação"

// Incidência da interação
* interaction.incidence 0..1 MS
* interaction.incidence ^short = "Frequência da interação"
* interaction.incidence ^definition = "Probabilidade de ocorrência da interação"

// Gestão da interação
* interaction.management 0..* MS
* interaction.management ^short = "Recomendações de manejo"
* interaction.management ^definition = "Orientações para manejo clínico da interação"

// Efeito indesejável (quando type = undesirable-effect)  
* undesirableEffect 0..1 MS
* undesirableEffect ^short = "Detalhes do efeito indesejável"
* undesirableEffect ^definition = "Especificação de efeitos adversos ou indesejáveis"

// Sintoma/efeito específico
* undesirableEffect.symptomConditionEffect 1..1 MS
* undesirableEffect.symptomConditionEffect from http://farmaco.maxapex.net/brig/fhir/ValueSet/adverse-effect-br (preferred)
* undesirableEffect.symptomConditionEffect ^short = "Efeito adverso específico"
* undesirableEffect.symptomConditionEffect ^definition = "Descrição do efeito indesejável usando códigos padronizados"

// Classificação da frequência
* undesirableEffect.classification 0..1 MS
* undesirableEffect.classification from http://farmaco.maxapex.net/brig/fhir/ValueSet/adverse-effect-frequency-br (preferred)
* undesirableEffect.classification ^short = "Classificação de frequência"
* undesirableEffect.classification ^definition = "Frequência do efeito adverso (comum, raro, muito raro)"

// Frequência específica
* undesirableEffect.frequencyOfOccurrence 0..1 MS
* undesirableEffect.frequencyOfOccurrence ^short = "Frequência de ocorrência"
* undesirableEffect.frequencyOfOccurrence ^definition = "Dados específicos sobre frequência de ocorrência"

// Invariantes brasileiras
* obeys brig-clinical-use-1
* obeys brig-clinical-use-2
* obeys brig-clinical-use-3

// Invariante 1: Pelo menos uma seção deve estar preenchida conforme o tipo
Invariant: brig-clinical-use-1
Description: "Quando tipo é 'indication', a seção indication deve estar presente"
Expression: "type.coding.where(system='http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-type-br' and code='indication').exists() implies indication.exists()"
Severity: #error

// Invariante 2: Contraindicação deve ter condição especificada
Invariant: brig-clinical-use-2  
Description: "Quando tipo é 'contraindication', a seção contraindication deve estar presente"
Expression: "type.coding.where(system='http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-type-br' and code='contraindication').exists() implies contraindication.exists()"
Severity: #error

// Invariante 3: Interação deve ter pelo menos um interagente
Invariant: brig-clinical-use-3
Description: "Quando tipo é 'interaction', pelo menos um interactant deve estar presente"
Expression: "type.coding.where(system='http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-type-br' and code='interaction').exists() implies interaction.interactant.exists()"
Severity: #error