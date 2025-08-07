Profile: ProfissionalSaude
Parent: Practitioner
Id: profissional-saude
Title: "Profissional de Saúde"
Description: """Perfil para representar os dados de um profissional de saúde de acordo com
 os padrões institucionais da DTO"""

* name 1..1
* name.use = #official
* name.text 1..1
* name.text ^short = "Nome completo do profissional registrado no Sistema de gestão da informação"
* name.prefix 1..1
* name.prefix ^short = "Prefixo do profissional de saúde"

* identifier 2..7

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier ^slicing.ordered = true
* identifier ^slicing.description = "Deve conter código e CPF, sendo os demais identificadores opcionais."

* identifier contains codigo 1..1
and cpf 1..1 
and rg 0..1 
and cns 0..1 
and cnh 0..1 
and cin 0..1 
and rne 0..1 

// Slice Código do Profissional

* identifier[codigo].system = "http://desafiodto.org/CodeSystem/cs-codigo-profissional"
* identifier[codigo].value 1..1
* identifier[codigo].value ^short = "Código do profissional registrado no Sistema de gestão da informação"

// Slice CNPJ

* identifier[cpf].system = "http://desafiodto.org/CodeSystem/cs-cpf"
* identifier[cpf].value 1..1
* identifier[cpf].value ^short = "Cadastro de Pessoa Física do profissional 
registrado no Sistema de gestão da informação"

// Slice rg

* identifier[rg].system = "http://desafiodto.org/CodeSystem/cs-rg"
* identifier[rg].value 1..1
* identifier[rg].value ^short = "Registro Geral do profissional
 registrado no Sistema de gestão da informação"

// Slice cns

* identifier[cns].system = "http://desafiodto.org/CodeSystem/cs-cns"
* identifier[cns].value 1..1
* identifier[cns].value ^short = "CNS - Cadastro Nacional de Saúde do profissional
 registrado no Sistema de gestão da informação"

// Slice cnh

* identifier[cnh].system = "http://desafiodto.org/CodeSystem/cs-cnh"
* identifier[cnh].value 1..1
* identifier[cnh].value ^short = "CNH - Carteira Nacional de Habilitação do profissional
 registrado no Sistema de gestão da informação"

// Slice cin

* identifier[cin].system = "http://desafiodto.org/CodeSystem/cs-cin"
* identifier[cin].value 1..1
* identifier[cin].value ^short = "CIN - Carteira de Identidade Nacional do profissional
 registrado no Sistema de gestão da informação"

// Slice rne

* identifier[rne].system = "http://desafiodto.org/CodeSystem/cs-rne"
* identifier[rne].value 1..1
* identifier[rne].value ^short = "RNE - Registro Nacional de Estrangeiro do profissional
 registrado no Sistema de gestão da informação"

* gender 1..1
* gender ^short = "Sexo do profissional registrado no Sistema de gestão da informação"

* qualification 3..4

* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.coding.system"
* qualification ^slicing.rules = #closed
* qualification ^slicing.ordered = true
* qualification ^slicing.description = "Deve conter conselho, especialidade e ocupação,
 sendo a subespecialidade opcional."

* qualification contains conselho 1..1
and especialidade 1..1 
and subespecialidade 0..1 
and ocupacao 1..1 

// Slice conselho

* qualification[conselho].code.coding.system 1..1
* qualification[conselho].code.coding.system = "http://desafiodto.org/CodeSystem/cs-codigo-conselho"
* qualification[conselho].code.coding.system ^short = "Código do Conselho de Classe"
* qualification[conselho].code.coding.code 1..1
* qualification[conselho].code.coding.code ^short = "Nº do Código do Conselho de Classe do profissional
 registrado no Sistema de gestão da informação"
* qualification[conselho].code.text 1..1
* qualification[conselho].code.text ^short = "CRM | COREN | CRN | outro +"
* qualification[conselho].issuer 1..1
//* qualification[conselho].issuer only Reference(Organizacao)
* qualification[conselho].issuer ^short = "Organização Institucional registrada ao conselho do profissional
 registrado no Sistema de gestão da informação"

// Slice especialidade

