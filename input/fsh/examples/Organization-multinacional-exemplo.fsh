Instance: MultinacionalPharmaExample
InstanceOf: OrganizationANVISASimple
Usage: #example
Title: "Exemplo - Multinacional Pharma Brasil"
Description: "Exemplo de organização farmacêutica multinacional simplificada"

* id = "multinacional-pharma-brasil"

// Identificadores obrigatórios
* identifier[cnpj].system = "https://saude.gov.br/fhir/sid/cnpj"
* identifier[cnpj].value = "98.765.432/0001-10"

* identifier[afe].system = "http://anvisa.gov.br/afe"
* identifier[afe].value = "AFE987654321"

// Status ativo
* active = true

// Tipo básico
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type.coding.code = #prov

// Nome
* name = "Multinacional Pharma Brasil"