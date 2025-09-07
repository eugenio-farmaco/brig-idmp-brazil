CodeSystem: RegulatedAuthorizationTypeBR
Id: regulated-authorization-type-br
Title: "Tipo de Autorização Regulatória ANVISA"
Description: "Tipos de autorizações regulatórias conforme processos ANVISA para medicamentos"
* ^url = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/regulated-authorization-type-br"
* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"
* ^publisher = "Eugênio Neves"
* ^contact.name = "Eugênio Neves"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "eugenio@farmaco.io"
* ^caseSensitive = true
* ^content = #complete

// Tipos principais de registro
* #registration "Registro Inicial"
  "Registro inicial de medicamento na ANVISA"
* #renewal "Renovação"
  "Renovação de registro de medicamento (validade 10 anos)"
* #variation "Variação"
  "Variação pós-registro (alterações no medicamento registrado)"
* #cancellation "Cancelamento"
  "Cancelamento de registro por solicitação do detentor"

// Subtipos de registro por categoria
* #new-drug "Medicamento Novo"
  "Registro de medicamento novo (nova molécula)"
* #innovative-drug "Medicamento Inovador"
  "Registro de medicamento inovador"
* #generic-drug "Medicamento Genérico"
  "Registro de medicamento genérico"
* #similar-drug "Medicamento Similar"
  "Registro de medicamento similar"
* #biological-product "Produto Biológico"
  "Registro de produto biológico"
* #biosimilar-product "Produto Biosimilar"
  "Registro de produto biosimilar"

// Tipos de variação pós-registro
* #major-variation "Variação Maior"
  "Variação que requer aprovação prévia da ANVISA"
* #minor-variation "Variação Menor"
  "Variação de implementação imediata com comunicação"
* #administrative-variation "Variação Administrativa"
  "Variação puramente administrativa"

// Autorizações especiais
* #special-authorization "Autorização Especial"
  "Autorização especial para casos específicos"
* #emergency-authorization "Autorização de Emergência"
  "Autorização emergencial temporária"
* #compassionate-use "Uso Compassivo"
  "Autorização para uso compassivo"

ValueSet: RegulatedAuthorizationTypeBR
Id: regulated-authorization-type-br
Title: "Tipo de Autorização Regulatória Brasil"
Description: "Conjunto de valores para tipos de autorizações regulatórias ANVISA"
* ^url = "http://farmaco.maxapex.net/brig/fhir/ValueSet/regulated-authorization-type-br"
* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/regulated-authorization-type-br

// ValueSets adicionais para bases legais e procedimentos

CodeSystem: LegalBasisANVISABR
Id: legal-basis-anvisa-br
Title: "Base Legal ANVISA"
Description: "Bases legais para autorizações regulatórias ANVISA"
* ^url = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/legal-basis-anvisa-br"
* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"
* ^publisher = "Eugênio Neves"
* ^contact.name = "Eugênio Neves"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "eugenio@farmaco.io"
* ^caseSensitive = true
* ^content = #complete

* #rdc-753-2022 "RDC 753/2022"
  "Resolução que dispõe sobre registro de medicamentos sintéticos e semissintéticos"
* #rdc-948-2024 "RDC 948/2024"
  "Resolução que dispõe sobre requisitos sanitários para regularização de medicamentos"
* #rdc-317-2019 "RDC 317/2019"
  "Resolução sobre validade de registros de medicamentos"
* #lei-6360-1976 "Lei 6.360/1976"
  "Lei de Vigilância Sanitária"
* #lei-9782-1999 "Lei 9.782/1999"
  "Lei de criação da ANVISA"
* #decreto-8077-2013 "Decreto 8.077/2013"
  "Decreto sobre regulamentação da Lei 12.401/2011"

ValueSet: LegalBasisANVISABR
Id: legal-basis-anvisa-br
Title: "Base Legal ANVISA Brasil"
Description: "Conjunto de valores para bases legais ANVISA"
* ^url = "http://farmaco.maxapex.net/brig/fhir/ValueSet/legal-basis-anvisa-br"
* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/legal-basis-anvisa-br

CodeSystem: RegulatoryProcedureTypeBR
Id: regulatory-procedure-type-br
Title: "Tipo de Procedimento Regulatório Brasil"
Description: "Tipos de procedimentos regulatórios ANVISA"
* ^url = "http://farmaco.maxapex.net/brig/fhir/CodeSystem/regulatory-procedure-type-br"
* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"
* ^publisher = "Eugênio Neves"
* ^contact.name = "Eugênio Neves"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "eugenio@farmaco.io"
* ^caseSensitive = true
* ^content = #complete

* #standard-procedure "Procedimento Padrão"
  "Procedimento regulatório padrão ANVISA"
* #priority-procedure "Procedimento Prioritário"
  "Procedimento com análise prioritária"
* #fast-track "Via Rápida"
  "Procedimento via rápida para medicamentos inovadores"
* #simplified-procedure "Procedimento Simplificado"
  "Procedimento simplificado para casos específicos"
* #appeal-procedure "Procedimento de Recurso"
  "Procedimento de recurso contra decisão ANVISA"

ValueSet: RegulatoryProcedureTypeBR
Id: regulatory-procedure-type-br
Title: "Tipo de Procedimento Regulatório Brasil"
Description: "Conjunto de valores para tipos de procedimentos regulatórios"
* ^url = "http://farmaco.maxapex.net/brig/fhir/ValueSet/regulatory-procedure-type-br"
* ^version = "0.0.2"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-07"

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/regulatory-procedure-type-br