Instance: DipironaPackageExampleBR
InstanceOf: PackagedProductDefinitionBR
Usage: #example
Title: "Exemplo - Dipirona Sódica 500mg Embalagem"
Description: "Exemplo de produto embalado brasileiro - Dipirona Sódica 500mg, caixa com 20 comprimidos"

* id = "dipirona-500mg-package"

// Identificadores obrigatórios
* identifier[pcid].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/pcid-br"
* identifier[pcid].value = "BR-NEO-001234-P001"

* identifier[ean].system = "http://hl7.org/fhir/sid/gs1"
* identifier[ean].value = "7891234567890"

* identifier[anvisaPackageCode].system = "http://anvisa.gov.br/produtos/embalagem"
* identifier[anvisaPackageCode].value = "PKG-DIP-500-20"

// Nome comercial da embalagem
* name = "Dipirona Sódica Neo Química 500mg - Caixa 20 comprimidos"

// Tipo de produto embalado
* type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/packaged-product-type-br#medicamento

// Referência ao produto medicinal base
* packageFor = Reference(MedicinalProductDefinitionBR/dipirona-500mg-comp)

// Status legal de fornecimento
* legalStatusOfSupply.code = http://farmaco.maxapex.net/brig/fhir/CodeSystem/legal-status-supply-br#venda-livre

// Status de comercialização
* marketingStatus[0].country = urn:iso:std:iso:3166#BR
* marketingStatus[0].status = http://farmaco.maxapex.net/brig/fhir/CodeSystem/marketing-status-br#active
* marketingStatus[0].dateRange.start = "2020-03-15"

// Características da embalagem
* characteristic[0].type.coding[0].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/package-characteristic-br"
* characteristic[0].type.coding[0].code = #armazenamento
* characteristic[0].type.coding[0].display = "Condições de armazenamento"
* characteristic[0].valueCodeableConcept.coding[0].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/storage-condition-br"
* characteristic[0].valueCodeableConcept.coding[0].code = #temperatura-ambiente
* characteristic[0].valueCodeableConcept.coding[0].display = "Temperatura ambiente"

// Estrutura de embalagem principal
* packaging.type = http://farmaco.maxapex.net/brig/fhir/CodeSystem/packaging-type-br#caixa
* packaging.quantity = 1

// Material da embalagem
* packaging.material[0] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/packaging-material-br#papel
* packaging.material[1] = http://farmaco.maxapex.net/brig/fhir/CodeSystem/packaging-material-br#plastico

// Itens contidos na embalagem
* packaging.containedItem[0].amount.value = 20
* packaging.containedItem[0].amount.unit = "comprimido"
* packaging.containedItem[0].amount.system = "http://unitsofmeasure.org"
* packaging.containedItem[0].amount.code = #{tab}

// Referência ao item fabricado (usando conceito por enquanto)
* packaging.containedItem[0].item.concept.coding[0].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/manufactured-item-br"
* packaging.containedItem[0].item.concept.coding[0].code = #dipirona-comp-500mg
* packaging.containedItem[0].item.concept.coding[0].display = "Dipirona Sódica 500mg comprimido"

// Fabricante da embalagem
* manufacturer[0] = Reference(OrganizationANVISASimple/neo-quimica-brasil)

// Meta informações
* meta.profile = "http://farmaco.maxapex.net/brig/fhir/StructureDefinition/PackagedProductDefinition-br"
* meta.lastUpdated = "2025-08-02T10:00:00Z"

// Informações textuais
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>
  <h2>Dipirona Sódica Neo Química 500mg - Embalagem</h2>
  <p><strong>EAN/GTIN:</strong> 7891234567890</p>
  <p><strong>Código ANVISA:</strong> PKG-DIP-500-20</p>
  <p><strong>Conteúdo:</strong> 20 comprimidos de 500mg</p>
  <p><strong>Embalagem:</strong> Caixa de papelão com blister PVC/Alumínio</p>
  <p><strong>Armazenamento:</strong> Temperatura ambiente</p>
  <p><strong>Status:</strong> Ativo para comercialização</p>
  <p><strong>Fabricante:</strong> Neo Química Brasil</p>
  <p><strong>Produto base:</strong> Dipirona Sódica 500mg</p>
</div>"