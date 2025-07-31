Profile: Paciente
Parent: Patient
Id: paciente
Title: "Paciente"
Description: "Perfil FHIR do recurso Patient para representar pacientes conforme modelo de dados institucional"

* name 1..2

* name ^short = "Nome(s) utilizado(s) pelo paciente"

* name ^slicing.discriminator.type = #pattern
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #closed
* name ^slicing.description = "O nome de registro (official) é obrigatório."
* name contains oficial 1..1 and usual 0..1

* name[oficial] ^short = "Nome oficial do paciente" 
* name[oficial].use = #official
* name[oficial].use ^short = "Código que identifica o tipo de nome informado"
* name[oficial].text ^short = "Representação de texto do nome completo do paciente"

* name[usual] ^short = "Nome social do paciente"
* name[usual].use = #usual

* name[usual].use ^short = "Código que identifica o tipo de nome informado"
* name[usual].text ^short = "Representação de texto do nome completo do paciente"

* identifier 3..12
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #closed

* identifier contains codigo 1..1 
and prontuario 1..1  
and cpf 1..1
and rg 0..1 
and cnh 0..1 
and cns 1..1
and cin 0..1 
and rne 0..1
and crnm 0..1 
and passaporte 0..1
and certidaonascimento 0..1 
and dnv 0..1 

// Slice Código do Paciente
* identifier[codigo].system 1..1
* identifier[codigo].system ^short = "Tipo de Código do paciente registrado no Sistema de gestão da informação"
* identifier[codigo].value 1..1
* identifier[codigo].value ^short = "Código do paciente registrado no Sistema de gestão da informação"

// Slice Prontuário
* identifier[prontuario].value 1..1
* identifier[prontuario].value ^short = "Número do prontuário do paciente registrado no Sistema de gestão da informação"
* identifier[prontuario].value ^definition = """Numero de controle assistência da organização de saúde,
 conceituando ser um documento que reúne todas as informações de saúde de um indivíduo,
 desde o histórico clínico até os tratamentos realizados."""

// Slice CPF
* identifier[cpf].value 1..1
* identifier[cpf].value ^short = "Sigla para Cadastro de Pessoa Física.
 Trata-se de uma forma de registro obrigatória a todos os brasileiros"

// Slice RG
* identifier[rg].value 1..1
* identifier[rg].value ^short = "RG, ou Registro Geral, é um documento de identificação pessoal e intransferível,
 utilizado no Brasil para comprovar a identidade dos cidadãos"

// Slice CNH
* identifier[cnh].value 1..1
* identifier[cnh].value ^short = "Número da CNH do paciente registrado no Sistema de gestão da informação"
* identifier[cnh].value ^definition = """A Carteira Nacional de Habilitação (CNH),
 também conhecida como carteira de motorista,
 carta de motorista ou carteira de habilitação, é o documento oficial que, no Brasil,
 atesta a aptidão de um cidadão para conduzir veículos automotores terrestres."""

// Slice CNS
* identifier[cns].value 1..1
* identifier[cns].value ^short = "O CNS (Cartão Nacional de Saúde) é um número Sistema Único de Saúde (SUS) para registro."

// Slice CIN
* identifier[cin].value 1..1
* identifier[cin].value ^short = "Carteira Nacional que identifica de forma única e segura qualquer individuo de nacionalidade brasileira"

// Slice RNE
* identifier[rne].value 1..1
* identifier[rne].value ^short = "Número do RNE do paciente registrado no Sistema de gestão da informação"

// Slice CRNM
* identifier[crnm].value 1..1
* identifier[crnm].value ^short = "Número único e alfanumérico atribuído a cada imigrante.
 Ele é gerado a partir das impressões digitais e dos dados pessoais do imigrante"

// Slice Passaporte
* identifier[passaporte].value 1..1
* identifier[passaporte].value ^short = "Documento de viagem que identifica o portador como nacional de um país
 e permite que ele entre em outros países."

// Slice Certidão de Nascimento
* identifier[certidaonascimento].value 1..1
* identifier[certidaonascimento].value ^short = "Documento oficial que comprova o registro civil de nascimento de uma pessoa."

// Slice DNV
* identifier[dnv].value 1..1
* identifier[dnv].value ^short = "Documento que registra o nascimento de uma criança."

* gender 1..1
* gender ^short = "Sexo biológico do paciente."

* birthDate 0..1
* birthDate ^short = "Data de Nascimento registrado oficialmente para o paciente."

* link 1..3
* link ^slicing.discriminator.type = #type
* link ^slicing.discriminator.path = "id"
* link ^slicing.rules = #closed

* link contains mae 1..1
and pai 0..1
and responsavel 0..1

// Slice Mãe

* link[mae].id 1..1
* link[mae].id = "mae"
* link[mae].other 1..1
* link[mae].other only Reference(Parente)

// Slice Pai

* link[pai].id 1..1
* link[pai].id = "pai"
* link[pai].other 1..1
* link[pai].other only Reference(Parente)

// Slice Responsavel

* link[responsavel].id 1..1
* link[responsavel].id = "responsavel"
* link[responsavel].other 1..1
* link[responsavel].other only Reference(Parente)

// Endereço

* address 0..1
* address ^short = "Endereço do paciente"

* address.line 0..5
* address.line ^short = "Elementos necessários ao endereçamento do paciente"
* address.line ^slicing.discriminator.type = #value
* address.line ^slicing.discriminator.path = "id"
* address.line ^slicing.rules = #closed

* address.line contains moradia 0..1
and codigomunicipio 0..1
and logradouro 0..1 
and numero 0..1 
and complemento 0..1

