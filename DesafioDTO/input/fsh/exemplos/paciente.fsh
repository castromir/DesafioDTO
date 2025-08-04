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
* identifier[codigo].system = "http://desafiodto.org/identificador/codigo"
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

// Vínculos familiares
* link[mae].id = "mae"
* link[mae].other = Reference(ParenteExemplo)
* link[mae].type = #refer

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
* maritalStatus.coding.code = #casado

// Meios de contato
* telecom[telefoneresidencialDDD].value = "11"
* telecom[telefoneresidencial].value = "3222-4455"
* telecom[telefonecelularDDD].value = "11"
* telecom[telefonecelular].value = "99988-7766"
* telecom[telefonecontatoDDD].value = "11"
* telecom[telefonecontato].value = "98877-6655"
* telecom[email].value = "joao.silva@email.com"

// Extensões
* extension[tipoSanguineo].valueCodeableConcept.text = "O+"
* extension[identidadeGenero].valueCode = #200
* extension[etnia].valueCodeableConcept.text = "Pardo"
* extension[racacor].valueCodeableConcept.text = "Parda"
* extension[religiao].valueCodeableConcept.text = "Católico"
* extension[profissao].valueCodeableConcept.text = "Eletricista"
* extension[escolaridade].valueCodeableConcept.text = "Ensino médio completo"
* extension[nacionalidade].valueCodeableConcept.text = "Brasileiro"
* extension[naturalidade].valueCodeableConcept.text = "Belo Horizonte - MG"
* extension[dadosBancarios].valueString = "Banco XYZ - Agência 1234 - Conta Corrente 56789-0"
* extension[dataCriacao].valueDate = "2025-08-01"
* extension[dataAtualizacao].valueDate = "2025-08-03"
* extension[statusPaciente].valueCode = #ativo
* extension[pacienteBloqueado].valueBoolean = false
