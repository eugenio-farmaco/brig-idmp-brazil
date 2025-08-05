// ===============================================
// TEMPLATE PADRÃO PARA DOCUMENTAÇÃO BRIG
// Português Brasileiro - ISO 639-1: pt-BR
// ===============================================

/*
INSTRUÇÕES DE USO:

1. CABEÇALHO OBRIGATÓRIO:
   - Sempre iniciar com perfil/extensão em português brasileiro
   - Title sempre em português
   - Description detalhada em português
   - ^language = #pt-BR em todos os recursos

2. TERMINOLOGIA TÉCNICA BRASILEIRA:
   - "Detentor do Registro" (não "Marketing Authorization Holder")
   - "Forma farmacêutica" (não "Pharmaceutical form")
   - "Status legal de dispensação" (não "Legal status")
   - "Embalagem" (não "Package")
   - "Recipiente" (não "Container")
   - "Concentração/Dosagem" (não "Strength")

3. ESTRUTURA PADRÃO:
   - ^contact.name = "Autor - BRIG Brasil"
   - ^jurisdiction = urn:iso:std:iso:3166#BR
   - ^language = #pt-BR
   - ^copyright inclui "Documentação em português brasileiro"

4. ELEMENTOS OBRIGATÓRIOS:
   - Todos os ^short em português brasileiro
   - Todos os ^definition em português brasileiro
   - Exemplos com contexto nacional brasileiro
   - Referências a ANVISA quando aplicável

5. EXTENSÕES PADRÃO:
   - Sempre incluir documentation-language extension
   - Usar brazilian-terminology-standards quando aplicável
*/

// ===============================================
// EXEMPLO DE PERFIL SEGUINDO O TEMPLATE
// ===============================================

Profile: ExemploPerfilBrasileiro
Parent: DomainResource
Id: exemplo-perfil-brasileiro
Title: "Exemplo de Perfil Brasileiro"
Description: "Perfil de exemplo demonstrando padrões de documentação BRIG em português brasileiro, incluindo terminologia técnica adequada ao contexto regulatório nacional."

// Metadados obrigatórios em português brasileiro
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "BRIG Brasil - Implementação IDMP"
* ^contact.name = "Equipe BRIG Brasil"
* ^contact.telecom[0].system = #email
* ^contact.telecom[0].value = "contato@brig.farmaco.io"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^language = #pt-BR
* ^purpose = "Demonstrar estrutura padronizada para documentação em português brasileiro no contexto farmacêutico nacional"
* ^copyright = "Copyright © 2025 BRIG Brasil. Documentação em português brasileiro conforme padrões nacionais."

// Extension obrigatória para idioma
* extension contains
    http://farmaco.maxapex.net/brig/fhir/StructureDefinition/documentation-language named documentationLanguage 1..1 MS

* extension[documentationLanguage] ^short = "Idioma da documentação"
* extension[documentationLanguage] ^definition = "Confirma português brasileiro como idioma padrão para toda documentação BRIG"

// ===============================================
// EXEMPLO DE EXTENSION SEGUINDO O TEMPLATE
// ===============================================

Extension: ExemploExtensaoBrasileira
Id: exemplo-extensao-brasileira
Title: "Exemplo de Extensão Brasileira"
Description: "Extensão de exemplo demonstrando padrões de documentação BRIG com terminologia farmacêutica brasileira adequada"

// Metadados obrigatórios em português brasileiro
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "BRIG Brasil - Implementação IDMP"
* ^contact.name = "Equipe BRIG Brasil"
* ^contact.telecom[0].system = #email
* ^contact.telecom[0].value = "contato@brig.farmaco.io"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^language = #pt-BR
* ^purpose = "Exemplificar estrutura de extensão com documentação padronizada em português brasileiro"
* ^copyright = "Copyright © 2025 BRIG Brasil. Documentação técnica em português brasileiro."

* ^context[0].type = #element
* ^context[0].expression = "MedicinalProductDefinition"

* value[x] only string
* valueString ^short = "Valor em português brasileiro"
* valueString ^definition = "Campo de exemplo demonstrando documentação em português brasileiro com terminologia técnica adequada ao contexto nacional"

// ===============================================
// EXEMPLO DE VALUESET SEGUINDO O TEMPLATE
// ===============================================

ValueSet: ExemploValueSetBrasileiro
Id: exemplo-valueset-brasileiro
Title: "Exemplo de ValueSet Brasileiro"
Description: "ValueSet de exemplo com terminologia farmacêutica brasileira padronizada conforme contexto regulatório nacional"

// Metadados obrigatórios em português brasileiro
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "BRIG Brasil - Implementação IDMP"
* ^contact.name = "Equipe BRIG Brasil"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^language = #pt-BR
* ^purpose = "Demonstrar estrutura de ValueSet com terminologia brasileira adequada"
* ^copyright = "Copyright © 2025 BRIG Brasil. Terminologia em português brasileiro."

* include codes from system http://farmaco.maxapex.net/brig/fhir/CodeSystem/exemplo-brasileiro

// ===============================================
// EXEMPLO DE CODESYSTEM SEGUINDO O TEMPLATE  
// ===============================================

CodeSystem: ExemploCodeSystemBrasileiro
Id: exemplo-codesystem-brasileiro
Title: "Exemplo de CodeSystem Brasileiro"
Description: "Sistema de códigos de exemplo com terminologia farmacêutica brasileira padronizada"

// Metadados obrigatórios em português brasileiro
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = "2025-08-04"
* ^publisher = "BRIG Brasil - Implementação IDMP"
* ^contact.name = "Equipe BRIG Brasil"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^language = #pt-BR
* ^purpose = "Exemplificar sistema de códigos com terminologia brasileira adequada"
* ^copyright = "Copyright © 2025 BRIG Brasil. Códigos em português brasileiro."
* ^caseSensitive = true
* ^content = #complete

// Códigos com terminologia brasileira
* #detentor-registro "Detentor do Registro"
  "Empresa responsável pelo registro do medicamento junto à ANVISA"
* #forma-farmaceutica "Forma Farmacêutica"
  "Forma física final do medicamento conforme padrões brasileiros"
* #concentracao "Concentração"
  "Quantidade de substância ativa por unidade de dosagem"

// ===============================================
// DIRETRIZES DE QUALIDADE
// ===============================================

/*
CHECKLIST DE QUALIDADE PARA DOCUMENTAÇÃO BRIG:

□ Title em português brasileiro
□ Description detalhada em português
□ ^language = #pt-BR definido
□ ^jurisdiction = urn:iso:std:iso:3166#BR
□ ^contact.name inclui "BRIG Brasil"
□ ^copyright menciona "português brasileiro"
□ Todos os ^short em português
□ Todos os ^definition em português
□ Terminologia técnica brasileira utilizada
□ Exemplos com contexto nacional
□ Extension documentation-language incluída
□ Referências a ANVISA quando aplicável
□ Invariantes com mensagens em português
□ Comentários de código em português

TERMINOLOGIA OBRIGATÓRIA:
- Detentor do Registro ✓
- Forma farmacêutica ✓
- Status legal de dispensação ✓
- Embalagem ✓
- Recipiente ✓
- Concentração/Dosagem ✓
- Substância ativa ✓
- Via de administração ✓
- Indicação terapêutica ✓
- Contraindicação ✓

EVITAR ANGLICISMOS:
- ❌ "Marketing Authorization Holder"
- ❌ "Package"
- ❌ "Container"  
- ❌ "Strength"
- ❌ "Pharmaceutical form"
- ❌ "Legal status"
*/