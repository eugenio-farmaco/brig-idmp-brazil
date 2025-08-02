ValueSet: ProductNameTypeBR
Id: product-name-type-br
Title: "Tipos de Nome de Produto - Brasil"
Description: "Tipos de nomes para produtos medicinais no contexto brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/product-name-type-br

CodeSystem: ProductNameTypeBR
Id: product-name-type-br
Title: "Tipos de Nome de Produto - Brasil"
Description: "Sistema de códigos para tipos de nomes de produtos medicinais"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #commercial "Nome Comercial"
  "Nome de fantasia do produto registrado para comercialização"
* #scientific "Nome Científico"
  "Denominação Comum Brasileira (DCB) ou nome científico do princípio ativo"
* #brand "Marca"
  "Nome da marca sob a qual o produto é comercializado"
* #generic "Nome Genérico"
  "Denominação do medicamento genérico conforme DCB"
* #popular "Nome Popular"
  "Nome pelo qual o produto é popularmente conhecido"
* #international "Nome Internacional"
  "Denominação Comum Internacional (DCI) do princípio ativo"