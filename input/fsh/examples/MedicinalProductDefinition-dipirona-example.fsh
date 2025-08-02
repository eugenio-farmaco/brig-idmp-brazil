Instance: DipironaExampleBR
InstanceOf: MedicinalProductDefinitionBR
Usage: #example
Title: "Exemplo - Dipirona Sódica 500mg"
Description: "Exemplo de produto medicinal brasileiro - Dipirona Sódica 500mg comprimidos"

* id = "dipirona-500mg-comp"

// Identificadores
* identifier[anvisaRegistration].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/anvisa-product-registration"
* identifier[anvisaRegistration].value = "1.0123.4567.001-8"

* identifier[ean].system = "http://hl7.org/fhir/sid/gs1"
* identifier[ean].value = "7891234567890"

// Tipo de produto
* type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/medicinal-product-type-br#medicamento

// Forma farmacêutica combinada
* combinedPharmaceuticalDoseForm = http://standardterms.edqm.eu#10219000 "Tablet"

// Via de administração
* route = http://standardterms.edqm.eu#20053000 "Oral use"

// Nomes do produto
* name[commercialName].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/product-name-type-br#commercial
* name[commercialName].productName = "Dipirona Sódica Neo Química"

* name[scientificName].type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/product-name-type-br#scientific
* name[scientificName].productName = "Dipirona Sódica"

// Classificação terapêutica (ATC)
* classification = http://www.whocc.no/atc#N02BB02 "Metamizole sodium"

// Características especiais
* characteristic[0].type = http://hl7.org/fhir/medicinal-product-type#GenericProduct
* characteristic[0].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ObservationValue#GENRL "generic"

// Status legal de fornecimento
* legalStatusOfSupply = http://farmaco.maxapex.net/brig/fhir/CodeSystem/legal-status-supply-br#venda-livre

// Status de comercialização
* marketingStatus[0].country = urn:iso:std:iso:3166#BR
* marketingStatus[0].status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/marketing-status-br#active
* marketingStatus[0].dateRange.start = "2020-03-15"

// Contatos organizacionais
* contact[0].type = http://hl7.org/fhir/medicinal-product-contact-type#ProposedMAH
* contact[0].contact = Reference(Organization/neo-quimica-brasil)

// Indicações terapêuticas - usando texto simples
* indication = "Dor e febre"

// Meta informações
* meta.profile = "http://farmaco.maxapex.net/brig/fhir/StructureDefinition/MedicinalProductDefinition-br"
* meta.lastUpdated = "2025-08-02T10:00:00Z"

// Informações textuais
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
  <h2>Dipirona Sódica Neo Química 500mg</h2>
  <p><strong>Registro ANVISA:</strong> 1.0123.4567.001-8</p>
  <p><strong>Forma farmacêutica:</strong> Comprimidos</p>
  <p><strong>Via de administração:</strong> Oral</p>
  <p><strong>Dosagem:</strong> 500mg por comprimido</p>
  <p><strong>Embalagem:</strong> 20 comprimidos</p>
  <p><strong>Status:</strong> Ativo para comercialização</p>
  <p><strong>Classificação:</strong> Medicamento de venda livre</p>
  <p><strong>Indicações:</strong> Analgésico e antitérmico</p>
  <p><strong>Fabricante:</strong> Neo Química Brasil</p>
</div>"