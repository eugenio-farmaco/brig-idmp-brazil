Extension: GenericReference
Id: generic-reference
Title: "Referência Genérica"
Description: "Referência ao produto de referência para medicamentos genéricos ou similares"
Context: MedicinalProductDefinition
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^contact.name = "Eugênio Neves"
* ^contact.telecom[0].system = #email
* ^contact.telecom[0].value = "eugenio@farmaco.io"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Estabelecer a relação entre medicamentos genéricos/similares e seus produtos de referência"

// Extension sem valor direto, apenas sub-extensions
* extension contains
    referenceProduct 1..1 MS and
    referenceType 0..1 MS and
    bioequivalenceStudy 0..1 MS and
    referenceCountry 0..1 MS

* extension[referenceProduct] ^short = "Produto de referência"
* extension[referenceProduct] ^definition = "Referência ao produto medicinal que serve como referência"
* extension[referenceProduct].value[x] only Reference(MedicinalProductDefinition)

* extension[referenceType] ^short = "Tipo de referência"
* extension[referenceType] ^definition = "Tipo de relação de referência (genérico, similar, biosimilar)"
* extension[referenceType].value[x] only CodeableConcept
* extension[referenceType].valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/reference-type-br (required)

* extension[bioequivalenceStudy] ^short = "Estudo de bioequivalência"
* extension[bioequivalenceStudy] ^definition = "Referência ao estudo de bioequivalência realizado"
* extension[bioequivalenceStudy].value[x] only Reference(DocumentReference)

* extension[referenceCountry] ^short = "País de referência"
* extension[referenceCountry] ^definition = "País onde o produto de referência foi aprovado"
* extension[referenceCountry].value[x] only CodeableConcept
* extension[referenceCountry].valueCodeableConcept from http://hl7.org/fhir/ValueSet/iso3166-1-3 (required)

ValueSet: ReferenceTypeBR
Id: reference-type-br
Title: "Tipos de Referência - Brasil"
Description: "Tipos de relação de referência entre produtos medicinais"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/reference-type-br

CodeSystem: ReferenceTypeBR
Id: reference-type-br
Title: "Tipos de Referência - Brasil"
Description: "Sistema de códigos para tipos de relação de referência"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #generic "Genérico"
  "Medicamento genérico com referência ao produto inovador"
* #similar "Similar"
  "Medicamento similar com referência ao produto comparador"
* #biosimilar "Biosimilar"
  "Produto biológico similar com referência ao produto biológico de referência"
* #copy "Cópia"
  "Produto que reproduz medicamento de referência"