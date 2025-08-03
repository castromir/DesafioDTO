Profile: MedicacaoPrescrita
Parent: MedicationRequest
Id: medicacao-prescrita
Title: "Prescrição de Medicação"
Description: "Perfil para representar uma prescrição de medicamento."

// Codigo da prescrição
* identifier 1..1
* identifier.system 1..1
* identifier.value 1..1
* identifier.value ^short = "Número interno da prescrição de medicação"

// Codigo do paciente
* subject 1..1
* subject only Reference(Paciente)
* subject ^short = "Paciente para uso da medicação"

// Codigo do atendimento
* encounter 1..1
* encounter only Reference(Encounter)
* encounter ^short = "Atendimento para a prescrição"

// Codigo do profissional
* requester 1..1
* requester only Reference(ProfissionalSaude)
* requester ^short = "Profissional de Saúde responsável pela prescrição ao paciente"

* medicationCodeableConcept 1..1
* medicationCodeableConcept.text 1..1
* medicationCodeableConcept.text ^short = "Descrição do medicamento prescrito"
* medicationReference only Reference(Medication)

// Categoria da Medicação
* category 0..1
* category.coding.system 1..1
* category.coding.system = $csMedicationType
* category.coding.code 1..1
* category.coding.code from $vsMedicationType (required)
* category.text ^short = "prescrição | receita | uso contínuo +"

// Status da Medicação
* status 1..1
* status ^short = "ativo | cancelado | suspenso | outro"

// Via de Administração
* dosageInstruction.route 0..1
* dosageInstruction.route.coding.system 1..1
* dosageInstruction.route.coding.code 1..1
* dosageInstruction.route.text ^short = "oral | venosa | sonda | nasal | retal +"

// Frequência da Medicação
* dosageInstruction.timing.repeat.frequency 0..1
* dosageInstruction.timing.repeat.period 0..1
* dosageInstruction.timing.repeat.periodUnit 0..1
* dosageInstruction.timing ^short = "Frequência da medicação"

// Dosagem da Medicação
* dosageInstruction.doseAndRate.doseQuantity 0..1
* dosageInstruction.doseAndRate.doseQuantity.value ^short = "Quantidade da solicitação (dosagem)"

// Observações
* note 0..1
* note.text ^short = "Observação feita pelo profissional sobre o medicamento"

// Data e hora do registro
* authoredOn 1..1
* authoredOn ^short = "Data e hora de registro da prescrição"

// Extensões 
* extension contains
    extensao-data-criacao named dataCriacao 1..1 and
    extensao-hora-criacao named horaCriacao 1..1 and
    extensao-data-atualizacao named dataAtualizacao 1..1 and
    extensao-hora-atualizacao named horaAtualizacao 1..1 and
    extensao-motivo-atualizacao named motivoAtualizacao 0..1 and
    extensao-responsavel-alteracao named responsavelAlteracao 1..1

// Data de Criação
* extension[dataCriacao] ^short = "Data de criação do registro"

// Hora de Criação
* extension[horaCriacao] ^short = "Hora de criação do registro"

// Data de Atualização
* extension[dataAtualizacao] ^short = "Última data de atualização do registro"

// Hora de Atualização
* extension[horaAtualizacao] ^short = "Hora de atualização/alteração do registro"

// Motivo de Atualização
* extension[motivoAtualizacao] ^short = "Motivo da última atualização do registro"

// Responsável pela Alteração
* extension[responsavelAlteracao] ^short = "Pessoa ou sistema responsável pela última alteração!"