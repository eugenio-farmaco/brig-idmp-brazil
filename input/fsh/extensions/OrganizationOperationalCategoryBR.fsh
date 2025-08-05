Extension: OrganizationOperationalCategoryBR
Id: organization-operational-category-br
Title: "Categoria Operacional da Organização - Brasil"
Description: "Categoria operacional específica da organização no contexto regulatório brasileiro"
Context: Organization
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^contact.name = "Eugênio Neves"
* ^contact.telecom[0].system = #email
* ^contact.telecom[0].value = "eugenio@farmaco.io"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Especificar a categoria operacional da organização conforme classificações regulatórias brasileiras"

* extension contains
    primaryCategory 1..1 MS and
    secondaryCategories 0..* MS and
    specializedActivities 0..* MS and
    operationalScope 0..1 MS

* extension[primaryCategory] ^short = "Categoria principal"
* extension[primaryCategory] ^definition = "Categoria operacional principal da organização"
* extension[primaryCategory].value[x] only CodeableConcept
* extension[primaryCategory].valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/organization-operational-category-br (required)

* extension[secondaryCategories] ^short = "Categorias secundárias"
* extension[secondaryCategories] ^definition = "Categorias operacionais secundárias da organização"
* extension[secondaryCategories].value[x] only CodeableConcept
* extension[secondaryCategories].valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/organization-operational-category-br (required)

* extension[specializedActivities] ^short = "Atividades especializadas"
* extension[specializedActivities] ^definition = "Atividades especializadas realizadas pela organização"
* extension[specializedActivities].value[x] only CodeableConcept
* extension[specializedActivities].valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/organization-specialized-activities-br (required)

* extension[operationalScope] ^short = "Escopo operacional"
* extension[operationalScope] ^definition = "Escopo geográfico de operação da organização"
* extension[operationalScope].value[x] only CodeableConcept
* extension[operationalScope].valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/organization-operational-scope-br (required)

ValueSet: OrganizationOperationalCategoryBR
Id: organization-operational-category-br
Title: "Categorias Operacionais de Organização - Brasil"
Description: "Categorias operacionais de organizações no contexto regulatório brasileiro"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/organization-operational-category-br

CodeSystem: OrganizationOperationalCategoryBR
Id: organization-operational-category-br
Title: "Categorias Operacionais de Organização - Brasil"
Description: "Sistema de códigos para categorias operacionais de organizações"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

// Categorias de fabricação
* #pharmaceutical-manufacturing "Fabricação Farmacêutica"
  "Fabricação de medicamentos e produtos farmacêuticos"
* #api-manufacturing "Fabricação de IFA"
  "Fabricação de Insumos Farmacêuticos Ativos"
* #device-manufacturing "Fabricação de Dispositivos"
  "Fabricação de dispositivos médicos e correlatos"
* #cosmetic-manufacturing "Fabricação de Cosméticos"
  "Fabricação de produtos cosméticos"

// Categorias de distribuição
* #wholesale-distribution "Distribuição Atacadista"
  "Distribuição atacadista de produtos regulados"
* #retail-pharmacy "Farmácia de Varejo"
  "Farmácia ou drogaria de varejo"
* #hospital-pharmacy "Farmácia Hospitalar"
  "Farmácia de estabelecimento hospitalar"

// Categorias de importação/exportação
* #import-operations "Operações de Importação"
  "Importação de produtos regulados"
* #export-operations "Operações de Exportação"
  "Exportação de produtos regulados"

// Categorias de pesquisa
* #clinical-research "Pesquisa Clínica"
  "Condução de pesquisas clínicas"
* #preclinical-research "Pesquisa Pré-clínica"
  "Pesquisa pré-clínica e desenvolvimento"
* #analytical-laboratory "Laboratório Analítico"
  "Laboratório de análises e controle de qualidade"

// Categorias de serviços
* #regulatory-consulting "Consultoria Regulatória"
  "Serviços de consultoria regulatória"
* #quality-assurance "Garantia de Qualidade"
  "Serviços de garantia e controle de qualidade"
* #logistics-services "Serviços Logísticos"
  "Serviços de logística e transporte especializado"

ValueSet: OrganizationSpecializedActivitiesBR
Id: organization-specialized-activities-br
Title: "Atividades Especializadas de Organização - Brasil"
Description: "Atividades especializadas realizadas por organizações"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/organization-specialized-activities-br

CodeSystem: OrganizationSpecializedActivitiesBR
Id: organization-specialized-activities-br
Title: "Atividades Especializadas de Organização - Brasil"
Description: "Sistema de códigos para atividades especializadas de organizações"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #controlled-substances "Substâncias Controladas"
  "Manipulação de substâncias sujeitas a controle especial"
* #sterile-production "Produção Estéril"
  "Produção de medicamentos estéreis"
* #biotechnology "Biotecnologia"
  "Produção de medicamentos biotecnológicos"
* #radiopharmaceuticals "Radiofármacos"
  "Produção e manipulação de radiofármacos"
* #blood-products "Hemoderivados"
  "Produção de produtos derivados do sangue"
* #vaccines "Vacinas"
  "Produção de vacinas e imunobiológicos"
* #clinical-trials "Ensaios Clínicos"
  "Condução de ensaios clínicos"
* #pharmacovigilance "Farmacovigilância"
  "Atividades de farmacovigilância"

ValueSet: OrganizationOperationalScopeBR
Id: organization-operational-scope-br
Title: "Escopo Operacional de Organização - Brasil"
Description: "Escopo geográfico de operação de organizações"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/organization-operational-scope-br

CodeSystem: OrganizationOperationalScopeBR
Id: organization-operational-scope-br
Title: "Escopo Operacional de Organização - Brasil"
Description: "Sistema de códigos para escopo geográfico de operação"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #local "Local"
  "Operação local (municipal)"
* #state "Estadual"
  "Operação estadual"
* #regional "Regional"
  "Operação em região específica do país"
* #national "Nacional"
  "Operação em todo território nacional"
* #international "Internacional"
  "Operação internacional com atividades no Brasil"
* #mercosul "MERCOSUL"
  "Operação nos países do MERCOSUL"
* #latin-america "América Latina"
  "Operação na América Latina"
* #global "Global"
  "Operação global"