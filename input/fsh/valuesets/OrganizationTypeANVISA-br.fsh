ValueSet: OrganizationTypeANVISABR
Id: organization-type-anvisa-br
Title: "Tipos de Organização ANVISA - Brasil"
Description: "Tipos de organizações no contexto regulatório da ANVISA baseado em classificações oficiais brasileiras"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/organization-type-anvisa-br

CodeSystem: OrganizationTypeANVISABR
Id: organization-type-anvisa-br
Title: "Tipos de Organização ANVISA - Brasil"
Description: "Sistema de códigos para tipos de organizações no contexto regulatório da ANVISA"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Fabricantes
* #manufacturer "Fabricante"
  "Empresa que produz medicamentos, dispositivos médicos ou outros produtos regulados"
* #manufacturer-api "Fabricante de IFA"
  "Fabricante de Insumo Farmacêutico Ativo (API)"
* #manufacturer-finished "Fabricante de Produto Acabado"
  "Fabricante de produtos farmacêuticos acabados"
* #manufacturer-device "Fabricante de Dispositivo Médico"
  "Fabricante de dispositivos médicos, equipamentos e correlatos"

// Importadores
* #importer "Importador"
  "Empresa responsável pela importação de produtos regulados"
* #importer-api "Importador de IFA"
  "Importador de Insumos Farmacêuticos Ativos"
* #importer-finished "Importador de Produto Acabado"
  "Importador de produtos farmacêuticos acabados"
* #importer-device "Importador de Dispositivo Médico"
  "Importador de dispositivos médicos"

// Distribuidores
* #distributor "Distribuidor"
  "Empresa de distribuição de produtos regulados"
* #distributor-pharma "Distribuidor Farmacêutico"
  "Empresa de distribuição de medicamentos"
* #distributor-device "Distribuidor de Dispositivo Médico"
  "Distribuidor de dispositivos médicos"

// Estabelecimentos de saúde
* #hospital "Hospital"
  "Estabelecimento hospitalar"
* #clinic "Clínica"
  "Clínica ou ambulatório"
* #pharmacy "Farmácia"
  "Farmácia ou drogaria"
* #laboratory "Laboratório"
  "Laboratório de análises clínicas ou patologia"

// Organizações de pesquisa
* #research-org "Organização de Pesquisa"
  "Instituição de pesquisa clínica ou pré-clínica"
* #cro "CRO"
  "Contract Research Organization - Organização de Pesquisa por Contrato"
* #university "Universidade"
  "Instituição de ensino superior com atividades de pesquisa"

// Órgãos reguladores e governamentais
* #regulatory-authority "Autoridade Regulatória"
  "Órgão governamental de regulação sanitária"
* #government-agency "Órgão Governamental"
  "Agência ou órgão da administração pública"

// Organizações de suporte
* #consultant "Consultoria"
  "Empresa de consultoria regulatória"
* #testing-lab "Laboratório de Ensaios"
  "Laboratório de controle de qualidade e ensaios"
* #transport "Transportadora"
  "Empresa de transporte de produtos regulados"

// Titulares de registro
* #marketing-authorization-holder "Titular de Registro"
  "Empresa titular da autorização de comercialização"
* #license-holder "Titular de Licença"
  "Titular de licença ou autorização específica"

// Organizações internacionais
* #foreign-manufacturer "Fabricante Estrangeiro"
  "Fabricante localizado fora do Brasil"
* #international-org "Organização Internacional"
  "Organização internacional com operações no Brasil"