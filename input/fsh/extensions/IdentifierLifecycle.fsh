// Extensions para regras de lifecycle de identificadores MPID/PCID conforme padrões internacionais

// Extension para regras de lifecycle de identificadores
Extension: IdentifierLifecycleRules
Id: identifier-lifecycle-rules
Title: "Regras de Lifecycle de Identificadores"
Description: "Regras e tracking para lifecycle de identificadores MPID/PCID - define quando manter vs criar novos identificadores"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Rastrear mudanças em identificadores MPID/PCID e aplicar regras de lifecycle conforme padrões internacionais ISO 11615"
* ^context[0].type = #element
* ^context[0].expression = "MedicinalProductDefinition"
* ^context[1].type = #element
* ^context[1].expression = "PackagedProductDefinition"

* extension contains
    previousMPID 0..1 MS and
    previousPCID 0..1 MS and
    changeReason 1..1 MS and
    changeDate 1..1 MS and
    changeSeverity 0..1 MS and
    impactedProducts 0..* MS

* extension[previousMPID] ^short = "MPID anterior"
* extension[previousMPID] ^definition = "MPID anterior quando houve mudança que requer novo MPID"
* extension[previousMPID].value[x] only string
* extension[previousMPID].valueString ^example.label = "Exemplo"
* extension[previousMPID].valueString ^example.valueString = "BR-ANVISA-001234"

* extension[previousPCID] ^short = "PCID anterior"
* extension[previousPCID] ^definition = "PCID anterior quando houve mudança que requer novo PCID"
* extension[previousPCID].value[x] only string
* extension[previousPCID].valueString ^example.label = "Exemplo"
* extension[previousPCID].valueString ^example.valueString = "BR-ANVISA-001234-P001"

* extension[changeReason] ^short = "Motivo da mudança"
* extension[changeReason] ^definition = "Motivo específico que causou a necessidade de novo identificador"
* extension[changeReason].value[x] only CodeableConcept
* extension[changeReason].valueCodeableConcept from IdentifierChangeReason (required)

* extension[changeDate] ^short = "Data da mudança"
* extension[changeDate] ^definition = "Data em que a mudança foi implementada e novo identificador gerado"
* extension[changeDate].value[x] only date

* extension[changeSeverity] ^short = "Severidade da mudança"
* extension[changeSeverity] ^definition = "Nível de severidade da mudança para rastreabilidade regulatória"
* extension[changeSeverity].value[x] only code
* extension[changeSeverity].valueCode from ChangeSeverityLevel (required)

* extension[impactedProducts] ^short = "Produtos impactados"
* extension[impactedProducts] ^definition = "Referências a outros produtos que foram impactados pela mudança"
* extension[impactedProducts].value[x] only Reference(MedicinalProductDefinition or PackagedProductDefinition)

// ---

// ValueSet para motivos de mudança de identificador
ValueSet: IdentifierChangeReason
Id: identifier-change-reason
Title: "Motivos de Mudança de Identificador"
Description: "Motivos padronizados para mudanças que requerem novos identificadores MPID/PCID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/identifier-change-reason

CodeSystem: IdentifierChangeReason
Id: identifier-change-reason
Title: "Motivos de Mudança de Identificador"
Description: "Sistema de códigos para motivos de mudança de identificadores MPID/PCID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Mudanças administrativas (MPID)
* #mah-transfer "Transferência de Titular"
  "Mudança do titular da autorização de marketing"
* #legal-status-change "Mudança de Status Legal"
  "Alteração do status legal de fornecimento (prescrição, OTC, controlado)"
* #indication-change "Mudança de Indicação Terapêutica"
  "Adição, remoção ou modificação significativa de indicações terapêuticas"

// Mudanças técnicas (MPID)
* #strength-change "Mudança de Concentração"
  "Alteração na concentração ou força da substância ativa"
* #form-change "Mudança de Forma Farmacêutica"
  "Alteração da forma farmacêutica do produto"
* #route-change "Mudança de Via de Administração"
  "Adição, remoção ou modificação das vias de administração"
* #substance-change "Mudança de Substância Ativa"
  "Alteração, adição ou remoção de substância ativa"

// Mudanças de embalagem (PCID)
* #package-change "Mudança de Embalagem"
  "Alteração significativa na embalagem primária ou secundária"
* #container-change "Mudança de Container"
  "Alteração do tipo ou material do container primário"
* #quantity-change "Mudança de Quantidade"
  "Alteração da quantidade de unidades por embalagem"
* #component-change "Mudança de Componente"
  "Adição, remoção ou modificação de componentes da embalagem"

