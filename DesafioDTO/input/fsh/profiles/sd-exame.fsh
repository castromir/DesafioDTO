Profile: Exame
Parent: Observation
Id: resultado-exame-observation
Title: "Resultado de Exame"
Description: "Perfil baseado em Observation que representa os resultados de exames no Sistema de Registro Eletrônico de Saúde, conforme padrão DTO."

* code 1..1
* code.coding.system = $csLoinc
* code.coding.code 1..1

// Código, Tipo e Descrição do Exame
// Grande parte das informações para o Exame, como categoria, notas e outras, estão já no ServiceRequest
* basedOn 1..1
* basedOn only Reference(RequisicaoExame)
* basedOn ^short = "Identificador do tipo de exame"

// Código do Paciente
* subject 1..1
* subject only Reference(Paciente)
* subject ^short = "Identificador único do paciente"

// Código do Atendimento
* encounter 1..1
* encounter only Reference(Atendimento)
* encounter ^short = "Identificador do atendimento"

// Status do Exame
* status 1..1
* status ^short = "preliminar | final | em andamento"

// Profissionais responsáveis pela liberação e registro
* performer 2..2
* performer.identifier 1..1
* performer.identifier.system 1..1
* performer.identifier.value 1..1

* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "$this.id"
* performer ^slicing.rules = #closed
* performer ^slicing.description = ""
* performer ^slicing.ordered = false

* performer contains liberacao 1..1 
and registro 1..1

* performer[liberacao].id = "liberacao"
* performer[liberacao] only Reference(Practitioner)
* performer[liberacao] ^short = "Profissional Responsável pela liberação do exame."
* performer[liberacao] ^definition = "Identificação unívoca do profissional de saúde responsável pelo liberação do exame laboratorial."

* performer[registro].id = "registro"
* performer[registro] only Reference(Practitioner)
* performer[registro] ^short = "Profissional Responsável pelo registro do exame."
* performer[registro] ^definition = "Identificação unívoca do profissional de saúde responsável pelo registro do exame laboratorial."

// Data e Hora de Realização do Exame
* effectiveDateTime 1..1
* effectiveDateTime ^short = "Data e hora de realização do exame"

// Data e Hora da Liberação do Exame
* issued 1..1
* issued ^short = "Data e hora de liberação do exame"

// Resultado do Exame (texto)
//* value[x] only string
* valueString ^short = "Resultado do exame em formato textual"

// Componentes laboratoriais (se aplicável)
* component 0..*
* component.code 1..1
* component.code.text ^short = "Nome do componente (ex: Leucócitos)"
* component.value[x] only Quantity or string
* component.valueQuantity.unit ^short = "Unidade de medida (ex: mg/dL)"
* component.valueQuantity.value ^short = "Valor do componente"
* component.referenceRange 0..1
* component.referenceRange.text ^short = "Intervalo de referência"

// Observação
* interpretation 0..1
* interpretation.text ^short = "Observação adicional sobre o resultado"

// Extensões 
* extension contains
    extensao-data-atualizacao named dataAtualizacao 1..1 and
    extensao-motivo-atualizacao named motivoAtualizacao 0..1 and
    extensao-responsavel-alteracao named responsavelAlteracao 1..1

// Data de Atualização
* extension[dataAtualizacao] ^short = "Última data de atualização do registro"

// Motivo de Atualização
* extension[motivoAtualizacao] ^short = "Motivo da última atualização do registro"

// Responsável pela Alteração
* extension[responsavelAlteracao] ^short = "Pessoa ou sistema responsável pela última alteração"