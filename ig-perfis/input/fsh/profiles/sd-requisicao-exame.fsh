Profile: RequisicaoExame
Parent: ServiceRequest
Id: requisicao-exame
Title: "Requisição de Exame"
Description: "Perfil baseado em ServiceRequest que representa a requisição de exames no Sistema de Registro Eletrônico de Saúde, conforme padrão DTO."

// Código do Documento do Exame
* identifier 1..1
* identifier ^short = "Número da requisição gerada (ex: OS, OE)"

// Código, Descrição e Tipo do Exame 
* code 1..1
* code ^short = "Código do exame solicitado com base em tabelas como TUSS e SIGTAP"
* code.text ^short = "Descrição do diagnóstico registrada no atendimento"
* code.coding.system ^short = "Sistema de codificação utilizado"
* code.coding.code ^short = "TUSS | SIGTAP +"

// Código do Paciente
//* subject 1..1
//* subject only Reference(Paciente)
//* subject ^short = "Código único do paciente definido no projeto (ex: CPF, prontuário)"

// Código do Atendimento
//* encounter 1..1
//* encounter only Reference(Atendimento)
//* encounter ^short = "Código do atendimento associado à requisição do exame"

// Código Profissional do Registro 
//* requester 1..1
//* requester only Reference(ProfissionalSaude)
//* requester ^short = "Profissional responsável pela requisição"

// Tipo de Requisição
* priority 0..1
* priority ^short = "rotina | emergência | checkup | protocolo +"

// Data e Hora do Registro
* authoredOn 1..1
* authoredOn ^short = "Data e Hora da requisição do exame"

// Indicação Clínica
* note 0..*
* note.text ^short = "Notas clínicas fornecidas pelo profissional solicitante"

// Categoria do Exame
* category 1..*
* category ^short = "imagens | procedimentos | laboratoriais +"

// Status/Situação do Exame
* status 1..1
* status ^short = "ativo | cancelado | suspenso | outro"
* status ^definition = "Situação atual da requisição do exame"

// Código do Provedor do Serviço
* performer 1..1
* performer ^short = "Código do centro de custo ou unidade executante"

// Localização para execução
* bodySite 0..*
* bodySite.text ^short = "membro inferior direito | tórax +"
* bodySite.text ^definition = "Parte do corpo a ser examinada"

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