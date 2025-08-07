Instance: AtendimentoExemplo
InstanceOf: Atendimento
Title: "Atendimento de Exemplo"
Description: "Exemplo de instância do perfil de Atendimento da DTO."

* identifier.system = "http://desafiodto.org/CodeSystem/cs-numero-atendimento"
* identifier.value = "ATD-20250803-001"

* type.coding.system = "http://desafiodto.org/CodeSystem/cs-codigo-atendimento"
* type.coding.code = #Datasus

* class.system = "http://desafiodto.org/CodeSystem/cs-modalidade-atendimento"
* class.code = #emergencia

* status = #in-progress

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
* extension[dataCriacao].valueDateTime = "2025-08-03"
* extension[horaCriacao].valueTime = "08:25:00"
* extension[dataAtualizacao].valueDateTime = "2025-08-03"
* extension[horaAtualizacao].valueTime = "11:45:00"
* extension[responsavelAlteracao].valueString = "usuario.sistema@hospital.org"