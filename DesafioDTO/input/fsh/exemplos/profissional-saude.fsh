Instance: ProfissionalSaudeExemplo
InstanceOf: ProfissionalSaude
Usage: #example
Title: "Exemplo de Profissional de Saúde"
Description: "Exemplo de instância do perfil Profissional de Saúde conforme os padrões da DTO."

* name.use = #official
* name.text = "Dra. Amanda Ribeiro"
* name.prefix = "Dra."

* identifier[codigo].value = "PRF123456"

* identifier[cpf].value = "12345678901"

* identifier[rg].system = "RG"
* identifier[rg].value = "MG1234567"

* identifier[cns].system = "CNS"
* identifier[cns].value = "123456789123456"

* identifier[cnh].system = "CNH"
* identifier[cnh].value = "MG1234567890"

* identifier[cin].system = "CIN"
* identifier[cin].value = "BR1234567890"

* identifier[rne].system = "RNE"
* identifier[rne].value = "RN12345678BR"

* gender = #female

* qualification[conselho].code.coding.system = "http://desafiodto.org/sid/conselho"
* qualification[conselho].code.coding.code = #CRM123456
* qualification[conselho].code.text = "CRM"
* qualification[conselho].issuer = Reference(OrganizacaoExemplo)

* qualification[especialidade].code.coding.system = "http://desafiodto.org/sid/especialidade"
* qualification[especialidade].code.coding.code = #ES123
* qualification[especialidade].code.text = "Cardiologia"

* qualification[subespecialidade].code.coding.system = "http://desafiodto.org/sid/subespecialidade"
* qualification[subespecialidade].code.coding.code = #SUB456
* qualification[subespecialidade].code.text = "Eletrofisiologia"

* qualification[ocupacao].code.coding.system = $cbo
* qualification[ocupacao].code.coding.code = #225125
* qualification[ocupacao].code.text = "Médico clínico"

* telecom[telefoneresidencialDDD].value = "62"
* telecom[telefoneresidencial].value = "32223333"
* telecom[telefonecelularDDD].value = "62"
* telecom[telefonecelular].value = "988887777"
* telecom[telefonerecadoDDD].value = "62"
* telecom[telefonerecado].value = "999998888"
* telecom[email].value = "amanda.ribeiro@example.org"

* birthDate = "1985-05-20"

* extension[identidadeGenero].valueCode = #150
* extension[dataCriacao].valueDateTime = "2023-01-01T12:00:00-03:00"
* extension[dataAtualizacao].valueDateTime = "2025-07-01T15:30:00-03:00"
* extension[motivoAtualizacao].valueString = "Atualização de telefone"
* extension[responsavelAlteracao].valueString = "Sistema XYZ"
