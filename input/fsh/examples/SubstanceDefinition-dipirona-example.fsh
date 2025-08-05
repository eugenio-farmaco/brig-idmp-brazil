Instance: DipironaSubstanceExampleBR
InstanceOf: SubstanceDefinitionBR
Usage: #example
Title: "Exemplo - Dipirona Sódica (Substância)"
Description: "Exemplo de substância ativa brasileira - Dipirona Sódica"

* id = "dipirona-sodica-substance"

// Identificadores múltiplos
* identifier[dcb].system = "https://anvisa.gov.br/dcb"
* identifier[dcb].value = "02532"

* identifier[cas].system = "urn:oid:2.16.840.1.113883.6.61"
* identifier[cas].value = "68-89-3"

* identifier[anvisaCode].system = "https://anvisa.gov.br/substancias/codigo"
* identifier[anvisaCode].value = "SUB002"

// Status ativo
* status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-status-br#active

// Classificação como substância ativa
* classification = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-classification-br#active

// Domínio humano
* domain = http://terminology.hl7.org/CodeSystem/medicinalproduct-domain#Human

// Grau farmacêutico
* grade = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-grade-br#pharmaceutical

// Nomes da substância
* name[officialName].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-name-type-br#official
* name[officialName].name = "Dipirona Sódica"

* name[commonName][0].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-name-type-br#common
* name[commonName][0].name = "Metamizol Sódico"

// Códigos relacionados (ATC) - a serem adicionados após correção de sintaxe
// * code[0] = http://www.whocc.no/atc#N02BB02 "Metamizole sodium"

// Descrição
* description = "A dipirona sódica é um fármaco analgésico e antipirético, derivado da pirazolona, amplamente utilizado no Brasil para o tratamento da dor e febre."

// Estrutura molecular
* structure.representation.representation = "C13H16N3NaO4S"
* structure.representation.format = http://hl7.org/fhir/substance-representation-format#SMILES

// Propriedades físico-químicas
* property[0].type = http://hl7.org/fhir/substance-property-type#MolecularWeight
* property[0].valueQuantity = 351.34 'g/mol' "grams per mole"

* property[1].type = http://hl7.org/fhir/substance-property-type#MeltingPoint
* property[1].valueQuantity = 215 'Cel' "degree Celsius"

// Fabricantes/fornecedores
* manufacturer[0] = Reference(OrganizationANVISASimple/neo-quimica-brasil)
* supplier[0] = Reference(OrganizationANVISASimple/distribuidora-farmaceutica-br)

// Extensões brasileiras (a serem habilitadas após correção)
// * extension[http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-regulatory-status].extension[status].valueCodeableConcept = http://farmaco.maxapex.net/brig/fhir/CodeSystem/anvisa-regulatory-status-br#approved
// * extension[http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-regulatory-status].extension[approvalDate].valueDate = "1990-01-15"
// * extension[http://farmaco.maxapex.net/brig/fhir/StructureDefinition/anvisa-regulatory-status].extension[lastReviewDate].valueDate = "2023-06-10"

// Meta informações
* meta.profile = "http://farmaco.maxapex.net/brig/fhir/StructureDefinition/SubstanceDefinition-br"
* meta.lastUpdated = "2025-08-02T10:00:00Z"

// Informações textuais
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
  <h2>Dipirona Sódica</h2>
  <p><strong>DCB:</strong> 02532</p>
  <p><strong>CAS:</strong> 68-89-3</p>
  <p><strong>Código ANVISA:</strong> SUB002</p>
  <p><strong>Classificação:</strong> Substância Ativa</p>
  <p><strong>Status:</strong> Aprovada pela ANVISA</p>
  <p><strong>Grau:</strong> Farmacêutico</p>
  <p><strong>Fórmula Molecular:</strong> C13H16N3NaO4S</p>
  <p><strong>Peso Molecular:</strong> 351.34 g/mol</p>
  <p><strong>Ponto de Fusão:</strong> 215°C</p>
  <p><strong>Descrição:</strong> Analgésico e antipirético derivado da pirazolona</p>
  <p><strong>Código ATC:</strong> N02BB02</p>
</div>"