// Extensions para elementos definidores de MPID conforme ISO 11615

// Extension para indicações terapêuticas que definem MPID
Extension: TherapeuticIndicationsDefining
Id: therapeutic-indications-defining
Title: "Indicações Terapêuticas Definidoras"
Description: "Indicações terapêuticas que são elementos definidores do MPID - mudanças requerem novo MPID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Identificar indicações terapêuticas que, quando alteradas, requerem geração de novo MPID conforme ISO 11615"
* ^context[0].type = #element
* ^context[0].expression = "MedicinalProductDefinition"

* value[x] only CodeableConcept
* valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/therapeutic-indications-br (preferred)
* valueCodeableConcept ^short = "Indicação terapêutica definidora"
* valueCodeableConcept ^definition = "Indicação terapêutica específica que é elemento definidor do MPID"

// ---

// Extension para status legal definidor de MPID
Extension: LegalStatusDefining
Id: legal-status-defining
Title: "Status Legal Definidor"
Description: "Status legal que é elemento definidor do MPID - mudanças requerem novo MPID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Identificar status legal que, quando alterado, requer geração de novo MPID conforme ISO 11615"
* ^context[0].type = #element
* ^context[0].expression = "MedicinalProductDefinition"

* value[x] only CodeableConcept
* valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/legal-status-supply-br (required)
* valueCodeableConcept ^short = "Status legal definidor" 
* valueCodeableConcept ^definition = "Status legal específico que é elemento definidor do MPID"

// ---

// Extension para dispositivos associados
Extension: AssociatedDevices
Id: associated-devices
Title: "Dispositivos Associados"
Description: "Dispositivos associados ao produto medicinal que são elementos definidores do MPID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Identificar dispositivos associados que, quando alterados, podem requer geração de novo MPID conforme ISO 11615"
* ^context[0].type = #element
* ^context[0].expression = "MedicinalProductDefinition"

* value[x] only Reference(Device)
* valueReference ^short = "Dispositivo associado"
* valueReference ^definition = "Referência ao dispositivo médico associado ao produto medicinal"

// ---

// ValueSet para indicações terapêuticas brasileiras
ValueSet: TherapeuticIndicationsBR
Id: therapeutic-indications-br
Title: "Indicações Terapêuticas - Brasil"
Description: "Indicações terapêuticas padronizadas para produtos medicinais brasileiros"
* ^version = "0.0.1" 
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/therapeutic-indications-br

CodeSystem: TherapeuticIndicationsBR
Id: therapeutic-indications-br
Title: "Indicações Terapêuticas - Brasil"
Description: "Sistema de códigos para indicações terapêuticas de produtos medicinais brasileiros"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Indicações por sistema/especialidade
* #analgesic "Analgésico"
  "Tratamento da dor"
* #antipyretic "Antitérmico"
  "Redução da febre"
* #anti-inflammatory "Anti-inflamatório"
  "Tratamento de processos inflamatórios"
* #sedative "Sedativo"
  "Sedação e tranquilização"
* #anxiolytic "Ansiolítico"
  "Tratamento da ansiedade"
* #antibiotic "Antibiótico"
  "Tratamento de infecções bacterianas"
* #antiviral "Antiviral"
  "Tratamento de infecções virais"
* #antifungal "Antifúngico"
  "Tratamento de infecções fúngicas"
* #antihistamine "Anti-histamínico"
  "Tratamento de reações alérgicas"
* #bronchodilator "Broncodilatador"
  "Tratamento de broncoespasmo"
* #antihypertensive "Anti-hipertensivo"
  "Tratamento da hipertensão arterial"
* #diuretic "Diurético"
  "Aumento da diurese"
* #cardiotonic "Cardiotônico"
  "Fortalecimento da contração cardíaca"
* #anticoagulant "Anticoagulante"
  "Prevenção da coagulação sanguínea"
* #hypoglycemic "Hipoglicemiante"
  "Redução da glicemia"
* #hormone-replacement "Reposição Hormonal"
  "Reposição de hormônios deficientes"
* #contraceptive "Contraceptivo"
  "Prevenção da gravidez"
* #antineoplastic "Antineoplásico"
  "Tratamento de neoplasias"
* #immunosuppressive "Imunossupressor"
  "Supressão do sistema imunológico"
* #vaccine "Vacina"
  "Imunização ativa"

// ---

// ValueSet para MPID defining elements
ValueSet: MPIDDefiningElements
Id: mpid-defining-elements
Title: "Elementos Definidores de MPID"
Description: "Elementos que, quando alterados, requerem geração de novo MPID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/mpid-defining-elements

CodeSystem: MPIDDefiningElements
Id: mpid-defining-elements
Title: "Elementos Definidores de MPID"
Description: "Códigos para elementos que definem quando criar novo MPID"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #therapeutic-indication "Indicação Terapêutica"
  "Mudança em indicação terapêutica requer novo MPID"
* #legal-status "Status Legal"
  "Mudança em status legal requer novo MPID"
* #associated-device "Dispositivo Associado"
  "Mudança em dispositivo associado pode requer novo MPID"
* #active-substance "Substância Ativa"
  "Mudança em substância ativa requer novo MPID"
* #strength "Concentração"
  "Mudança em concentração requer novo MPID"
* #pharmaceutical-form "Forma Farmacêutica"
  "Mudança em forma farmacêutica requer novo MPID"
* #route-administration "Via de Administração"
  "Mudança em via de administração requer novo MPID"