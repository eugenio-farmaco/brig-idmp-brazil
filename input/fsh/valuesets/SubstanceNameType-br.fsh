ValueSet: SubstanceNameTypeBR
Id: substance-name-type-br
Title: "Tipos de Nome de Substância - Brasil"
Description: "Tipos de nomes para substâncias no contexto brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/substance-name-type-br

CodeSystem: SubstanceNameTypeBR
Id: substance-name-type-br
Title: "Tipos de Nome de Substância - Brasil"
Description: "Sistema de códigos para tipos de nomes de substâncias"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #official "Nome Oficial"
  "Nome oficial ou sistemático da substância"
* #common "Nome Comum"
  "Nome comum ou trivial da substância"
* #dcb "DCB"
  "Denominação Comum Brasileira"
* #dci "DCI"
  "Denominação Comum Internacional"
* #chemical "Nome Químico"
  "Nome químico sistemático (IUPAC)"
* #trade "Nome Comercial"
  "Nome comercial ou de marca"
* #synonym "Sinônimo"
  "Nome sinônimo ou alternativo"