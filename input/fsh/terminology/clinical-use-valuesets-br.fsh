// =======================================
// VALUESETS CLÍNICOS - BRASIL v0.0.2
// =======================================

ValueSet: ClinicalUseTypeBRValueSet
Id: clinical-use-type-br
Title: "Tipos de Uso Clínico - Brasil"
Description: "ValueSet dos tipos de definição de uso clínico para o contexto brasileiro."

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
* ^immutable = false
* ^compose.include[0].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-type-br"
* ^compose.include[0].concept[0].code = #indication
* ^compose.include[0].concept[0].display = "Indicação terapêutica"
* ^compose.include[0].concept[1].code = #contraindication
* ^compose.include[0].concept[1].display = "Contraindicação"
* ^compose.include[0].concept[2].code = #interaction
* ^compose.include[0].concept[2].display = "Interação medicamentosa"
* ^compose.include[0].concept[3].code = #undesirable-effect
* ^compose.include[0].concept[3].display = "Efeito indesejável"
* ^compose.include[0].concept[4].code = #warning
* ^compose.include[0].concept[4].display = "Advertência especial"
* ^compose.include[0].concept[5].code = #dosage
* ^compose.include[0].concept[5].display = "Posologia"
* ^compose.include[0].concept[6].code = #dce-sus
* ^compose.include[0].concept[6].display = "Critério DCE-SUS"
* ^compose.include[0].concept[7].code = #rename
* ^compose.include[0].concept[7].display = "Critério RENAME"

// ===================================

ValueSet: ClinicalUseStatusBRValueSet
Id: clinical-use-status-br
Title: "Status de Uso Clínico - Brasil"
Description: "ValueSet dos status das definições de uso clínico para o contexto brasileiro."

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
* ^immutable = false
* ^compose.include[0].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-status-br"
* ^compose.include[0].concept[0].code = #active
* ^compose.include[0].concept[0].display = "Ativo"
* ^compose.include[0].concept[1].code = #suspended
* ^compose.include[0].concept[1].display = "Suspenso"
* ^compose.include[0].concept[2].code = #deprecated
* ^compose.include[0].concept[2].display = "Depreciado"
* ^compose.include[0].concept[3].code = #under-review
* ^compose.include[0].concept[3].display = "Em revisão"
* ^compose.include[0].concept[4].code = #pending-approval
* ^compose.include[0].concept[4].display = "Pendente aprovação"
* ^compose.include[0].concept[5].code = #rejected
* ^compose.include[0].concept[5].display = "Rejeitado"

// ===================================

ValueSet: TherapeuticIndicationBRValueSet
Id: therapeutic-indication-br
Title: "Indicações Terapêuticas - Brasil"
Description: "ValueSet de indicações terapêuticas baseado em CID-10 e SNOMED-CT para o contexto brasileiro."

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
* ^immutable = false

// Incluir códigos CID-10 principais
* ^compose.include[0].system = "http://hl7.org/fhir/sid/icd-10"
* ^compose.include[0].concept[0].code = #R50.9
* ^compose.include[0].concept[0].display = "Febre não especificada"
* ^compose.include[0].concept[1].code = #R52.9
* ^compose.include[0].concept[1].display = "Dor não especificada"
* ^compose.include[0].concept[2].code = #G43.9
* ^compose.include[0].concept[2].display = "Enxaqueca não especificada"
* ^compose.include[0].concept[3].code = #M25.50
* ^compose.include[0].concept[3].display = "Dor articular"
* ^compose.include[0].concept[4].code = #K08.89
* ^compose.include[0].concept[4].display = "Dor odontológica"
* ^compose.include[0].concept[5].code = #N94.6
* ^compose.include[0].concept[5].display = "Dismenorreia"
* ^compose.include[0].concept[6].code = #I10
* ^compose.include[0].concept[6].display = "Hipertensão essencial"
* ^compose.include[0].concept[7].code = #E78.5
* ^compose.include[0].concept[7].display = "Hiperlipidemia"
* ^compose.include[0].concept[8].code = #E11.9
* ^compose.include[0].concept[8].display = "Diabetes mellitus tipo 2"
* ^compose.include[0].concept[9].code = #J06.9
* ^compose.include[0].concept[9].display = "Infecção aguda das vias aéreas superiores"

// Incluir conceitos SNOMED-CT relevantes  
* ^compose.include[1].system = "http://snomed.info/sct"
* ^compose.include[1].concept[0].code = #386661006
* ^compose.include[1].concept[0].display = "Fever (finding)"
* ^compose.include[1].concept[1].code = #22253000
* ^compose.include[1].concept[1].display = "Pain (finding)"
* ^compose.include[1].concept[2].code = #37796009
* ^compose.include[1].concept[2].display = "Migraine (disorder)"
* ^compose.include[1].concept[3].code = #57676002
* ^compose.include[1].concept[3].display = "Arthralgia (finding)"
* ^compose.include[1].concept[4].code = #27355003
* ^compose.include[1].concept[4].display = "Toothache (finding)"

