Instance: FarmaceuticaBrasileiraExample
InstanceOf: OrganizationANVISASimple
Usage: #example
Title: "Exemplo - Farmacêutica Brasileira Ltda"
Description: "Exemplo de organização farmacêutica brasileira simplificada"

* id = "farmaceutica-brasileira-ltda"

// Identificadores obrigatórios
* identifier[cnpj].system = "https://saude.gov.br/fhir/sid/cnpj"
* identifier[cnpj].value = "12.345.678/0001-90"

* identifier[afe].system = "http://anvisa.gov.br/afe"
* identifier[afe].value = "AFE123456789"

// Status ativo
* active = true

// Tipo básico
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type.coding.code = #prov

// Nome
* name = "Farmacêutica Brasileira Ltda"