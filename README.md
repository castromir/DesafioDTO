# Exercício Prático FHIR

## Objetivo do Desafio

Demonstrar capacidade de trabalhar com a especificação HL7 FHIR, desde a modelagem de perfis institucionais até o consumo via aplicação cliente, utilizando um servidor HAPI FHIR.

##  Escopo Geral

Este projeto implementa:

- ✅ Servidor HAPI FHIR local (versão R4)
- ✅ Perfis institucionais personalizados (StructureDefinition)
- ✅ Terminologias customizadas (ValueSet e CodeSystem)
- ✅ Guia de Implementação (IG) publicado
- ✅ Dados populados no servidor usando os perfis criados
- ✅ Aplicação web simples para consumir e exibir dados

## Recursos FHIR Personalizados

Foram criados perfis institucionais e instâncias para os seguintes recursos:

- **Organization** 
- **Practitioner** 
- **Patient** 
- **Medication**
- **Encounter** 
- **Condition** 
- **ServiceRequest** 
- **Observation**

## Estrutura do Projeto

```
/exercicio-fhir/
├── hapi-fhir-jpaserver-starter/  # Servidor HAPI FHIR
├── ig-perfis/                    # Perfis FHIR e IG Publisher
│   ├── input/fsh/               # Arquivos FHIR Shorthand (.fsh)
│   │   ├── profiles/            # StructureDefinitions
│   │   ├── code-systems/        # CodeSystems customizados
│   │   ├── value-sets/          # ValueSets customizados
│   │   ├── extensions/          # Extensões customizadas
│   │   └── exemplos/            # Instâncias de exemplo
│   └── output/                  # IG gerado (HTML)
└── web-app/                     # Aplicação frontend (opcional)
```

## Como Executar

### 1. Subir o Servidor HAPI FHIR

```bash
cd hapi-fhir-jpaserver-starter
docker-compose up -d
```

O servidor estará disponível em: `http://localhost:8080`

### 2. Gerar o Guia de Implementação (IG)

```bash
cd ig-perfis

# No Windows:
_genonce.bat

# No Linux/Mac:
_genonce.sh
```

### 3. Acessar o IG Gerado

Após a geração, abra o arquivo:
```
ig-perfis/output/index.html
```

## 📋 Conteúdo do IG

O Guia de Implementação inclui:

- **Introdução**: Objetivos e escopo do projeto
- **Perfis**: StructureDefinitions personalizados para todos os recursos
- **Terminologias**: CodeSystems e ValueSets customizados
- **Extensões**: Extensões específicas da instituição
- **Exemplos**: Instâncias de exemplo para cada recurso

### Perfis Criados

- `sd-paciente.fsh` - Perfil de Paciente com CPF e dados da mãe
- `sd-profissional-saude.fsh` - Perfil de Profissional de Saúde
- `sd-organizacao.fsh` - Perfil de Organização
- `sd-atendimento.fsh` - Perfil de Atendimento
- `sd-diagnostico.fsh` - Perfil de Diagnóstico
- `sd-exame.fsh` - Perfil de Exame
- `sd-medicacao-prescrita.fsh` - Perfil de Medicação
- `sd-requisicao-exame.fsh` - Perfil de Requisição de Exame

### Terminologias Customizadas

- **CodeSystems**:
  - `cs-identidade-genero.fsh` - Identidade de Gênero
  - `cs-medication-type.fsh` - Tipos de Medicação
  - `cs-modalidade-atendimento.fsh` - Modalidades de Atendimento

- **ValueSets**:
  - `vs-identidade-genero.fsh` - Valores para Identidade de Gênero
  - `vs-medication-type.fsh` - Valores para Tipos de Medicação
  - `vs-modalidade-atendimento.fsh` - Valores para Modalidades de Atendimento

## 🔧 Configurações Técnicas

### Servidor HAPI FHIR
- **Versão**: R4
- **Configuração**: Aceita atualizações e leituras
- **Porta**: 8080
- **Interface**: http://localhost:8080/hapi-fhir-jpaserver/fhir/

### IG Publisher
- **Template**: FHIR IG Template padrão
- **Formato**: HTML gerado automaticamente
- **Localização**: `ig-perfis/output/`

## 📊 Dados de Exemplo

O projeto inclui instâncias de exemplo para todos os recursos:

- **Pacientes**
- **Profissionais**:
- **Organizações**
- **Atendimentos**
- **Diagnósticos**
- **Medicações**
- **Exames**: 
- **Observações**: 

## 🔍 Como Testar

1. **Verificar servidor**: Acesse http://localhost:8080
2. **Consultar recursos**: Use a interface REST do HAPI FHIR
3. **Visualizar IG**: Abra `ig-perfis/output/index.html`
4. **Testar aplicação**: Execute a aplicação frontend (se disponível)

## 📝 Notas Importantes

- Todo o repositório é baseado no levantamento de dados da empresa DTO
- Todos os perfis seguem as especificações HL7 FHIR R4
- As terminologias são customizadas para o contexto brasileiro
- Os exemplos incluem dados fictícios para demonstração
- O IG é gerado automaticamente a partir dos arquivos .fsh

## 🤝 Contribuição

Este é um projeto de demonstração para exercício prático de FHIR. Para dúvidas ou melhorias, consulte a documentação do HL7 FHIR e HAPI FHIR.