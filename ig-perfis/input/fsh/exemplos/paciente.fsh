Instance: PacienteExemplo
InstanceOf: Paciente
Title: "Paciente João da Silva"
Description: "Exemplo de instância do perfil Paciente representando João da Silva."

// Nomes
* name[oficial].use = #official
* name[oficial].text = "João da Silva"
* name[usual].use = #usual
* name[usual].text = "Joãozinho"

// Identificadores
* identifier[codigo].value = "PAC12345"
* identifier[prontuario].value = "PRONT98765"
* identifier[cpf].value = "123.456.789-00"
* identifier[rg].value = "MG-12.345.678"
* identifier[cnh].value = "98765432100"
* identifier[cns].value = "898001160313569"
* identifier[cin].value = "BR123456789"
* identifier[rne].value = "W1234567"
* identifier[crnm].value = "CRNM876543"
* identifier[passaporte].value = "YA1234567"
* identifier[certidaonascimento].value = "123456789012345"
* identifier[dnv].value = "202508030001234"

// Gênero e data de nascimento
* gender = #male
* birthDate = "1985-03-20"

// Endereço
* address.line[moradia] = "Casa térrea"
* address.line[codigomunicipio] = "3550308"
* address.line[logradouro] = "Rua das Palmeiras"
* address.line[numero] = "456"
* address.line[complemento] = "Casa dos fundos"
* address.city = "São Paulo"
* address.district = "Jardim das Flores"
* address.state = "SP"
* address.country = "BR"
* address.postalCode = "01234-567"

// Estado civil
* maritalStatus.coding.code = #M

// Extensões
* extension[identidadeGenero].valueCode = #200
* extension[dataCriacao].valueDateTime = "2025-08-01"
* extension[dataAtualizacao].valueDateTime = "2025-08-03"
* extension[statusPaciente].valueCodeableConcept = #ativo
* extension[pacienteBloqueado].valueBoolean = false
