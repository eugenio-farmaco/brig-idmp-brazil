Instance: paracetamol-substance-gsrs-br
InstanceOf: SubstanceDefinitionBR
Usage: #example
Title: "Paracetamol - Exemplo GSRS/Brasil"
Description: "Exemplo de SubstanceDefinition para Paracetamol com identificadores UNII, DCB e CAS"

* status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/gsrs-substance-status-br#validated "Validated"

// Identificadores múltiplos GSRS + Brasil
* identifier[+].system = "http://fdasis.nlm.nih.gov"
* identifier[=].value = "362O9ITL9D"
* identifier[=].use = #official

* identifier[+].system = "https://anvisa.gov.br/dcb"
* identifier[=].value = "06783"

* identifier[+].system = "urn:oid:2.16.840.1.113883.6.61"
* identifier[=].value = "103-90-2"

* identifier[+].system = "https://anvisa.gov.br/substancias/codigo"
* identifier[=].value = "ANVISA-PARA-001"

// Classificação GSRS e brasileira
* classification[+] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/gsrs-substance-classification-br#chemical "Chemical Substance"
* classification[+] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/gsrs-substance-classification-br#active "Substância Ativa"

// Domínio
* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

// Grau farmacêutico
* grade = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-grade-br#pharmaceutical "Grau Farmacêutico"

// Nomes da substância
* name[officialName].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-name-type-br#official
* name[officialName].name = "N-(4-hidroxifenil)acetamida"
* name[officialName].status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-name-status-br#current
* name[officialName].preferred = true

* name[commonName][+].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-name-type-br#common
* name[commonName][=].name = "Paracetamol"
* name[commonName][=].status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-name-status-br#current
* name[commonName][=].language[+] = urn:ietf:bcp:47#pt-BR

* name[commonName][+].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-name-type-br#common
* name[commonName][=].name = "Acetaminophen"
* name[commonName][=].status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-name-status-br#current
* name[commonName][=].language[+] = urn:ietf:bcp:47#en

// Estrutura molecular GSRS
* structure.molecularFormula = "C8H9NO2"
* structure.molecularWeight.amount.value = 151.163
* structure.molecularWeight.amount.unit = "g/mol"
* structure.molecularWeight.amount.system = "http://unitsofmeasure.org"
* structure.molecularWeight.amount.code = #g/mol

* structure.representation[+].type = http://hl7.org/fhir/substance-representation-type#SMILES
* structure.representation[=].representation = "CC(=O)NC1=CC=C(C=C1)O"

* structure.representation[+].type = http://hl7.org/fhir/substance-representation-type#InChI
* structure.representation[=].representation = "InChI=1S/C8H9NO2/c1-6(10)9-7-2-4-8(11)5-3-7/h2-5,11H,1H3,(H,9,10)"

// Códigos adicionais
* code[+].coding.system = "http://www.whocc.no/atc"
* code[=].coding.code = #N02BE01
* code[=].coding.display = "paracetamol"

// Descrição
* description = "O paracetamol (acetaminofeno) é um analgésico e antipirético amplamente utilizado. É um inibidor fraco da síntese de prostaglandinas com ação predominantemente central."

// Propriedades GSRS
* property[solubility].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-property-type-br#solubility
* property[solubility].type.text = "Solubility"
* property[solubility].valueCodeableConcept.text = "14 mg/mL em água a 25°C"

* property[meltingPoint].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-property-type-br#meltingPoint
* property[meltingPoint].type.text = "Melting Point"
* property[meltingPoint].valueQuantity.value = 169
* property[meltingPoint].valueQuantity.unit = "°C"
* property[meltingPoint].valueQuantity.system = "http://unitsofmeasure.org"
* property[meltingPoint].valueQuantity.code = #Cel

* property[logP].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-property-type-br#logP
* property[logP].type.text = "LogP"
* property[logP].valueQuantity.value = 0.46
* property[logP].valueQuantity.system = "http://unitsofmeasure.org"
* property[logP].valueQuantity.code = #{LogP}