// Mudanças regulatórias
* #regulatory-requirement "Exigência Regulatória"
  "Mudança requerida por autoridade regulatória"
* #safety-update "Atualização de Segurança"
  "Mudança motivada por questões de segurança"
* #quality-improvement "Melhoria de Qualidade"
  "Mudança para melhoramento da qualidade do produto"

// Mudanças comerciais
* #brand-change "Mudança de Marca"
  "Alteração da marca comercial do produto"
* #manufacturer-change "Mudança de Fabricante"
  "Alteração do fabricante responsável"

// ---

// ValueSet para níveis de severidade de mudança
ValueSet: ChangeSeverityLevel
Id: change-severity-level
Title: "Níveis de Severidade de Mudança"
Description: "Níveis de severidade para classificação de mudanças em identificadores"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/change-severity-level

CodeSystem: ChangeSeverityLevel
Id: change-severity-level
Title: "Níveis de Severidade de Mudança"
Description: "Sistema de códigos para classificação da severidade de mudanças"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #minor "Menor"
  "Mudança menor que não afeta segurança ou eficácia"
* #moderate "Moderada"
  "Mudança moderada com impacto limitado"
* #major "Maior"
  "Mudança significativa que afeta características do produto"
* #critical "Crítica"
  "Mudança crítica que afeta segurança ou eficácia do produto"

// ---

// ValueSet para status de lifecycle do identificador
ValueSet: IdentifierLifecycleStatus
Id: identifier-lifecycle-status
Title: "Status de Lifecycle do Identificador"
Description: "Status do ciclo de vida de identificadores MPID/PCID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/identifier-lifecycle-status

CodeSystem: IdentifierLifecycleStatus
Id: identifier-lifecycle-status
Title: "Status de Lifecycle do Identificador"
Description: "Sistema de códigos para status do ciclo de vida de identificadores"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #active "Ativo"
  "Identificador atualmente ativo"
* #superseded "Substituído"
  "Identificador substituído por nova versão"
* #deprecated "Depreciado"
  "Identificador depreciado mas ainda válido"
* #withdrawn "Retirado"
  "Identificador retirado e não mais válido"
* #suspended "Suspenso"
  "Identificador temporariamente suspenso"

// ---

// Extension para tracking de status de lifecycle
Extension: IdentifierLifecycleStatus
Id: identifier-lifecycle-status
Title: "Status de Lifecycle do Identificador"
Description: "Status atual do identificador no seu ciclo de vida"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Rastrear o status atual do identificador durante seu ciclo de vida"
* ^context[0].type = #element
* ^context[0].expression = "Identifier"

* value[x] only CodeableConcept
* valueCodeableConcept from IdentifierLifecycleStatus (required)
* valueCodeableConcept ^short = "Status do lifecycle"
* valueCodeableConcept ^definition = "Status atual do identificador no ciclo de vida"

// ---

// ValueSets para suporte a invariants

// ValueSet para mudanças que requerem novo MPID
ValueSet: MPIDRequiringChanges
Id: mpid-requiring-changes
Title: "Mudanças que Requerem Novo MPID"
Description: "Tipos de mudanças que requerem geração de novo MPID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* http://farmaco.maxapex.net/brig/fhir/CodeSystem/identifier-change-reason#mah-transfer
* http://farmaco.maxapex.net/brig/fhir/CodeSystem/identifier-change-reason#legal-status-change
* http://farmaco.maxapex.net/brig/fhir/CodeSystem/identifier-change-reason#indication-change
* http://farmaco.maxapex.net/brig/fhir/CodeSystem/identifier-change-reason#strength-change
* http://farmaco.maxapex.net/brig/fhir/CodeSystem/identifier-change-reason#form-change
* http://farmaco.maxapex.net/brig/fhir/CodeSystem/identifier-change-reason#route-change
* http://farmaco.maxapex.net/brig/fhir/CodeSystem/identifier-change-reason#substance-change

// ValueSet para mudanças que requerem novo PCID
ValueSet: PCIDRequiringChanges
Id: pcid-requiring-changes
Title: "Mudanças que Requerem Novo PCID"
Description: "Tipos de mudanças que requerem geração de novo PCID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* http://farmaco.maxapex.net/brig/fhir/CodeSystem/identifier-change-reason#package-change
* http://farmaco.maxapex.net/brig/fhir/CodeSystem/identifier-change-reason#container-change
* http://farmaco.maxapex.net/brig/fhir/CodeSystem/identifier-change-reason#quantity-change
* http://farmaco.maxapex.net/brig/fhir/CodeSystem/identifier-change-reason#component-change