Instance: RequisicaoExameExemplo
InstanceOf: RequisicaoExame
Title: "Requisição de Exame - João da Silva"
Description: "Exemplo de requisição de exame laboratorial para o paciente João da Silva."

// Identificador da requisição
* identifier.system = "http://desafiodto.org/identificador/requisicao"
* identifier.value = "OE12345678"

* intent = #original-order

// Código do exame
* code.coding.system = "http://tuss.org"
* code.coding.code = #40310157
* code.coding.display = "Hemograma completo"
* code.text = "Hemograma completo"

// Paciente
* subject = Reference(PacienteExemplo)

// Atendimento
* encounter = Reference(AtendimentoExemplo)

// Profissional solicitante
* requester = Reference(ProfissionalSaudeExemplo)

// Tipo de requisição
* priority = #routine

// Data e hora do registro
* authoredOn = "2025-08-03T08:45:00-03:00"

// Indicação clínica
* note[0].text = "Paciente com quadro de febre e fadiga há 3 dias."
* note[1].text = "Solicitação conforme protocolo clínico de investigação infecciosa."

// Categoria do exame
* category[0].coding.code = #laboratoriais
* category[0].coding.display = "Laboratoriais"
* category[0].coding.system = "http://desafiodto.org/CodeSystem/cs-categoria-exame"

// Status da requisição
* status = #active

// Centro executante
* performer = Reference(OrganizacaoExemplo)

// Local de exame
* bodySite[0].text = "Veia antecubital direita"

// Extensões
* extension[dataAtualizacao].valueDateTime = "2025-08-03T10:12:00-03:00"
* extension[motivoAtualizacao].valueString = "Correção do código do exame"
* extension[responsavelAlteracao].valueString = "sistema-integrador-ses-go"