// ===================================

ValueSet: ContraindicationConditionBRValueSet
Id: contraindication-condition-br
Title: "Condições de Contraindicação - Brasil"
Description: "ValueSet de condições médicas que constituem contraindicações no contexto brasileiro."

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
* ^immutable = false

// Hipersensibilidade e alergias
* ^compose.include[0].system = "http://snomed.info/sct"
* ^compose.include[0].concept[0].code = #418038007
* ^compose.include[0].concept[0].display = "Propensity to adverse reactions to substance (finding)"
* ^compose.include[0].concept[1].code = #419511003
* ^compose.include[0].concept[1].display = "Propensity to adverse reactions to drug (finding)"
* ^compose.include[0].concept[2].code = #282100009
* ^compose.include[0].concept[2].display = "Adverse reaction caused by substance (disorder)"

// Condições específicas CID-10
* ^compose.include[1].system = "http://hl7.org/fhir/sid/icd-10"
* ^compose.include[1].concept[0].code = #K25.9
* ^compose.include[1].concept[0].display = "Úlcera gástrica não especificada"
* ^compose.include[1].concept[1].code = #K26.9
* ^compose.include[1].concept[1].display = "Úlcera duodenal não especificada"
* ^compose.include[1].concept[2].code = #N18.6
* ^compose.include[1].concept[2].display = "Doença renal crônica estágio terminal"
* ^compose.include[1].concept[3].code = #K72.90
* ^compose.include[1].concept[3].display = "Insuficiência hepática"
* ^compose.include[1].concept[4].code = #I50.9
* ^compose.include[1].concept[4].display = "Insuficiência cardíaca"
* ^compose.include[1].concept[5].code = #O20.9
* ^compose.include[1].concept[5].display = "Hemorragia no início da gravidez"
* ^compose.include[1].concept[6].code = #Z87.891
* ^compose.include[1].concept[6].display = "História pessoal de alergia a medicamento"

// ===================================

ValueSet: ClinicalUseCategoryBRValueSet
Id: clinical-use-category-br
Title: "Categorias de Uso Clínico - Brasil"
Description: "ValueSet de categorias específicas brasileiras para uso clínico incluindo programas governamentais."

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
* ^immutable = false

// Criar CodeSystem interno para categorias brasileiras
* ^compose.include[0].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-category-br"

// ===================================

CodeSystem: ClinicalUseCategoryBR
Id: clinical-use-category-br
Title: "Categorias de Uso Clínico - Brasil"
Description: "Categorias específicas brasileiras para classificação de uso clínico."

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
* ^count = 12

// Componente Especializado
* #ceaf "Componente Especializado da Assistência Farmacêutica"
  * ^definition = "Medicamento incluído no CEAF para doenças raras e de alto custo"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "CEAF"

// Componente Básico
* #cbaf "Componente Básico da Assistência Farmacêutica"  
  * ^definition = "Medicamento do componente básico da assistência farmacêutica"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "CBAF"

// RENAME
* #rename "Relação Nacional de Medicamentos Essenciais"
  * ^definition = "Medicamento incluído na RENAME"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "RENAME"

// Uso pediátrico
* #pediatric "Uso pediátrico"
  * ^definition = "Indicação específica para população pediátrica"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Pediátrico"

// Uso geriátrico
* #geriatric "Uso geriátrico"
  * ^definition = "Indicação específica para população geriátrica"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Geriátrico"

// Gestação
* #pregnancy "Gestação"
  * ^definition = "Considerações especiais para gestantes"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Gestação"

// Lactação
* #lactation "Lactação"
  * ^definition = "Considerações especiais para lactantes"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Lactação"

// Uso hospitalar
* #hospital "Uso hospitalar"
  * ^definition = "Medicamento de uso exclusivamente hospitalar"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Hospitalar"

// Controle especial
* #controlled "Controle especial"
  * ^definition = "Medicamento sujeito a controle especial"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Controle especial"

// Biológico
* #biological "Medicamento biológico"
  * ^definition = "Produto biológico com considerações especiais"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Biológico"

// Fitoterápico
* #herbal "Medicamento fitoterápico"
  * ^definition = "Produto fitoterápico registrado"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Fitoterápico"

// OTC
* #otc "Medicamento isento de prescrição"
  * ^definition = "Medicamento de venda livre (OTC)"
  * ^designation[0].language = #pt-BR
  * ^designation[0].value = "Isento de prescrição"

// ===================================

ValueSet: InteractionSubstanceBRValueSet
Id: interaction-substance-br
Title: "Substâncias para Interação - Brasil"
Description: "ValueSet de substâncias comuns que causam interações medicamentosas no contexto brasileiro."

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
* ^immutable = false

