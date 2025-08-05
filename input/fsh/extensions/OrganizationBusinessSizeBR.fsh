Extension: OrganizationBusinessSizeBR
Id: organization-business-size-br
Title: "Porte da Organização - Brasil"
Description: "Classificação do porte da organização conforme critérios brasileiros"
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
* ^purpose = "Classificar o porte da organização conforme critérios brasileiros (receita bruta, número de funcionários, etc.)"

* extension contains
    sizeCategory 1..1 MS and
    annualRevenue 0..1 MS and
    employeeCount 0..1 MS and
    classification 0..1 MS

* extension[sizeCategory] ^short = "Categoria de porte"
* extension[sizeCategory] ^definition = "Categoria de porte da empresa conforme classificação brasileira"
* extension[sizeCategory].value[x] only CodeableConcept
* extension[sizeCategory].valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/organization-size-category-br (required)

* extension[annualRevenue] ^short = "Receita bruta anual"
* extension[annualRevenue] ^definition = "Receita bruta anual da organização em reais"
* extension[annualRevenue].value[x] only Money

* extension[employeeCount] ^short = "Número de funcionários"
* extension[employeeCount] ^definition = "Número total de funcionários da organização"
* extension[employeeCount].value[x] only positiveInt

* extension[classification] ^short = "Classificação especial"
* extension[classification] ^definition = "Classificação especial da organização (MEI, EPP, etc.)"
* extension[classification].value[x] only CodeableConcept
* extension[classification].valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/organization-special-classification-br (required)

ValueSet: OrganizationSizeCategoryBR
Id: organization-size-category-br
Title: "Categorias de Porte de Organização - Brasil"
Description: "Categorias de porte de organizações conforme legislação brasileira"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/organization-size-category-br

CodeSystem: OrganizationSizeCategoryBR
Id: organization-size-category-br
Title: "Categorias de Porte de Organização - Brasil"
Description: "Sistema de códigos para categorias de porte de organizações no Brasil"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #microempresa "Microempresa"
  "Microempresa - receita bruta anual igual ou inferior a R$ 360.000,00"
* #pequena-empresa "Empresa de Pequeno Porte"
  "Empresa de Pequeno Porte - receita bruta anual superior a R$ 360.000,00 e igual ou inferior a R$ 4.800.000,00"
* #media-empresa "Empresa de Médio Porte"
  "Empresa de Médio Porte - receita bruta anual entre R$ 4.800.000,00 e R$ 300.000.000,00"
* #grande-empresa "Empresa de Grande Porte"
  "Empresa de Grande Porte - receita bruta anual superior a R$ 300.000.000,00"

ValueSet: OrganizationSpecialClassificationBR
Id: organization-special-classification-br
Title: "Classificações Especiais de Organização - Brasil"
Description: "Classificações especiais de organizações conforme legislação brasileira"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/organization-special-classification-br

CodeSystem: OrganizationSpecialClassificationBR
Id: organization-special-classification-br
Title: "Classificações Especiais de Organização - Brasil"
Description: "Sistema de códigos para classificações especiais de organizações"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #mei "MEI"
  "Microempreendedor Individual"
* #epp "EPP"
  "Empresa de Pequeno Porte"
* #me "ME"
  "Microempresa"
* #simples-nacional "Simples Nacional"
  "Optante pelo Simples Nacional"
* #lucro-presumido "Lucro Presumido"
  "Tributação pelo Lucro Presumido"
* #lucro-real "Lucro Real"
  "Tributação pelo Lucro Real"
* #multinacional "Multinacional"
  "Empresa multinacional"
* #startup "Startup"
  "Empresa de tecnologia em estágio inicial"
* #ong "ONG"
  "Organização Não Governamental"
* #oscip "OSCIP"
  "Organização da Sociedade Civil de Interesse Público"
* #cooperativa "Cooperativa"
  "Sociedade cooperativa"
* #fundacao "Fundação"
  "Fundação privada"
* #instituto "Instituto"
  "Instituto privado"
* #associacao "Associação"
  "Associação civil"