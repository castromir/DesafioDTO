Instance: AtendimentoExemplo
InstanceOf: Atendimento
Title: "Atendimento de Exemplo"
Description: "Exemplo de instância do perfil de Atendimento da DTO."

* identifier.system = "http://hospital.exemplo.org/atendimentos"
* identifier.value = "ATD-20250803-001"

* account = Reference(AccountExemplo)

* subject = Reference(PacienteExemplo)
* appointment = Reference(AppointmentExemplo)
* serviceProvider = Reference(OrganizacaoExemplo)
* location.location = Reference(LocationExemplo)
* participant[0].individual = Reference(ProfissionalSaudeExemplo)

* type.coding.system = "http://desafiodto.org/CodeSystem/cs-tipo-atendimento"
* type.coding.code = #emergencia
* type.text = "Atendimento de emergência"

* class.system = "http://desafiodto.org/CodeSystem/cs-modalidade-atendimento"
* class.code = #emergencia

* status = #in-progress

* extension[programaSaude].valueString = "Saúde da Família"
* extension[dataEntradaInstituicao].valueDate = "2025-08-03"
* extension[horaEntradaInstituicao].valueTime = "08:30:00"
* extension[dataEntradaAtendimento].valueDate = "2025-08-03"
* extension[horaEntradaAtendimento].valueTime = "08:45:00"
* extension[dataTriagem].valueDate = "2025-08-03"
* extension[horaTriagem].valueTime = "08:50:00"
* extension[dataAtendimentoMedico].valueDate = "2025-08-03"
* extension[horaAtendimentoMedico].valueTime = "09:00:00"
* extension[dataAltaMedica].valueDate = "2025-08-03"
* extension[horaAltaMedica].valueTime = "11:30:00"
* extension[desfechoClinico].valueString = "Alta médica sem intercorrências"
* extension[tipoAcidente].valueString = "Queda domiciliar"
* extension[caraterSolicitacao].valueString = "Urgência"
* extension[dataCriacao].valueDate = "2025-08-03"
* extension[horaCriacao].valueTime = "08:25:00"
* extension[dataAtualizacao].valueDate = "2025-08-03"
* extension[horaAtualizacao].valueTime = "11:45:00"
* extension[motivoAtualizacao].valueString = "Inclusão da alta médica"
* extension[responsavelAlteracao].valueString = "usuario.sistema@hospital.org"
