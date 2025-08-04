Instance: ResultadoExameExemplo
InstanceOf: Exame
Usage: #example
Title: "Exemplo de Resultado de Exame"
Description: "Exemplo de instância para o perfil Resultado de Exame conforme o padrão DTO."

* code = #10346-5

* basedOn = Reference(RequisicaoExameExemplo)
* subject = Reference(PacienteExemplo)
* encounter = Reference(AtendimentoExemplo)

* status = #final

* performer[liberacao].id = "liberacao"
* performer[liberacao].identifier.system = "http://desafiodto.org/sid/profissional"
* performer[liberacao].identifier.value = "LIB123"
* performer[liberacao].reference = "Practitioner/ProfissionalSaudeExemplo"

* performer[registro].id = "registro"
* performer[registro].identifier.system = "http://desafiodto.org/sid/profissional"
* performer[registro].identifier.value = "REG456"
* performer[registro].reference = "Practitioner/ProfissionalSaudeExemplo"

* effectiveDateTime = "2025-07-30T08:45:00-03:00"
* issued = "2025-07-30T16:30:00-03:00"

* valueString = "Exame dentro dos parâmetros esperados. Não foram detectadas alterações."

* component[0].code.text = "Hemoglobina"
* component[0].valueQuantity.value = 13.5
* component[0].valueQuantity.unit = "g/dL"
* component[0].referenceRange.text = "12.0 - 16.0 g/dL"

* component[1].code.text = "Leucócitos"
* component[1].valueQuantity.value = 7300
* component[1].valueQuantity.unit = "células/mm³"
* component[1].referenceRange.text = "4000 - 11000 células/mm³"

* interpretation.text = "Parâmetros laboratoriais dentro da normalidade."

* extension[dataAtualizacao].valueDateTime = "2025-08-03T11:00:00-03:00"
* extension[motivoAtualizacao].valueString = "Correção do valor de hemoglobina após revisão técnica."
* extension[responsavelAlteracao].valueString = "Sistema Central de Resultados"
