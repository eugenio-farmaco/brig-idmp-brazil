Instance: MidazolamSubstanceExampleBR
InstanceOf: SubstanceDefinitionBR
Usage: #example
Title: "Exemplo - Midazolam (Substância Controlada)"
Description: "Exemplo de substância controlada brasileira - Midazolam (Lista B1)"

* id = "midazolam-substance"

// Identificadores
* identifier[dcb].system = "https://anvisa.gov.br/dcb"
* identifier[dcb].value = "05969"

* identifier[cas].system = "urn:oid:2.16.840.1.113883.6.61"
* identifier[cas].value = "59467-70-8"

* identifier[unii].system = "http://fdasis.nlm.nih.gov"
* identifier[unii].value = "R60L0SM5BC"

// Status ativo
* status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-status-br#active

// Classificação como substância ativa E controlada
* classification[0] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-classification-br#active
* classification[1] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-classification-br#controlled
* classification[2] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-classification-br#psychotropic

// Domínio humano
* domain = http://terminology.hl7.org/CodeSystem/medicinalproduct-domain#Human

// Grau farmacêutico
* grade = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-grade-br#pharmaceutical

// Nomes da substância
* name[officialName].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-name-type-br#official
* name[officialName].name = "Midazolam"

* name[commonName][0].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-name-type-br#common
* name[commonName][0].name = "Midazolam"

// Códigos relacionados - a serem adicionados após correção de sintaxe
// * code[0] = http://www.whocc.no/atc#N05CD08 "Midazolam"

// Descrição
* description = "O midazolam é um medicamento benzodiazepínico de ação rápida usado para sedação, ansiolise e amnésia. É uma substância controlada no Brasil, classificada na Lista B1."

// Estrutura molecular
* structure.representation.representation = "C18H13ClFN3"
* structure.representation.format = http://hl7.org/fhir/substance-representation-format#SMILES

// Propriedades
* property[0].type = http://hl7.org/fhir/substance-property-type#MolecularWeight
* property[0].valueQuantity = 325.77 'g/mol' "grams per mole"

// Extensões brasileiras (a serem habilitadas após correção)
// * extension[http://farmaco.maxapex.net/brig/fhir/StructureDefinition/controlled-substance-category].valueCodeableConcept = http://farmaco.maxapex.net/brig/fhir/CodeSystem/controlled-substance-category-br#B1

// * extension[http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-regulatory-status].extension[status].valueCodeableConcept = http://farmaco.maxapex.net/brig/fhir/CodeSystem/anvisa-regulatory-status-br#approved-restricted
// * extension[http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-regulatory-status].extension[approvalDate].valueDate = "1995-08-20"
// * extension[http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-regulatory-status].extension[restrictions][0].valueString = "Uso restrito a ambiente hospitalar"
// * extension[http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-regulatory-status].extension[restrictions][1].valueString = "Requer receita de controle especial"
// * extension[http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-regulatory-status].extension[lastReviewDate].valueDate = "2024-03-15"

// Meta informações
* meta.profile = "http://farmaco.maxapex.net/brig/fhir/StructureDefinition/SubstanceDefinition-br"
* meta.lastUpdated = "2025-08-02T10:00:00Z"

// Informações textuais
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
  <h2>Midazolam (Substância Controlada)</h2>
  <p><strong>DCB:</strong> 05969</p>
  <p><strong>CAS:</strong> 59467-70-8</p>
  <p><strong>UNII:</strong> R60L0SM5BC</p>
  <p><strong>Classificação:</strong> Substância Ativa, Controlada, Psicotrópica</p>
  <p><strong>Status:</strong> Aprovada com Restrições pela ANVISA</p>
  <p><strong>Categoria de Controle:</strong> Lista B1 (Psicotrópicos)</p>
  <p><strong>Grau:</strong> Farmacêutico</p>
  <p><strong>Fórmula Molecular:</strong> C18H13ClFN3</p>
  <p><strong>Peso Molecular:</strong> 325.77 g/mol</p>
  <p><strong>Restrições:</strong> Uso restrito a ambiente hospitalar, requer receita de controle especial</p>
  <p><strong>Código ATC:</strong> N05CD08</p>
  <p><strong>Descrição:</strong> Benzodiazepínico para sedação, ansiolise e amnésia</p>
</div>"