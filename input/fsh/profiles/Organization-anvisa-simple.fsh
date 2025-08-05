Profile: OrganizationANVISASimple
Parent: Organization
Id: Organization-anvisa-simple
Title: "Organização ANVISA - Brasil (Simplificado)"
Description: "Profile brasileiro simplificado para Organization no contexto regulatório da ANVISA"

* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Definir a estrutura padronizada para organizações no contexto regulatório da ANVISA"

// Identificadores obrigatórios para organizações brasileiras
* identifier 1..* MS

// CNPJ - obrigatório para empresas brasileiras
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains cnpj 1..1 MS
* identifier[cnpj].system = "https://saude.gov.br/fhir/sid/cnpj" (exactly)
* identifier[cnpj].value 1..1 MS

// AFE - Autorização de Funcionamento ANVISA
* identifier contains afe 1..1 MS
* identifier[afe].system = "http://anvisa.gov.br/afe" (exactly)
* identifier[afe].value 1..1 MS

// Elementos básicos obrigatórios
* active 1..1 MS
* name 1..1 MS
* type 1..* MS