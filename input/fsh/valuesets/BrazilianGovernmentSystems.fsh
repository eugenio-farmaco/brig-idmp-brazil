// Sistemas Oficiais do Governo Brasileiro para FHIR
// Este arquivo documenta os NamingSystems oficiais utilizados

ValueSet: BrazilianGovernmentSystems
Id: brazilian-government-systems
Title: "Sistemas Oficiais do Governo Brasileiro"
Description: "Sistemas de identificação oficiais do governo brasileiro utilizados no BRIG"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Documentar sistemas oficiais brasileiros utilizados nos profiles BRIG"

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/brazilian-government-systems

CodeSystem: BrazilianGovernmentSystems
Id: brazilian-government-systems
Title: "Sistemas Oficiais do Governo Brasileiro"
Description: "Sistema de códigos para referenciar sistemas oficiais do governo brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Sistemas do Ministério da Saúde
* #cnpj-ms "CNPJ - Ministério da Saúde"
  "Sistema oficial de CNPJ conforme padrão do Ministério da Saúde: https://saude.gov.br/fhir/sid/cnpj"
  
* #cnes "CNES"
  "Cadastro Nacional de Estabelecimentos de Saúde: http://cnes.datasus.gov.br"

// Sistemas da ANVISA
* #anvisa-medicamento-registro "Registro de Medicamentos ANVISA"
  "Sistema de registro de medicamentos da ANVISA: http://anvisa.gov.br/medicamentos/registro"
  
* #anvisa-dcb "DCB - Denominação Comum Brasileira"
  "Denominação Comum Brasileira da ANVISA: https://anvisa.gov.br/dcb"
  
* #anvisa-substancia-codigo "Código de Substância ANVISA"
  "Código de substâncias da ANVISA: https://anvisa.gov.br/substancias/codigo"
  
* #anvisa-afe "AFE - Autorização de Funcionamento de Empresa"
  "Autorização de Funcionamento de Empresa da ANVISA: http://anvisa.gov.br/afe"
  
* #anvisa-autorizacao-especial "Autorização Especial ANVISA"
  "Autorização especial da ANVISA: http://anvisa.gov.br/autorizacao-especial"
  
* #anvisa-produto-embalagem "Código de Produto Embalado ANVISA"
  "Código de identificação de produto embalado da ANVISA: http://anvisa.gov.br/produtos/embalagem"

// Sistemas Internacionais (para referência)
* #gs1-gtin "GS1 GTIN"
  "Global Trade Item Number: http://hl7.org/fhir/sid/gs1"
  
* #cas-number "CAS Number"
  "Chemical Abstracts Service Registry Number: urn:oid:2.16.840.1.113883.6.61"
  
* #fda-unii "FDA UNII"
  "FDA Unique Ingredient Identifier: http://fdasis.nlm.nih.gov"
  
* #ema-sub-id "EMA SUB-ID"
  "European Medicines Agency Substance ID: http://ema.europa.eu/identifier"
  
* #ema-spor-org "EMA SPOR Organization"
  "EMA SPOR Organization ID: http://spor.ema.europa.eu/v1/organisations"
  
* #fda-establishment "FDA Establishment ID"
  "FDA Establishment Identifier: http://www.fda.gov/establishment-identifier"
  
* #duns "DUNS Number"
  "Data Universal Numbering System: http://www.duns.com/"

// Observações sobre alinhamento com padrões oficiais:
// - Este CodeSystem documenta os sistemas de identificação utilizados no BRIG
// - Prioriza sistemas oficiais do governo brasileiro quando disponíveis
// - Para CNPJ, utiliza o padrão oficial do Ministério da Saúde
// - Para sistemas ANVISA, utiliza URLs baseadas no domínio oficial gov.br
// - Sistemas internacionais são incluídos para interoperabilidade global