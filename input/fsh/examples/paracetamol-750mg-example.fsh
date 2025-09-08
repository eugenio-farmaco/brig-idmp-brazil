// ================================================
// EXEMPLO: PRODUTO PARACETAMOL 750mg - EXEMPLO BÁSICO
// ================================================

Instance: paracetamol-750mg-example
InstanceOf: MedicinalProductDefinitionBR
Usage: #example
Title: "Paracetamol 750mg Comprimido"
Description: "Exemplo básico de produto medicinal Paracetamol 750mg comprimido para referências"

* identifier[mpid].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/mpid-br"
* identifier[mpid].value = "BRIG-MPID-PAR-750"

* identifier[anvisaRegistration].system = "http://anvisa.gov.br/medicamentos/registro"
* identifier[anvisaRegistration].value = "100000000002"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct

* domain = http://hl7.org/fhir/medicinal-product-domain#Human

* status = http://hl7.org/fhir/publication-status#active

* combinedPharmaceuticalDoseForm = http://hl7.org/fhir/administrable-dose-form#100000073664 "Tablet"

* legalStatusOfSupply = http://hl7.org/fhir/legal-status-of-supply#100000072076 "Medicinal product not subject to medical prescription"

* classification[+] = http://www.whocc.no/atc#N02BE01 "paracetamol"

* name.productName = "Paracetamol 750mg"
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
* operation[0].organization[0] = Reference(Organization/manufacturer-paracetamol-example)

// ================================================

Instance: paracetamol-package-example
InstanceOf: PackagedProductDefinition
Usage: #example
Title: "Paracetamol 750mg - Embalagem"
Description: "Embalagem exemplo de Paracetamol 750mg"

* identifier[0].system = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/package-id-br"
* identifier[0].value = "BRIG-PKG-PAR-750"

* packageFor = Reference(paracetamol-750mg-example)

* status = http://hl7.org/fhir/publication-status#active

* name = "Paracetamol 750mg - Caixa com 20 comprimidos"

* type = http://hl7.org/fhir/packaging-type#Box

* packaging.type = http://hl7.org/fhir/packaging-type#Blister
* packaging.quantity = 20

// ================================================

Instance: manufacturer-paracetamol-example
InstanceOf: Organization
Usage: #example
Title: "Fabricante Paracetamol Exemplo"
Description: "Organização fabricante exemplo para paracetamol"

* identifier[0].system = "https://anvisa.gov.br/cnpj"
* identifier[0].value = "00.000.000/0002-00"

* active = true
* name = "Indústria Farmacêutica Exemplo Ltda."
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"