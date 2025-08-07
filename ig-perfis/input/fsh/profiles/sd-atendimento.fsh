Profile: Atendimento
Parent: Encounter
Id: atendimento
Title: "Atendimento"
Description: "Perfil FHIR do recurso Encounter para representar dados de atendimento conforme modelo de dados institucional da DTO"

* identifier 1..1
* identifier ^short = "Identificação por meio do código de atendimento (obrigatório)"

// Nº Atendimento
* identifier.system 1..1
* identifier.system ^short = "Código do Número de controle do atendimento no estabelecimento"
* identifier.value 1..1
* identifier.value ^short = "Número de controle do atendimento no estabelecimento"

// Nº Conta (Faturamento)
//* account 0..1
//* account only Reference(Account)

// Código do Paciente
//* subject 1..1
//* subject only Reference(Paciente)

// Código do Agendamento
//* appointment 0..1
//* appointment only Reference(Appointment)

// Código da Organização
//* serviceProvider 1..1
//* serviceProvider only Reference(Organizacao)

// Código da Unidade
//* location.location 0..1
//* location.location only Reference(Location)

// Código do Profissional
//* participant.individual 1..1
//* participant.individual only Reference(ProfissionalSaude)

// Tipo de Atendimento
* type 0..1
* type.coding.system 1..1
* type.coding.system ^short = "Código do Tipo de Atendimento"
* type.coding.code 1..1
* type.coding.code ^short = "tabela 50 TISS | Datasus +"

// Modalidade/Regime de Atendimento
* class 1..1 
* class.system 1..1
* class.system = $csModalidadeAtendimento
* class.system ^short = "Código da Modalidade do atendimento"
* class.code 1..1
* class.code from $vsModalidadeAtendimento
* class.code ^short = "internação | emergência | ambulatório | SADT +"

// Status do Atendimento
* status 1..1
* status ^short = "ativo | finalizado | cancelado"

// Extensões  
* extension contains
    extensao-programa-saude named programaSaude 0..1 and
    extensao-data-entrada-instituicao named dataEntradaInstituicao 1..1 and
    extensao-hora-entrada-instituicao named horaEntradaInstituicao 1..1 and
    extensao-data-entrada-atendimento named dataEntradaAtendimento 1..1 and
    extensao-hora-entrada-atendimento named horaEntradaAtendimento 1..1 and
    extensao-data-triagem named dataTriagem 1..1 and
    extensao-hora-triagem named horaTriagem 1..1 and
    extensao-data-atend-medico named dataAtendimentoMedico 1..1 and
    extensao-hora-atend-medico named horaAtendimentoMedico 1..1 and
    extensao-data-alta-medica named dataAltaMedica 1..1 and
    extensao-hora-alta-medica named horaAltaMedica 1..1 and
    extensao-desfecho-clinico named desfechoClinico 0..1 and
    extensao-tipo-acidente named tipoAcidente 0..1 and
    extensao-carater-solicitacao named caraterSolicitacao 0..1 and
    extensao-data-criacao named dataCriacao 1..1 and
    extensao-hora-criacao named horaCriacao 1..1 and
    extensao-data-atualizacao named dataAtualizacao 1..1 and
    extensao-hora-atualizacao named horaAtualizacao 1..1 and
    extensao-motivo-atualizacao named motivoAtualizacao 0..1 and
    extensao-responsavel-alteracao named responsavelAlteracao 1..1

// Programa de Saúde
* extension[programaSaude] ^short = "Nome ou identificação do programa de saúde (ex.: Hiperdia, Saúde da Família)"

// Data de Entrada na Instituição
* extension[dataEntradaInstituicao] ^short = "Data de retirada de senha (YYYY-MM-DD)"

// Hora de Entrada na Instituição
* extension[horaEntradaInstituicao] ^short = "Hora de retirada de senha (HH:MM:SS)"

// Data de Entrada no Atendimento
* extension[dataEntradaAtendimento] ^short = "Data de entrada do atendimento (YYYY-MM-DD)"

// Hora de Entrada no Atendimento
* extension[horaEntradaAtendimento] ^short = "Hora de entrada do atendimento (HH:MM:SS)"

// Data da Triagem
* extension[dataTriagem] ^short = "Data da triagem (YYYY-MM-DD)"

// Hora da Triagem
* extension[horaTriagem] ^short = "Hora da triagem (HH:MM:SS)"

// Data do Atendimento Médico
* extension[dataAtendimentoMedico] ^short = "Data do atendimento médico"

// Hora do Atendimento Médico
* extension[horaAtendimentoMedico] ^short = "Hora do atendimento médico"

// Data da Alta Médica
* extension[dataAltaMedica] ^short = "Data da alta médica"

// Hora da Alta Médica
* extension[horaAltaMedica] ^short = "Hora da alta médica"

// Desfecho Clínico
* extension[desfechoClinico] ^short = "Descrição do desfecho clínico"

// Tipo de Acidente
* extension[tipoAcidente] ^short = "Tipo de acidente"

// Caráter da Solicitação
* extension[caraterSolicitacao] ^short = "Caráter da solicitação do atendimento"

// Data de Criação
* extension[dataCriacao] ^short = "Data de criação do registro"

// Hora de Criação
* extension[horaCriacao] ^short = "Hora de criação do registro"

// Data de Atualização
* extension[dataAtualizacao] ^short = "Última data de atualização do registro"

// Hora de Atualização
* extension[horaAtualizacao] ^short = "Hora de atualização do registro"

// Motivo de Atualização
* extension[motivoAtualizacao] ^short = "Motivo da última atualização do registro"

// Responsável pela Alteração
* extension[responsavelAlteracao] ^short = "Pessoa ou sistema responsável pela última alteração"
