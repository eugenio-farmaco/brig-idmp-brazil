// ================================================
// EXEMPLO CLÍNICO: DIPIRONA - INDICAÇÃO ANALGÉSICA
// ================================================

Instance: dipirona-clinical-indication-example
InstanceOf: ClinicalUseDefinitionBR
Usage: #example
Title: "Dipirona - Indicação para Dor e Febre"
Description: "Exemplo de uso clínico da Dipirona 500mg para tratamento de dor e febre - indicação terapêutica conforme padrão brasileiro."

* identifier[brigId].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-id-br"
* identifier[brigId].value = "BRIG-CU-DIP-001"

* type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-type-br#indication
* status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-status-br#active

* category[0] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-category-br#cbaf
* category[1] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-category-br#otc

// Referência para o produto Dipirona
* subject = Reference(dipirona-500mg-example)

// População geral adulta
* population[0].age.low.value = 18
* population[0].age.low.unit = "anos"
* population[0].age.low.system = "http://unitsofmeasure.org"
* population[0].age.low.code = #a
* population[0].gender = #male
* population[1].age.low.value = 18
* population[1].age.low.unit = "anos"
* population[1].age.low.system = "http://unitsofmeasure.org"
* population[1].age.low.code = #a
* population[1].gender = #female

// Indicação para dor
* indication.diseaseSymptomProcedure = http://hl7.org/fhir/sid/icd-10#R52.9 "Dor não especificada"

* indication.diseaseStatus.coding[0].system = "http://snomed.info/sct"
* indication.diseaseStatus.coding[0].code = #255212004
* indication.diseaseStatus.coding[0].display = "Acute (qualifier value)"
* indication.diseaseStatus.text = "Dor aguda a moderada"

// Comorbidades relevantes
* indication.comorbidity[0] = http://hl7.org/fhir/sid/icd-10#R50.9 "Febre não especificada"

// Efeito pretendido
* indication.intendedEffect.coding[0].system = "http://snomed.info/sct" 
* indication.intendedEffect.coding[0].code = #182856006
* indication.intendedEffect.coding[0].display = "Analgesia (procedure)"

// Duração do tratamento
* indication.durationString = "5 dias"

// ================================================

Instance: dipirona-clinical-contraindication-example
InstanceOf: ClinicalUseDefinitionBR
Usage: #example
Title: "Dipirona - Contraindicação por Hipersensibilidade"
Description: "Exemplo de contraindicação da Dipirona 500mg em pacientes com hipersensibilidade conhecida à dipirona ou pirazolonas."

* identifier[brigId].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-id-br"
* identifier[brigId].value = "BRIG-CU-DIP-002"

* type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-type-br#contraindication
* status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-status-br#active

* category[0] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-category-br#cbaf

// Referência para o produto Dipirona
* subject = Reference(dipirona-500mg-example)

// Todas as populações
* population[0].age.low.value = 0
* population[0].age.low.unit = "anos"
* population[0].age.low.system = "http://unitsofmeasure.org"
* population[0].age.low.code = #a

// Contraindicação por hipersensibilidade
* contraindication.diseaseSymptomProcedure = http://snomed.info/sct#419511003 "Propensity to adverse reactions to drug (finding)"

* contraindication.comorbidity[0] = http://snomed.info/sct#418038007 "Propensity to adverse reactions to substance (finding)"

// ================================================

Instance: paracetamol-clinical-indication-example  
InstanceOf: ClinicalUseDefinitionBR
Usage: #example
Title: "Paracetamol - Indicação para Febre"
Description: "Exemplo de uso clínico do Paracetamol 750mg para tratamento de febre e dor leve a moderada."

* identifier[brigId].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-id-br"
* identifier[brigId].value = "BRIG-CU-PAR-001"

* type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-type-br#indication
* status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-status-br#active

* category[0] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-category-br#cbaf
* category[1] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-category-br#otc
* category[2] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-category-br#pediatric

// Referência para produto Paracetamol (placeholder - seria criado separadamente)
* subject = Reference(paracetamol-750mg-example)

// População adulta e pediátrica
* population[0].age.low.value = 12
* population[0].age.low.unit = "anos"
* population[0].age.low.system = "http://unitsofmeasure.org"
* population[0].age.low.code = #a

// Indicação para febre
* indication.diseaseSymptomProcedure = http://hl7.org/fhir/sid/icd-10#R50.9 "Febre não especificada"

* indication.diseaseStatus.coding[0].system = "http://snomed.info/sct"
* indication.diseaseStatus.coding[0].code = #255212004
* indication.diseaseStatus.coding[0].display = "Acute (qualifier value)"
* indication.diseaseStatus.text = "Febre aguda"

// Comorbidades - dor associada
* indication.comorbidity[0] = http://hl7.org/fhir/sid/icd-10#R52.9 "Dor não especificada"
* indication.comorbidity[1] = http://hl7.org/fhir/sid/icd-10#G43.9 "Enxaqueca não especificada"

// Efeito pretendido
* indication.intendedEffect.coding[0].system = "http://snomed.info/sct"
* indication.intendedEffect.coding[0].code = #86799002
* indication.intendedEffect.coding[0].display = "Fever reduction (procedure)"

// Duração do tratamento
* indication.durationString = "3 dias"

// ================================================

Instance: paracetamol-clinical-interaction-example
InstanceOf: ClinicalUseDefinitionBR
Usage: #example
Title: "Paracetamol - Interação com Álcool"
Description: "Exemplo de interação medicamentosa do Paracetamol com álcool - risco de hepatotoxicidade."

* identifier[brigId].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-id-br"
* identifier[brigId].value = "BRIG-CU-PAR-002"

* type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-type-br#interaction
* status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-status-br#active

* category[0] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/clinical-use-category-br#cbaf

// Referência para produto Paracetamol
* subject = Reference(paracetamol-750mg-example)

// População adulta com uso de álcool
* population[0].age.low.value = 18
* population[0].age.low.unit = "anos" 
* population[0].age.low.system = "http://unitsofmeasure.org"
* population[0].age.low.code = #a

// Interação com álcool
* interaction.interactant[0].itemCodeableConcept = http://snomed.info/sct#419442005 "Ethyl alcohol (substance)"

// Tipo de interação - farmacocinética
* interaction.type.coding[0].system = "http://snomed.info/sct"
* interaction.type.coding[0].code = #182817000
* interaction.type.coding[0].display = "Drug interaction with ethanol (disorder)"
* interaction.type.text = "Interação farmacocinética"

// Efeito - hepatotoxicidade
* interaction.effect.coding[0].system = "http://snomed.info/sct"
* interaction.effect.coding[0].code = #197354008
* interaction.effect.coding[0].display = "Toxic effect of paracetamol (disorder)"

// Incidência
* interaction.incidence.coding[0].system = "http://snomed.info/sct"
* interaction.incidence.coding[0].code = #255212004
* interaction.incidence.coding[0].display = "Frequent (qualifier value)"

// Manejo
* interaction.management[0].coding[0].system = "http://snomed.info/sct"
* interaction.management[0].coding[0].code = #182840001
* interaction.management[0].coding[0].display = "Drug treatment stopped (situation)"