// Substâncias principais que causam interação
* ^compose.include[0].system = "http://snomed.info/sct"
* ^compose.include[0].concept[0].code = #419442005
* ^compose.include[0].concept[0].display = "Ethyl alcohol (substance)"
* ^compose.include[0].concept[1].code = #387517004
* ^compose.include[0].concept[1].display = "Paracetamol (substance)"
* ^compose.include[0].concept[2].code = #387207008
* ^compose.include[0].concept[2].display = "Dipyrone (substance)"
* ^compose.include[0].concept[3].code = #387458008
* ^compose.include[0].concept[3].display = "Aspirin (substance)"
* ^compose.include[0].concept[4].code = #387467008
* ^compose.include[0].concept[4].display = "Caffeine (substance)"

// ===================================

ValueSet: InteractionTypeBRValueSet  
Id: interaction-type-br
Title: "Tipos de Interação - Brasil"
Description: "ValueSet dos tipos de interação medicamentosa para o contexto brasileiro."

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
* ^immutable = false

// Tipos de interação
* ^compose.include[0].system = "http://snomed.info/sct"
* ^compose.include[0].concept[0].code = #182817000
* ^compose.include[0].concept[0].display = "Drug interaction with ethanol (disorder)"
* ^compose.include[0].concept[1].code = #432102000
* ^compose.include[0].concept[1].display = "Administration of substance (procedure)"

// ===================================

ValueSet: InteractionEffectBRValueSet
Id: interaction-effect-br
Title: "Efeitos de Interação - Brasil"
Description: "ValueSet dos efeitos clínicos de interações medicamentosas no contexto brasileiro."

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
* ^immutable = false

// Efeitos de interação
* ^compose.include[0].system = "http://snomed.info/sct"
* ^compose.include[0].concept[0].code = #197354008
* ^compose.include[0].concept[0].display = "Toxic effect of paracetamol (disorder)"
* ^compose.include[0].concept[1].code = #62014003
* ^compose.include[0].concept[1].display = "Adverse reaction caused by drug (disorder)"

// ===================================

ValueSet: AdverseEffectBRValueSet
Id: adverse-effect-br
Title: "Efeitos Adversos - Brasil"
Description: "ValueSet de efeitos adversos comuns no contexto brasileiro."

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
* ^immutable = false

// Efeitos adversos comuns
* ^compose.include[0].system = "http://snomed.info/sct"
* ^compose.include[0].concept[0].code = #62014003
* ^compose.include[0].concept[0].display = "Adverse reaction caused by drug (disorder)"
* ^compose.include[0].concept[1].code = #422587007
* ^compose.include[0].concept[1].display = "Nausea (finding)"
* ^compose.include[0].concept[2].code = #422400008
* ^compose.include[0].concept[2].display = "Vomiting (disorder)"
* ^compose.include[0].concept[3].code = #267036007
* ^compose.include[0].concept[3].display = "Dyspepsia (disorder)"

// ===================================

ValueSet: AdverseEffectFrequencyBRValueSet
Id: adverse-effect-frequency-br  
Title: "Frequência de Efeitos Adversos - Brasil"
Description: "ValueSet de classificação de frequência de efeitos adversos conforme padrão brasileiro."

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
* ^immutable = false

// Classificação de frequência
* ^compose.include[0].system = "http://snomed.info/sct"
* ^compose.include[0].concept[0].code = #255212004
* ^compose.include[0].concept[0].display = "Frequent (qualifier value)"
* ^compose.include[0].concept[1].code = #84638005
* ^compose.include[0].concept[1].display = "Occasional (qualifier value)"
* ^compose.include[0].concept[2].code = #103356009
* ^compose.include[0].concept[2].display = "Rare (qualifier value)"

// ===================================

ValueSet: ComorbidityBRValueSet
Id: comorbidity-br
Title: "Comorbidades - Brasil"
Description: "ValueSet de comorbidades relevantes para indicações e contraindicações no contexto brasileiro."

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
* ^immutable = false

// Comorbidades principais no Brasil
* ^compose.include[0].system = "http://hl7.org/fhir/sid/icd-10"
* ^compose.include[0].concept[0].code = #I10
* ^compose.include[0].concept[0].display = "Hipertensão essencial"
* ^compose.include[0].concept[1].code = #E11.9
* ^compose.include[0].concept[1].display = "Diabetes mellitus tipo 2"
* ^compose.include[0].concept[2].code = #N18.6
* ^compose.include[0].concept[2].display = "Doença renal crônica estágio terminal"
* ^compose.include[0].concept[3].code = #K72.90
* ^compose.include[0].concept[3].display = "Insuficiência hepática"
* ^compose.include[0].concept[4].code = #I50.9
* ^compose.include[0].concept[4].display = "Insuficiência cardíaca"