* address.line[moradia].id = "moradia"
* address.line[moradia] ^short = "Moradia é o local onde a pessoa reside, podendo ser uma casa,
 apartamento ou outro tipo de habitação"

* address.line[codigomunicipio].id = "codigo municipio"
* address.line[codigomunicipio] ^short = "código de município é um código numérico que identifica um município,
e pode ser utilizado para organizar os estados brasileiros, elaborado e disponibilizado pelo IBGE."

* address.line[logradouro].id = "logradouro"
* address.line[logradouro] ^short = "Nome do logradouro do paciente"

* address.line[numero].id = "numero"
* address.line[numero] ^short = "Número do paciente"

* address.line[complemento].id = "complemento"
* address.line[complemento] ^short = "Complemento do endereço do paciente"

* address.city 0..1
* address.city ^short = "Descrição da Cidade que se encontra o paciente"
* address.district 0..1
* address.district ^short = "Descrição do Bairro que se encontra o paciente"
* address.state 0..1
* address.state ^short = "Descrição da Unidade Federativa que se encontra o paciente"
* address.country 0..1
* address.country ^short = "Descrição da país que se encontra o paciente"
* address.postalCode 0..1
* address.postalCode ^short = "Código do endereço postal de localização do paciente"

* maritalStatus 0..1
* maritalStatus.coding.system 1..1
* maritalStatus.coding.system = $csEstadoCivil
* maritalStatus.coding.code 1..1
* maritalStatus.coding.code from $vsEstadoCivil (required)

// Meio de contato

* telecom 0..7
* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #closed

* telecom contains telefoneresidencialDDD 0..1 
and telefoneresidencial 0..1 
and telefonecelularDDD 0..1 
and telefonecelular 0..1 
and telefonecontatoDDD 0..1 
and telefonecontato 0..1 
and email 0..1 

* telecom[telefoneresidencialDDD].system = #phone
* telecom[telefoneresidencialDDD].value 1..1
* telecom[telefoneresidencialDDD].value ^short = "Código de área usado para ligar para
 um número de telefone fixo dentro de uma região."

* telecom[telefoneresidencial].system = #phone
* telecom[telefoneresidencial].value 1..1
* telecom[telefoneresidencial].value ^short = "Número de telefone fixo usado para chamadas em casa."

* telecom[telefonecelularDDD].system = #phone
* telecom[telefonecelularDDD].value 1..1
* telecom[telefonecelularDDD].value ^short = "Código de área usado para ligar para
 um número de telefone celular dentro de uma região."

* telecom[telefonecelular].system = #phone
* telecom[telefonecelular].value 1..1
* telecom[telefonecelular].value ^short = "Número de telefone usado para ligações móveis."

* telecom[telefonecontatoDDD].system = #phone
* telecom[telefonecontatoDDD].value 1..1
* telecom[telefonecontatoDDD].value ^short = "Código de área de outro número de telefone,
 geralmente usado como uma alternativa para contato."

* telecom[telefonecontato].system = #phone
* telecom[telefonecontato].value 1..1
* telecom[telefonecontato].value ^short = "Número de telefone adicional,
 que pode ser para outro membro da família ou um número de emergência."

* telecom[email].system = #email
* telecom[email].value 1..1
* telecom[email].value ^short = "Endereço de correio eletrônico do paciente
 registrado no Sistema de gestão da informação"

* extension contains
    extensao-tipo-sanguineo named tipoSanguineo 0..1 and
    extensao-identidade-genero named identidadeGenero 0..1 and
    extensao-etnia named etnia 0..1 and
    extensao-religiao named religiao 0..1 and
    extensao-profissao named profissao 0..1 and
    extensao-escolaridade named escolaridade 0..1 and
    extensao-nacionalidade named nacionalidade 0..1 and
    extensao-naturalidade named naturalidade 0..1 and
    extensao-dados-bancarios named dadosBancarios 0..1 and
    extensao-data-criacao named dataCriacao 1..1 and
    extensao-data-atualizacao named dataAtualizacao 1..1 and
    extensao-status named statusPaciente 0..1 and
    extensao-bloqueado named pacienteBloqueado 0..1

// Tipo Sanguíneo
* extension[tipoSanguineo] ^short = "Grupo e fator Rh do paciente"

// Identidade de Gênero
* extension[identidadeGenero] ^short = "Identidade de gênero declarada do paciente"

// Etnia
* extension[etnia] ^short = "Etnia autorreferida do paciente"

// Religião
* extension[religiao] ^short = "Crença religiosa informada pelo paciente"

// Profissão
* extension[profissao] ^short = "Profissão ou ocupação exercida pelo paciente"

// Escolaridade
* extension[escolaridade] ^short = "Nível de escolaridade alcançado pelo paciente"

// Nacionalidade
* extension[nacionalidade] ^short = "País de nacionalidade do paciente"

// Naturalidade
* extension[naturalidade] ^short = "Cidade e estado onde o paciente nasceu"

// Dados Bancários
* extension[dadosBancarios] ^short = "Informações bancárias do paciente para eventuais reembolsos ou pagamentos"

// Data de Criação
* extension[dataCriacao] ^short = "Data de criação do cadastro do paciente no sistema"

// Data de Atualização
* extension[dataAtualizacao] ^short = "Última data em que os dados do paciente foram atualizados"

// Status do Paciente
* extension[statusPaciente] ^short = "Situação atual do paciente no sistema (ativo, inativo, falecido, etc.)"

// Paciente Bloqueado
* extension[pacienteBloqueado] ^short = "Indica se o paciente está impedido de receber atendimentos no sistema"