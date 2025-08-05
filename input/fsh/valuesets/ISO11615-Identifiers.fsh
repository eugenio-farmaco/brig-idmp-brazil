// CodeSystems para Identificadores ISO 11615 - Brasil

// MPID - Medicinal Product Identifier
CodeSystem: MPIDBrazil
Id: mpid-br
Title: "MPID - Identificador de Produto Medicinal - Brasil"
Description: "Sistema de códigos para identificadores de produtos medicinais conforme ISO 11615"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Implementação brasileira do MPID conforme ISO 11615 - Medicinal product identification"
* ^caseSensitive = true
* ^content = #complete

// Formato: BR-{Detentor}-{Código}
// Exemplos demonstrativos (não reais)
* #BR-ANVISA-001234 "MPID Exemplo 1"
  "Exemplo de MPID brasileiro para demonstração"
* #BR-NEO-567890 "MPID Exemplo 2"  
  "Exemplo de MPID brasileiro para demonstração"

// ---

// PHPID - Pharmaceutical Product Identifier
CodeSystem: PHPIDBrazil
Id: phpid-br
Title: "PHPID - Identificador de Produto Farmacêutico - Brasil"
Description: "Sistema de códigos para identificadores de produtos farmacêuticos (administráveis) conforme ISO 11615"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Implementação brasileira do PHPID conforme ISO 11615 - Pharmaceutical product identification"
* ^caseSensitive = true
* ^content = #complete

// Formato: {MPID}-PHP{Código}
// Exemplos demonstrativos (não reais)
* #BR-ANVISA-001234-PHP001 "PHPID Exemplo 1"
  "Exemplo de PHPID brasileiro para demonstração"
* #BR-NEO-567890-PHP001 "PHPID Exemplo 2"
  "Exemplo de PHPID brasileiro para demonstração"

// ---

// PCID - Packaged Product Identifier  
CodeSystem: PCIDBrazil
Id: pcid-br
Title: "PCID - Identificador de Produto Embalado - Brasil"
Description: "Sistema de códigos para identificadores de produtos embalados conforme ISO 11615"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Implementação brasileira do PCID conforme ISO 11615 - Packaged product identification"
* ^caseSensitive = true
* ^content = #complete

// Formato: {MPID}-P{PackCode}
// Exemplos demonstrativos (não reais)
* #BR-ANVISA-001234-P001 "PCID Exemplo 1"
  "Exemplo de PCID brasileiro para demonstração"
* #BR-NEO-567890-P001 "PCID Exemplo 2"
  "Exemplo de PCID brasileiro para demonstração"

// ---

// ValueSets correspondentes

ValueSet: MPIDValues
Id: mpid-values-br
Title: "Valores MPID - Brasil"
Description: "Valores válidos para identificadores MPID brasileiros"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/mpid-br

ValueSet: PHPIDValues  
Id: phpid-values-br
Title: "Valores PHPID - Brasil"
Description: "Valores válidos para identificadores PHPID brasileiros"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/phpid-br

ValueSet: PCIDValues
Id: pcid-values-br
Title: "Valores PCID - Brasil"
Description: "Valores válidos para identificadores PCID brasileiros"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/pcid-br