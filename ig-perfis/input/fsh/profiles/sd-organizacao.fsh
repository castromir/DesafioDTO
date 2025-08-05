Profile: Organizacao
Parent: Organization
Id: organizacao
Title: "Organização"
Description: "Perfil para representar uma Organização de acordo com os padrões institucionais da DT."

* name 1..1
* name ^short = "Razão Social formalizada da organização registrado no Sistema de gestão da informação"

* alias 1..1
* alias ^short = "Nome Fantasia registrada para organização registrado no Sistema de gestão da informação"

* identifier 4..4
* identifier ^short = "Identificador do estabelecimento institucional"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier ^slicing.description = "Identificação por meio do código da empresa, CNPJ, CNES e ANS (todos obrigatórios)"
* identifier ^slicing.ordered = false

* identifier contains codigo 1..1
and cnpj 1..1 
and cnes 1..1 
and ans 1..1 

// Slice Código da Empresa

* identifier[codigo] ^short = "Identificação pelo Código da Empresa"
* identifier[codigo].system 1..1
* identifier[codigo].system ^short = "O identificador da organização registrado no Sistema de gestão da informação"
* identifier[codigo].system = "http://desafiodto.org/CodeSystem/cs-codigo-empresa"
* identifier[codigo].value 1..1
* identifier[codigo].value ^short = "Número do código"

// Slice CNPJ

* identifier[cnpj] ^short = "Identificação pelo Cadastro Nacional de Pessoa Jurídica (CNPJ)"
* identifier[cnpj].system ^short = "Cadastro Nacional de Pessoa Jurídica da organização registrado no Sistema de gestão da informação"
* identifier[cnpj].system 1..1
* identifier[cnpj].system = "http://desafiodto.org/CodeSystem/cs-codigo-cnpj"
* identifier[cnpj].value 1..1
* identifier[cnpj].value ^short = "Número do CNPJ"

// Slice CNES

* identifier[cnes] ^short = "Identificação pelo Cadastro Nacional de Estabelecimentos de Saúde (CNES)"
* identifier[cnes].system ^short = "Identifica o estabelecimento junto ao Ministério da Saúde e órgãos competentes"
* identifier[cnes].system 1..1
* identifier[cnes].system = "http://desafiodto.org/CodeSystem/cs-codigo-cnes"
* identifier[cnes].value 1..1
* identifier[cnes].value ^short = "Número do CNES"

// Slice Registro ANS

* identifier[ans] ^short = "Identificação pelo Registro na Agência Nacional de Saúde (ANS)"
* identifier[ans].system ^short = "Autorização concedida pela Agência Nacional de Saúde Suplementar (ANS)
 a uma operadora de planos de saúde."
* identifier[ans].system 1..1
* identifier[ans].system = "http://desafiodto.org/CodeSystem/cs-codigo-ans"
* identifier[ans].value 1..1
* identifier[ans].value ^short = "Número do Registro ANS"

* type 0..1
* type ^short = "Regime jurídico que define como uma empresa deve funcionar e
 ser reconhecida legalmente. É também conhecida como tipo societário."
* type.coding.system 1..1
* type.coding.system ^short = "Identidade do sistema de terminologia"
* type.coding.code 1..1
* type.coding.code ^short = "empresa | associação | fundação | órgão público +"

// Endereço

* address 1..1
* address ^short = "Endereço da organização institucional"

* address.line 1..4
* address.line ^short = "Elementos necessários ao endereçamento de uma organização institucional"
* address.line ^slicing.discriminator.type = #value
* address.line ^slicing.discriminator.path = "id"
* address.line ^slicing.rules = #closed

* address.line contains codigomunicipio 1..1
and logradouro 0..1 
and numero 0..1 
and complemento 0..1

* address.line[codigomunicipio].id = "codigo municipio"
* address.line[codigomunicipio] ^short = "código de município é um código numérico que identifica um município,
e pode ser utilizado para organizar os estados brasileiros, elaborado e disponibilizado pelo IBGE."

* address.line[logradouro].id = "logradouro"
* address.line[logradouro] ^short = "Nome do logradouro da organização institucional"

* address.line[numero].id = "numero"
* address.line[numero] ^short = "Número da organização institucional"

* address.line[complemento].id = "complemento"
* address.line[complemento] ^short = "Complemento do endereço da organização institucional"

* address.city 0..1
* address.city ^short = "Descrição da Cidade que se encontra a organização"
* address.district 0..1
* address.district ^short = "Descrição do Bairro que se encontra a organização"
* address.state 0..1
* address.state ^short = "Descrição da Unidade Federativa que se encontra a organização"
* address.postalCode 0..1
* address.postalCode ^short = "Código do endereço postal de localização da organização"

// Meio de contato

* telecom 0..4
* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #closed

* telecom contains telefoneDDD 0..1 
and telefone 0..1 
and email 0..1 
and site 0..1

* telecom[telefoneDDD].system = #phone
* telecom[telefoneDDD].value 1..1
* telecom[telefoneDDD].value ^short = "Código DDD do Telefone comercial da organização
registrado no Sistema de gestão da informação"

* telecom[telefone].system = #phone
* telecom[telefone].value 1..1
* telecom[telefone].value ^short = "Número do Telefone comercial da organização
registrado no Sistema de gestão da informação"

* telecom[site].system = #url
* telecom[site].value 1..1
* telecom[site].value ^short = "Site institucional como página web da organização"

* telecom[email].system = #email
* telecom[email].value 1..1
* telecom[email].value ^short = "Endereço de correio eletrônico da organização"

// Extensoes 

* extension contains
    extensao-responsavel-tecnico named responsavelTecnico 1..1 and
    extensao-tipo-gestao named tipoGestao 0..1 and
    extensao-data-criacao named dataCriacao 1..1 and
    extensao-data-atualizacao named dataAtualizacao 1..1 and
    extensao-motivo-atualizacao named motivoAtualizacao 0..1 and
    extensao-responsavel-alteracao named responsavelAlteracao 1..1

// Responsável Técnico
* extension[responsavelTecnico] ^short = "Profissional responsável técnico pela organização"

// Tipo de Gestão
* extension[tipoGestao] ^short = "Tipo de gestão da organização (pública, privada, etc.)"

// Data de Criação
* extension[dataCriacao] ^short = "Data de criação do registro da organização"

// Data de Atualização
* extension[dataAtualizacao] ^short = "Data da última atualização do registro da organização"

// Motivo de Atualização
* extension[motivoAtualizacao] ^short = "Motivo da última atualização do registro da organização"

// Responsável pela Alteração
* extension[responsavelAlteracao] ^short = "Pessoa ou sistema que realizou a última alteração no registro"