Instance: DiagnosticoExemplo
InstanceOf: Diagnostico
Usage: #example
Title: "Diagnóstico Exemplo"
Description: "Exemplo de instância do perfil de Diagnóstico clínico conforme padrão DTO."

* id = "diagnostico-exemplo-001"

* code.text = "Diabetes mellitus tipo 2"
* code.coding[0].system = "CID-10"
* code.coding[0].code = #E11

* encounter = Reference(AtendimentoExemplo)
* subject = Reference(PacienteExemplo)

* asserter = Reference(ProfissionalSaudeExemplo)
* recordedDate = "2024-07-12T14:30:00-03:00"

* clinicalStatus = #inicial

* extension[dataAtualizacao].valueDateTime = "2024-07-14T10:00:00-03:00"
* extension[motivoAtualizacao].valueString = "Revisão clínica após novos exames"
* extension[responsavelAlteracao].valueString = "Dr. João Silva - Sistema ABC"
