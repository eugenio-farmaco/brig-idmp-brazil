ValueSet: OrganizationContactPurposeBR
Id: organization-contact-purpose-br
Title: "Finalidades de Contato Organizacional - Brasil"
Description: "Finalidades específicas de contatos organizacionais no contexto regulatório brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/organization-contact-purpose-br

CodeSystem: OrganizationContactPurposeBR
Id: organization-contact-purpose-br
Title: "Finalidades de Contato Organizacional - Brasil"
Description: "Sistema de códigos para finalidades de contatos organizacionais no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Contatos regulatórios principais
* #regulatory-affairs "Assuntos Regulatórios"
  "Responsável por questões regulatórias e relacionamento com ANVISA"
* #technical-responsible "Responsável Técnico"
  "Responsável técnico conforme exigência legal"
* #pharmacovigilance "Farmacovigilância"
  "Responsável por farmacovigilância e monitoramento pós-comercialização"
* #quality-assurance "Garantia de Qualidade"
  "Responsável pela garantia de qualidade"

// Contatos operacionais
* #operations "Operações"
  "Responsável por operações e produção"
* #logistics "Logística"
  "Responsável por logística e distribuição"
* #procurement "Compras"
  "Responsável por aquisições e suprimentos"
* #sales "Vendas"
  "Responsável por vendas e comercialização"

// Contatos administrativos
* #legal "Jurídico"
  "Responsável por questões jurídicas"
* #finance "Financeiro"
  "Responsável por questões financeiras"
* #hr "Recursos Humanos"
  "Responsável por recursos humanos"
* #administration "Administração"
  "Contato administrativo geral"

// Contatos técnicos especializados
* #clinical-research "Pesquisa Clínica"
  "Responsável por pesquisa clínica"
* #medical-affairs "Assuntos Médicos"
  "Responsável por assuntos médicos e científicos"
* #biostatistics "Bioestatística"
  "Responsável por análises bioestatísticas"
* #data-management "Gestão de Dados"
  "Responsável por gestão de dados clínicos"

// Contatos de emergência e segurança
* #emergency "Emergência"
  "Contato de emergência 24h"
* #safety "Segurança"
  "Responsável por segurança e eventos adversos"
* #recall "Recolhimento"
  "Responsável por recall e recolhimento de produtos"

// Contatos de comunicação
* #media "Mídia"
  "Responsável por comunicação com mídia"
* #public-relations "Relações Públicas"
  "Responsável por relações públicas"
* #customer-service "Atendimento ao Cliente"
  "Atendimento ao cliente/consumidor"

// Contatos técnicos de sistemas
* #it-support "Suporte de TI"
  "Suporte técnico de sistemas de informação"
* #edi "EDI"
  "Responsável por intercâmbio eletrônico de dados"
* #api-integration "Integração API"
  "Responsável por integrações de API"