* qualification[especialidade].code.coding.system 1..1
* qualification[especialidade].code.coding.system = "http://desafiodto.org/CodeSystem/cs-codigo-especialidade"
* qualification[especialidade].code.coding.system ^short = "Código da Especialidade"
* qualification[especialidade].code.coding.code 1..1
* qualification[especialidade].code.coding.code ^short = "Nº do código da Especialidade do profissional
 registrado no Sistema de gestão da informação"

// Slice subespecialidade

* qualification[subespecialidade].code.coding.system 1..1
* qualification[subespecialidade].code.coding.system = "http://desafiodto.org/CodeSystem/cs-codigo-subespecialidade"
* qualification[subespecialidade].code.coding.system ^short = "Código da Subespecialidade"
* qualification[subespecialidade].code.coding.code 1..1
* qualification[subespecialidade].code.coding.code ^short = "Nº do código da Subespecialidade do profissional
 registrado no Sistema de gestão da informação"

// Slice ocupacao

* qualification[ocupacao].code.coding.system 1..1
* qualification[ocupacao].code.coding.system = $cbo
* qualification[ocupacao].code.coding.system ^short = "Código da Ocupação"
* qualification[ocupacao].code.coding.code 1..1
* qualification[ocupacao].code.coding.code ^short = "Nº do código da Ocupação do profissional
 registrado no Sistema de gestão da informação"

// Meio de contato

* telecom 0..7
* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #closed

* telecom contains telefoneresidencialDDD 0..1 
and telefoneresidencial 0..1 
and telefonecelularDDD 0..1 
and telefonecelular 0..1 
and telefonerecadoDDD 0..1 
and telefonerecado 0..1 
and email 0..1 

* telecom[telefoneresidencialDDD].system = #phone
* telecom[telefoneresidencialDDD].value 1..1
* telecom[telefoneresidencialDDD].value ^short = "Código DDD do Telefone residencial do profissional
registrado no Sistema de gestão da informação"

* telecom[telefoneresidencial].system = #phone
* telecom[telefoneresidencial].value 1..1
* telecom[telefoneresidencial].value ^short = "Número do Telefone residencial do profissional
registrado no Sistema de gestão da informação"

* telecom[telefonecelularDDD].system = #phone
* telecom[telefonecelularDDD].value 1..1
* telecom[telefonecelularDDD].value ^short = "Código DDD do Telefone celular do profissional
registrado no telefonecelularDDD de gestão da informação"

* telecom[telefonecelular].system = #phone
* telecom[telefonecelular].value 1..1
* telecom[telefonecelular].value ^short = "Número do Telefone celular do profissional
registrado no Sistema de gestão da informação"

* telecom[telefonerecadoDDD].system = #phone
* telecom[telefonerecadoDDD].value 1..1
* telecom[telefonerecadoDDD].value ^short = "Código DDD do Telefone de recado do profissional
registrado no Sistema de gestão da informação"

* telecom[telefonerecado].system = #phone
* telecom[telefonerecado].value 1..1
* telecom[telefonerecado].value ^short = "Número do Telefone de recado do profissional
registrado no Sistema de gestão da informação"

* telecom[email].system = #email
* telecom[email].value 1..1
* telecom[email].value ^short = "Endereço de correio eletrônico do profissional
 registrado no Sistema de gestão da informação"

* birthDate 0..1
* birthDate ^short = "Data de nascimento do profissional
 registrado no Sistema de gestão da informação"


* extension contains
    extensao-identidade-genero named identidadeGenero 0..1 and
    extensao-data-criacao named dataCriacao 1..1 and
    extensao-data-atualizacao named dataAtualizacao 1..1 and
    extensao-motivo-atualizacao named motivoAtualizacao 0..1 and
    extensao-responsavel-alteracao named responsavelAlteracao 0..1

// Identidade de Gênero
* extension[identidadeGenero] ^short = "Identidade de gênero declarada"

// Data de Criação
* extension[dataCriacao] ^short = "Data de criação do registro"

// Data de Atualização
* extension[dataAtualizacao] ^short = "Última data de atualização do registro"

// Motivo de Atualização
* extension[motivoAtualizacao] ^short = "Motivo da última atualização do registro"

// Responsável pela Alteração
* extension[responsavelAlteracao] ^short = "Pessoa ou sistema responsável pela última alteração!"