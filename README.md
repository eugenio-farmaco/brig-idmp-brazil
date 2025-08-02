# BRIG - Brazilian Implementation Guide for IDMP

**Versão:** 0.0.1  
**Status:** Protótipo em Desenvolvimento  
**FHIR Versão:** R4  
**Especificação:** ISO IDMP (Identification of Medicinal Products)

## 📋 Sobre o Projeto

O BRIG (Brazilian Implementation Guide) é uma implementação brasileira dos padrões FHIR para Identificação de Produtos Medicinais (IDMP), desenvolvido para harmonizar dados de medicamentos no contexto regulatório brasileiro, especificamente para integração com sistemas ANVISA.

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

- **FHIR R4** - Base do Implementation Guide
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

## 📊 Status Atual (v0.0.1)

### ✅ Implementado
- [x] Configuração base do projeto
- [x] Estrutura de diretórios FHIR
- [x] Ambiente de desenvolvimento

### 🔄 Em Desenvolvimento
- [ ] Profile MedicinalProductDefinition-br
- [ ] Profile SubstanceDefinition-br
- [ ] Profile Organization-anvisa
- [ ] Profile PackagedProductDefinition-br
- [ ] CodeSystems brasileiros básicos
- [ ] ValueSets essenciais
- [ ] Exemplos funcionais

### 📋 Planejado
- [ ] Extensions específicas brasileiras
- [ ] Terminologias ANVISA completas
- [ ] Validação com dados reais
- [ ] Documentação técnica completa

## 🏛️ Profiles Principais

| Profile | Descrição | Status |
|---------|-----------|--------|
| `MedicinalProductDefinition-br` | Produto medicinal brasileiro | 🔄 Planejado |
| `SubstanceDefinition-br` | Substância ativa brasileira | 🔄 Planejado |
| `Organization-anvisa` | Organização no contexto ANVISA | 🔄 Planejado |
| `PackagedProductDefinition-br` | Embalagem brasileira | 🔄 Planejado |

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

**⚠️ AVISO:** Este é um protótipo em desenvolvimento (v0.0.1). Não use em produção sem validação completa.