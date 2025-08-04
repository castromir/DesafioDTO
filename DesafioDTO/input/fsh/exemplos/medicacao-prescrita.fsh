Instance: MedicacaoPrescritaExemplo
InstanceOf: MedicacaoPrescrita
Title: "Prescrição de Medicação Exemplo"
Description: "Exemplo de instância do perfil MedicacaoPrescrita."

* identifier.system = "http://hospital.exemplo.org/prescricao"
* identifier.value = "RX20250803-001"

* intent = #original-order

* subject = Reference(PacienteExemplo)
* encounter = Reference(AtendimentoExemplo)
* requester = Reference(ProfissionalSaudeExemplo)

* medicationCodeableConcept.text = "Dipirona 500mg comprimido"
//* medicationReference = Reference(MedicamentoDipirona)

* category.coding.system = "http://desafiodto.org/CodeSystem/cs-medication-type"
* category.coding.code = #prescricao
* category.text = "prescrição"

* status = #active

* dosageInstruction[0].route.coding.system = "http://terminology.hl7.org/CodeSystem/route-codes"
* dosageInstruction[0].route.coding.code = #oral
* dosageInstruction[0].route.text = "oral"

* dosageInstruction[0].timing.repeat.frequency = 3
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].timing.code.text = "3 vezes ao dia"

* dosageInstruction[0].doseAndRate.doseQuantity.value = 1

* note.text = "Recomendado ingerir após refeições."

* authoredOn = "2025-08-03T09:00:00-03:00"

* extension[dataCriacao].valueDate = "2025-08-03"
* extension[horaCriacao].valueTime = "09:00:00"
* extension[dataAtualizacao].valueDate = "2025-08-03"
* extension[horaAtualizacao].valueTime = "09:30:00"
* extension[motivoAtualizacao].valueString = "Correção da frequência de administração"
* extension[responsavelAlteracao].valueString = "usuario.sistema@hospital.org"
