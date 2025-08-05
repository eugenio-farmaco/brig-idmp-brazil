Extension: OrganizationRegulatoryStatusBR
Id: organization-regulatory-status-br
Title: "Status Regulatório da Organização - Brasil"
Description: "Status regulatório da organização junto à ANVISA e outros órgãos brasileiros"
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
* ^purpose = "Capturar informações sobre o status regulatório da organização no contexto brasileiro"

* extension contains
    anvisaStatus 1..1 MS and
    anvisaLicenseDate 0..1 MS and
    anvisaExpiryDate 0..1 MS and
    restrictions 0..* MS and
    lastInspectionDate 0..1 MS and
    gmpCertification 0..1 MS

* extension[anvisaStatus] ^short = "Status ANVISA"
* extension[anvisaStatus] ^definition = "Status atual da organização junto à ANVISA"
* extension[anvisaStatus].value[x] only CodeableConcept
* extension[anvisaStatus].valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/organization-anvisa-status-br (required)

* extension[anvisaLicenseDate] ^short = "Data da licença ANVISA"
* extension[anvisaLicenseDate] ^definition = "Data de emissão da licença ou autorização ANVISA"
* extension[anvisaLicenseDate].value[x] only date

* extension[anvisaExpiryDate] ^short = "Data de expiração"
* extension[anvisaExpiryDate] ^definition = "Data de expiração da licença ou autorização"
* extension[anvisaExpiryDate].value[x] only date

* extension[restrictions] ^short = "Restrições"
* extension[restrictions] ^definition = "Restrições ou limitações impostas pela ANVISA"
* extension[restrictions].value[x] only string

* extension[lastInspectionDate] ^short = "Data da última inspeção"
* extension[lastInspectionDate] ^definition = "Data da última inspeção realizada pela ANVISA"
* extension[lastInspectionDate].value[x] only date

* extension[gmpCertification] ^short = "Certificação GMP"
* extension[gmpCertification] ^definition = "Status da certificação de Boas Práticas de Fabricação"
* extension[gmpCertification].value[x] only CodeableConcept
* extension[gmpCertification].valueCodeableConcept from http://farmaco.maxapex.net/brig/fhir/ValueSet/gmp-certification-status-br (required)

ValueSet: OrganizationANVISAStatusBR
Id: organization-anvisa-status-br
Title: "Status ANVISA da Organização - Brasil"
Description: "Status da organização junto à ANVISA"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/organization-anvisa-status-br

CodeSystem: OrganizationANVISAStatusBR
Id: organization-anvisa-status-br
Title: "Status ANVISA da Organização - Brasil"
Description: "Sistema de códigos para status da organização junto à ANVISA"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #active "Ativa"
  "Organização com licenças ativas junto à ANVISA"
* #suspended "Suspensa"
  "Organização com atividades temporariamente suspensas"
* #cancelled "Cancelada"
  "Licenças canceladas pela ANVISA"
* #expired "Vencida"
  "Licenças vencidas e não renovadas"
* #under-review "Em Análise"
  "Processos em análise pela ANVISA"
* #pending-renewal "Renovação Pendente"
  "Aguardando renovação de licenças"
* #restricted "Restrita"
  "Operação com restrições impostas pela ANVISA"

ValueSet: GMPCertificationStatusBR
Id: gmp-certification-status-br
Title: "Status de Certificação GMP - Brasil"
Description: "Status de certificação de Boas Práticas de Fabricação"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/gmp-certification-status-br

CodeSystem: GMPCertificationStatusBR
Id: gmp-certification-status-br
Title: "Status de Certificação GMP - Brasil"
Description: "Sistema de códigos para status de certificação GMP"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-02"
* ^publisher = "Eugênio Neves"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^caseSensitive = true
* ^content = #complete

* #certified "Certificada"
  "Certificação GMP válida e ativa"
* #expired "Vencida"
  "Certificação GMP vencida"
* #suspended "Suspensa"
  "Certificação GMP temporariamente suspensa"
* #pending "Pendente"
  "Processo de certificação em andamento"
* #not-applicable "Não Aplicável"
  "Certificação GMP não aplicável para este tipo de organização"
* #denied "Negada"
  "Certificação GMP negada"