Profile: ManufacturedItemDefinitionBR
Parent: ManufacturedItemDefinition
Id: ManufacturedItemDefinition-br
Title: "Definição de Item Fabricado - Brasil"
Description: "Profile brasileiro para ManufacturedItemDefinition - formas farmacêuticas fabricadas"

* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

// Status obrigatório
* status 1..1 MS

// Forma farmacêutica obrigatória
* manufacturedDoseForm 1..1 MS
* manufacturedDoseForm ^short = "Forma farmacêutica fabricada"

// Unidade de apresentação obrigatória  
* unitOfPresentation 1..1 MS
* unitOfPresentation ^short = "Unidade de apresentação"

// Fabricante obrigatório
* manufacturer 1..* MS
* manufacturer only Reference(OrganizationANVISASimple)
* manufacturer ^short = "Fabricante brasileiro"