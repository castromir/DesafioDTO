Instance: OrganizacaoExemplo
InstanceOf: Organizacao
Title: "Organização Exemplo - Hospital Central"
Description: "Instância de exemplo de uma organização hospitalar seguindo o perfil Organizacao da DT."

* name = "Hospital Central de Saúde Ltda"
* alias = "Hospital Central"

* identifier[codigo].value = "HOSP001"

* identifier[cnpj].value = "12.345.678/0001-99"

* identifier[cnes].value = "1234567"

* identifier[ans].value = "987654"

* type.coding.system = "http://desafiodto.org/CodeSystem/cs-codigo-empresa"
* type.coding.code = #empresa

* address.line[codigomunicipio] = "5208707"

* extension[responsavelTecnico].valueString = "Joãozinho"
* extension[dataCriacao].valueDateTime = "2020-01-15"
* extension[dataAtualizacao].valueDateTime = "2025-08-01"
* extension[responsavelAlteracao].valueString = "sistema@hospitalcentral.org"