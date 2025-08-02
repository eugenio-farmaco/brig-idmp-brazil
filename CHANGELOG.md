# Changelog

Todas as mudanças notáveis neste projeto serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
e este projeto adere ao [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Planejado
- Profile MedicinalProductDefinition-br
- Profile SubstanceDefinition-br  
- Profile Organization-anvisa
- Profile PackagedProductDefinition-br
- CodeSystems brasileiros básicos
- ValueSets essenciais para ANVISA
- Exemplos funcionais validados
- Documentação técnica completa

## [0.0.1] - 2025-08-02

### Added
- ✅ **Configuração inicial do projeto BRIG**
  - Inicialização do repositório Git
  - Configuração de .gitignore para projetos FHIR
  - Estrutura de diretórios FSH padrão
  - Configuração SUSHI base
  - Download IG Publisher
  
- ✅ **Ambiente de desenvolvimento**
  - Verificação Node.js v22.17.0
  - Verificação Git v2.49.0  
  - Verificação Java 19.0.1
  - Instalação SUSHI v3.16.3
  - Configuração VS Code com extensões essenciais
  
- ✅ **Estrutura de arquivos**
  - `input/fsh/` com subdiretórios organizados
  - `input/` com diretórios de recursos
  - `docs/` e `scripts/` para auxiliares
  - README.md com documentação inicial
  - CHANGELOG.md para controle de versões

- ✅ **Proteções e configurações**
  - Proteção diretório `/claude/` no .gitignore
  - Configuração repositório GitHub
  - Branch main configurada e sincronizada

### Technical Details
- **FHIR Version:** R4
- **FSH Specification:** v3.0.0
- **SUSHI Version:** v3.16.3
- **Node.js:** v22.17.0
- **Java:** 19.0.1
- **Repository:** https://github.com/eugenio-farmaco/brig-idmp-brazil

### Development Environment
- ✅ VS Code configurado
- ✅ Extensions instaladas:
  - Claude Code (by Anthropic)
  - HL7 FHIR Shorthand (by MITRE)
  - GitLens (by GitKraken)
  - Markdown All in One (by Yu Zhang)
  - YAML, XML, Error Lens, Thunder Client, Prettier
- ✅ Claude Code API configurada e funcional

### Project Structure Created
```
brig-idmp-brasil/
├── .gitignore
├── README.md
├── CHANGELOG.md
├── input/
│   ├── fsh/
│   │   ├── profiles/
│   │   ├── extensions/
│   │   ├── valuesets/
│   │   ├── codesystems/
│   │   ├── examples/
│   │   └── instances/
│   ├── includes/
│   ├── images/
│   ├── pagecontent/
│   ├── resources/
│   └── vocabulary/
├── input-cache/
│   └── publisher.jar
├── docs/
├── scripts/
└── planning/
```

## [0.0.0] - 2025-08-02

### Planning
- 📋 Análise requisitos ANVISA
- 📋 Mapeamento ISO IDMP → FHIR
- 📋 Definição arquitetura BRIG
- 📋 Setup roadmap desenvolvimento

---

## Convenções de Versionamento

### Semantic Versioning
- **MAJOR** version: Mudanças incompatíveis na API
- **MINOR** version: Funcionalidades adicionadas compatíveis
- **PATCH** version: Correções de bugs compatíveis

### Convenções de Commit
- `feat:` Nova funcionalidade
- `fix:` Correção de bug
- `docs:` Mudanças na documentação
- `chore:` Tarefas de manutenção
- `refactor:` Refatoração de código
- `test:` Adição ou correção de testes

### Status de Features
- ✅ **Completo:** Implementado e testado
- 🔄 **Em Progresso:** Desenvolvimento ativo
- 📋 **Planejado:** Definido para próximas versões
- ❌ **Cancelado:** Removido do roadmap
- 🐛 **Bug:** Problema identificado
- 🔧 **Fix:** Correção aplicada

---

**Última atualização:** 2025-08-02  
**Próxima milestone:** v0.1.0 - Primeiro profile funcional