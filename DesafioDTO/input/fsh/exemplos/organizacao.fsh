Instance: OrganizacaoExemplo
InstanceOf: Organizacao
Title: "Organização Exemplo - Hospital Central"
Description: "Instância de exemplo de uma organização hospitalar seguindo o perfil Organizacao da DT."

* name = "Hospital Central de Saúde Ltda"
* alias = "Hospital Central"

* identifier[codigo].system = "http://desafiodto.org/identificador/codigo"
* identifier[codigo].value = "HOSP001"

* identifier[cnpj].system = "http://desafiodto.org/identificador/cnpj"
* identifier[cnpj].value = "12.345.678/0001-99"

* identifier[cnes].system = "http://desafiodto.org/identificador/cnes"
* identifier[cnes].value = "1234567"

* identifier[ans].system = "http://desafiodto.org/identificador/ans"
* identifier[ans].value = "987654"

* type.coding.system = "http://desafiodto.org/CodeSystem/cs-organizacao-tipo"
* type.coding.code = #empresa

* address.line[codigomunicipio] = "5208707"
* address.line[logradouro] = "Rua das Flores"
* address.line[numero] = "123"
* address.line[complemento] = "Bloco B"

* address.city = "Recife"
* address.district = "Boa Vista"
* address.state = "PE"
* address.postalCode = "50050-000"

* telecom[telefoneDDD].value = "81"
* telecom[telefone].value = "3232-4545"
* telecom[email].value = "contato@hospitalcentral.org"
* telecom[site].value = "https://www.hospitalcentral.org"

* extension[responsavelTecnico].valueReference = Reference(ProfissionalSaudeExemplo)
* extension[tipoGestao].valueCode = #privada
* extension[dataCriacao].valueDate = "2020-01-15"
* extension[dataAtualizacao].valueDate = "2025-08-01"
* extension[motivoAtualizacao].valueString = "Atualização do endereço e telefone"
* extension[responsavelAlteracao].valueString = "sistema@hospitalcentral.org"
