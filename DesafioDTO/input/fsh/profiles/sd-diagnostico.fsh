Profile: Diagnostico
Parent: Condition
Id: diagnostico
Title: "Diagnóstico"
Description: "Perfil que representa os dados de diagnóstico clínico registrados no Sistema de Registro Eletrônico de Saúde de acordo com os padrões da DTO."

// Código, Descrição e Tipo do Diagnóstico
* code 1..1
* code ^short = "Código do diagnóstico registrado no Sistema de Registro Eletrônico de Saúde"
* code.text 0..1
* code.text ^short = "Descrição do diagnóstico registrada no atendimento"
* code.coding.system 0..1
* code.coding.system ^short = "Sistema de codificação utilizado"
* code.coding.code 0..1
* code.coding.system ^short = "CID-10 | NANDA | CIAP12 +"

// Código do Atendimento
* encounter 1..1
* encounter only Reference(Atendimento)
* encounter ^short = "Referência ao atendimento"

// Código do Paciente
* subject 1..1
* subject only Reference(Paciente)
* subject ^short = "Referência ao paciente diagnosticado"

// Classificação do Diagnóstico
* clinicalStatus 1..1
* clinicalStatus ^short = "inicial | principal | secundário | crônico | outro"

// Profissional do Registro
* asserter 1..1
* asserter only Reference(ProfissionalSaude)
* asserter ^short = "Profissional de saúde que registrou o diagnóstico"

// Data e Hora do Registro 
* recordedDate 1..1
* recordedDate ^short = "Data e Hora de registro do diagnóstico"

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
* extension[responsavelAlteracao] ^short = "Pessoa ou sistema responsável pela última alteração!"