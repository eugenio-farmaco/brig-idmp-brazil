Instance: MidazolamPackageExampleBR
InstanceOf: PackagedProductDefinitionBR
Usage: #example
Title: "Exemplo - Midazolam 5mg/mL Embalagem"
Description: "Exemplo de produto embalado brasileiro - Midazolam 5mg/mL, caixa com 10 ampolas de 3mL"

* id = "midazolam-5mg-package"

// Identificadores obrigatórios
* identifier[pcid].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/pcid-br"
* identifier[pcid].value = "BR-CRISTALIA-567890-P001"

* identifier[ean].system = "http://hl7.org/fhir/sid/gs1"
* identifier[ean].value = "7891234567891"

* identifier[anvisaPackageCode].system = "http://anvisa.gov.br/produtos/embalagem"
* identifier[anvisaPackageCode].value = "PKG-MID-5MG-10AMP"

// Nome comercial da embalagem
* name = "Midazolam Cristália 5mg/mL - Caixa 10 ampolas 3mL"

// Tipo de produto embalado
* type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/packaged-product-type-br#medicamento-hospitalar

// Referência ao produto medicinal base (será criado posteriormente)
* packageFor = Reference(MedicinalProductDefinitionBR/midazolam-5mg-injection)

// Status legal de fornecimento - medicamento controlado
* legalStatusOfSupply.code = http://farmaco.maxapex.net/brig/fhir/CodeSystem/legal-status-supply-br#receita-azul

// Status de comercialização
* marketingStatus[0].country = urn:iso:std:iso:3166#BR
* marketingStatus[0].status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/marketing-status-br#active
* marketingStatus[0].dateRange.start = "2019-08-10"

// Características da embalagem - armazenamento controlado
* characteristic[0].type.coding[0].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/package-characteristic-br"
* characteristic[0].type.coding[0].code = #armazenamento
* characteristic[0].type.coding[0].display = "Condições de armazenamento"
* characteristic[0].valueCodeableConcept.coding[0].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/storage-condition-br"
* characteristic[0].valueCodeableConcept.coding[0].code = #refrigeracao
* characteristic[0].valueCodeableConcept.coding[0].display = "Refrigeração (2-8°C)"

* characteristic[1].type.coding[0].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/package-characteristic-br"
* characteristic[1].type.coding[0].code = #protecao-luz
* characteristic[1].type.coding[0].display = "Proteção contra luz"
* characteristic[1].valueCodeableConcept.coding[0].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/protection-br"
* characteristic[1].valueCodeableConcept.coding[0].code = #proteger-luz
* characteristic[1].valueCodeableConcept.coding[0].display = "Proteger da luz"

// Estrutura de embalagem principal
* packaging.type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/packaging-type-br#caixa
* packaging.quantity = 1

// Material da embalagem
* packaging.material[0] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/packaging-material-br#papel
* packaging.material[1] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/packaging-material-br#vidro

// Itens contidos na embalagem - 10 ampolas de 3mL
* packaging.containedItem[0].amount.value = 10
* packaging.containedItem[0].amount.unit = "ampola"
* packaging.containedItem[0].amount.system = "http://unitsofmeasure.org"
* packaging.containedItem[0].amount.code = #1

// Referência ao item fabricado (usando conceito por enquanto)
* packaging.containedItem[0].item.concept.coding[0].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/manufactured-item-br"
* packaging.containedItem[0].item.concept.coding[0].code = #midazolam-amp-5mg-3ml
* packaging.containedItem[0].item.concept.coding[0].display = "Midazolam 5mg/mL ampola 3mL"

// Fabricante da embalagem
* manufacturer[0] = Reference(OrganizationANVISASimple/cristalia-brasil)

// Meta informações
* meta.profile = "http://farmaco.maxapex.net/brig/fhir/StructureDefinition/PackagedProductDefinition-br"
* meta.lastUpdated = "2025-08-02T10:00:00Z"

// Informações textuais
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
  <h2>Midazolam Cristália 5mg/mL - Embalagem</h2>
  <p><strong>EAN/GTIN:</strong> 7891234567891</p>
  <p><strong>Código ANVISA:</strong> PKG-MID-5MG-10AMP</p>
  <p><strong>Conteúdo:</strong> 10 ampolas de 3mL (5mg/mL)</p>
  <p><strong>Embalagem:</strong> Caixa de papelão com ampolas de vidro âmbar</p>
  <p><strong>Armazenamento:</strong> Conservar sob refrigeração, proteger da luz</p>
  <p><strong>Status:</strong> Medicamento controlado - Prescrição médica obrigatória</p>
  <p><strong>Fabricante:</strong> Cristália Brasil</p>
  <p><strong>Produto base:</strong> Midazolam 5mg/mL injetável</p>
  <p><strong>Classificação:</strong> Medicamento hospitalar de uso controlado</p>
</div>"