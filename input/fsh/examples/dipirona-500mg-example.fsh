// ================================================
// EXEMPLO: PRODUTO DIPIRONA 500mg - EXEMPLO BÁSICO
// ================================================

Instance: dipirona-500mg-example
InstanceOf: MedicinalProductDefinitionBR
Usage: #example
Title: "Dipirona 500mg Comprimido"
Description: "Exemplo básico de produto medicinal Dipirona 500mg comprimido para referências"

* identifier[mpid].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/mpid-br"
* identifier[mpid].value = "BRIG-MPID-DIP-500"

* identifier[anvisaRegistration].system = "http://anvisa.gov.br/medicamentos/registro"
* identifier[anvisaRegistration].value = "100000000001"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct

* domain = http://hl7.org/fhir/medicinal-product-domain#Human

* status = http://hl7.org/fhir/publication-status#active

* combinedPharmaceuticalDoseForm = http://hl7.org/fhir/administrable-dose-form#100000073664 "Tablet"

* legalStatusOfSupply = http://hl7.org/fhir/legal-status-of-supply#100000072084 "Medicinal product subject to medical prescription"

* classification[+] = http://www.whocc.no/atc#N02BB02 "metamizole sodium"

* name.productName = "Dipirona 500mg"
* name.usage.country = urn:iso:std:iso:3166#BR
* name.usage.jurisdiction = urn:iso:std:iso:3166#BR
* name.usage.language = urn:ietf:bcp:47#pt-BR

// Rota de administração (obrigatório)
* route[+] = http://hl7.org/fhir/route-codes#PO "Oral"

// Status de marketing (obrigatório)
* marketingStatus.status = http://hl7.org/fhir/publication-status#active
* marketingStatus.dateRange.start = "2024-01-01"

// Nome do produto (campos obrigatórios)
* name.type = http://hl7.org/fhir/medicinal-product-name-type#BrandName

// Operação simplificada
* operation[0].type.concept.coding = http://hl7.org/fhir/product-operation#manufacture
* operation[0].effectiveDate.start = "2024-01-01"
* operation[0].organization[0] = Reference(Organization/manufacturer-example)

// ================================================

Instance: dipirona-package-example
InstanceOf: PackagedProductDefinition
Usage: #example
Title: "Dipirona 500mg - Embalagem"
Description: "Embalagem exemplo de Dipirona 500mg"

* identifier[0].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/package-id-br"
* identifier[0].value = "BRIG-PKG-DIP-500"

* packageFor = Reference(dipirona-500mg-example)

* status = http://hl7.org/fhir/publication-status#active

* name = "Dipirona 500mg - Caixa com 20 comprimidos"

* type = http://hl7.org/fhir/packaging-type#Box

* packaging.type = http://hl7.org/fhir/packaging-type#Blister
* packaging.quantity = 20

// ================================================

Instance: manufacturer-example
InstanceOf: Organization
Usage: #example
Title: "Fabricante Exemplo"
Description: "Organização fabricante exemplo para referências"

* identifier[0].system = "https://anvisa.gov.br/cnpj"
* identifier[0].value = "00.000.000/0001-00"

* active = true
* name = "Laboratório Exemplo S.A."
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"