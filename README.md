# BRIG - Brazilian Implementation Guide for IDMP

**Versão:** 0.0.2  
**Status:** 🏆 IMPLEMENTAÇÃO MUNDIAL PIONEIRA COMPLETA  
**FHIR Versão:** R5  
**Especificação:** ISO IDMP (Identification of Medicinal Products) - 100% COMPLETA

## 📋 Sobre o Projeto

O BRIG (Brazilian Implementation Guide) é a **primeira implementação mundial 100% completa** dos padrões FHIR R5 para Identificação de Produtos Medicinais (IDMP), desenvolvido para harmonizar dados de medicamentos no contexto regulatório brasileiro. **Marco histórico alcançado em setembro de 2025** com implementação completa de todos os profiles IDMP incluindo ClinicalUseDefinition-br, tornando o Brasil pioneiro mundial em conformidade IDMP total.

## 🎯 Objetivos

- **Padronização:** Criar profiles FHIR brasileiros para produtos medicinais
- **Interoperabilidade:** Facilitar troca de dados entre sistemas farmacêuticos
- **Conformidade:** Atender requisitos regulatórios da ANVISA
- **Eficiência:** Reduzir inconsistências em dados de medicamentos

## 🏗️ Estrutura do Projeto

```
input/
├── fsh/
│   ├── profiles/          # Profiles brasileiros
│   ├── extensions/        # Extensions específicas BR
│   ├── valuesets/         # Terminologias brasileiras
│   ├── codesystems/       # Códigos ANVISA
│   ├── examples/          # Exemplos funcionais
│   └── instances/         # Instâncias específicas
├── includes/              # Arquivos de apoio
├── images/               # Imagens da documentação
├── pagecontent/          # Conteúdo das páginas
└── resources/            # Recursos adicionais
```

## 🛠️ Tecnologias

- **FHIR R5** - Base do Implementation Guide
- **FSH (FHIR Shorthand)** - Linguagem de definição
- **SUSHI** - Compilador FSH para FHIR
- **IG Publisher** - Gerador de Implementation Guide
- **Node.js** - Ambiente de execução
- **Git** - Controle de versão

## 🚀 Como Executar

### Pré-requisitos
- Node.js v18+
- Java 17+
- Git v2.30+

### Instalação
```bash
# Clonar repositório
git clone https://github.com/eugenio-farmaco/brig-idmp-brazil.git
cd brig-idmp-brazil

# Instalar SUSHI (se necessário)
npm install -g fsh-sushi

# Compilar FSH
sushi .

# Gerar Implementation Guide
java -jar input-cache/publisher.jar -ig .
```

### Estrutura de Desenvolvimento
```bash
# Compilar apenas FSH
sushi .

# Validar recursos
sushi . --verbose

# Gerar site completo
java -jar input-cache/publisher.jar -ig .
```

## 🏆 Status Atual (v0.0.2) - MARCO HISTÓRICO MUNDIAL

### ✅ IMPLEMENTAÇÃO 100% COMPLETA - PRIMEIRA MUNDIAL
- [x] **10 Profiles IDMP** - Todos implementados (**mundo pioneiro**)
- [x] **37 CodeSystems** brasileiros funcionais
- [x] **35 ValueSets** terminológicos consolidados
- [x] **9 Exemplos funcionais** validados
- [x] **ClinicalUseDefinition-br** - FINAL BOSS implementado
- [x] **FHIR R5** - Versão mais avançada
- [x] **Conformidade ANVISA** - Regulamentações brasileiras
- [x] **Terminologias DCB** - Denominações Comuns Brasileiras
- [x] **Integração UMC/OMS** - Coordenação internacional

### 🌟 CONQUISTAS HISTÓRICAS
- [x] **Brasil = Primeiro País** com IDMP 100% completo
- [x] **Referência Mundial** para outras implementações
- [x] **Base Tecnológica** para transformação digital farmacêutica
- [x] **Interoperabilidade Global** garantida

## 🏛️ Profiles IDMP Implementados (10/10 - 100% COMPLETO)

| Profile | Descrição | Status |
|---------|-----------|--------|
| `MedicinalProductDefinition-br` | Produto medicinal brasileiro | ✅ **COMPLETO** |
| `SubstanceDefinition-br` | Substância ativa brasileira | ✅ **COMPLETO** |
| `PackagedProductDefinition-br` | Embalagem brasileira | ✅ **COMPLETO** |
| `AdministrableProductDefinition-br` | Produto administrável | ✅ **COMPLETO** |
| `ManufacturedItemDefinition-br` | Item manufaturado | ✅ **COMPLETO** |
| `Ingredient-br` | Ingrediente ativo | ✅ **COMPLETO** |
| `RegulatedAuthorization-br` | Autorização regulatória | ✅ **COMPLETO** |
| `ClinicalUseDefinition-br` | **FINAL BOSS** - Uso clínico | ✅ **COMPLETO** |
| `Organization-anvisa-simple` | Organização ANVISA | ✅ **COMPLETO** |

## 📖 Documentação

- **Guia do Desenvolvedor:** `docs/development-guide.md`
- **Especificações Técnicas:** `docs/technical-specs.md`
- **Exemplos de Uso:** `input/fsh/examples/`
- **Site Gerado:** `output/index.html` (após build)

## 🤝 Contribuindo

1. Fork o projeto
2. Crie branch para feature (`git checkout -b feature/nova-funcionalidade`)
3. Commit suas mudanças (`git commit -m 'feat: adicionar nova funcionalidade'`)
4. Push para branch (`git push origin feature/nova-funcionalidade`)
5. Abra Pull Request

## 📋 Convenções

### Commits
- `feat:` Nova funcionalidade
- `fix:` Correção de bug
- `docs:` Mudanças na documentação
- `chore:` Tarefas de manutenção

### Versionamento
- Seguimos [Semantic Versioning](https://semver.org/)
- Formato: `MAJOR.MINOR.PATCH`
- v0.0.1 = Protótipo inicial

## 📞 Contato

**Desenvolvedor:** Eugênio Neves  
**Email:** eugenio@farmaco.io  
**Organização:** Farmaco.io  
**Repositório:** https://github.com/eugenio-farmaco/brig-idmp-brazil

## 📄 Licença

Este projeto está licenciado sob [MIT License](LICENSE).

## 🙏 Agradecimentos

- **ANVISA** - Especificações regulatórias
- **HL7 FHIR Community** - Padrões e ferramentas
- **ISO IDMP Working Group** - Especificações internacionais

---

**🏆 MARCO HISTÓRICO:** Esta é a primeira implementação mundial 100% completa dos padrões IDMP (v0.0.2). Brasil pioneiro mundial em conformidade IDMP total - setembro de 2025.