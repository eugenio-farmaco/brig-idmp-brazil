Instance: OrganizationSimpleExample
InstanceOf: OrganizationANVISASimple
Usage: #example
Title: "Exemplo - Organização Simples"
Description: "Exemplo básico de organização com identificadores mínimos"

* id = "org-simple-example"

// Identificadores obrigatórios
* identifier[cnpj].system = "https://saude.gov.br/fhir/sid/cnpj"
* identifier[cnpj].value = "11.222.333/0001-44"

* identifier[afe].system = "http://anvisa.gov.br/afe"
* identifier[afe].value = "AFE111222333"

// Status ativo
* active = true

// Tipo básico
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type.coding.code = #prov

// Nome
* name = "Organização Simples Ltda"