// Responsável Técnico
Extension: ExtensaoResponsavelTecnico
Id: extensao-responsavel-tecnico
Title: "Responsável Técnico"
Description: "Responsável Técnico"
* valueString 1..1

// Tipo de Gestão
Extension: ExtensaoTipoGestao
Id: extensao-tipo-gestao
Title: "Tipo de Gestão"
Description: "Tipo de Gestão que a organização é submetida (Ex.: Pública, Privada, Filantrópica, Autarquia e Outras)"
* valueCodeableConcept 1..1

// Tipo Sanguíneo
Extension: ExtensaoTipoSanguineo
Id: extensao-tipo-sanguineo
Title: "Tipo Sanguíneo"
Description: "Grupo sanguíneo e fator Rh"
* valueCodeableConcept 1..1

// Identidade de Gênero
Extension: ExtensaoIdentidadeGenero
Id: extensao-identidade-genero
Title: "Identidade de Gênero"
Description: "Identidade de gênero declarada"
* valueCodeableConcept 1..1

// Etnia
Extension: ExtensaoEtnia
Id: extensao-etnia
Title: "Etnia"
Description: "Etnia autorreferida"
* valueCodeableConcept 1..1

// Raça/cor
Extension: ExtensaoRacaCor
Id: extensao-raca-cor
Title: "Raca/Cor"
Description: "Raca/cor autorreferida"
* valueCodeableConcept 1..1

// Religião
Extension: ExtensaoReligiao
Id: extensao-religiao
Title: "Religião"
Description: "Crença religiosa informada"
* valueCodeableConcept 1..1

// Profissão
Extension: ExtensaoProfissao
Id: extensao-profissao
Title: "Profissão"
Description: "Profissão ou ocupação exercida"
* valueCodeableConcept 1..1

// Escolaridade
Extension: ExtensaoEscolaridade
Id: extensao-escolaridade
Title: "Escolaridade"
Description: "Nível de escolaridade alcançado"
* valueCodeableConcept 1..1

// Nacionalidade
Extension: ExtensaoNacionalidade
Id: extensao-nacionalidade
Title: "Nacionalidade"
Description: "País de nacionalidade"
* valueCodeableConcept 1..1

// Naturalidade
Extension: ExtensaoNaturalidade
Id: extensao-naturalidade
Title: "Naturalidade"
Description: "Cidade e estado de nascimento"
* valueString 1..1

// Dados Bancários
Extension: ExtensaoDadosBancarios
Id: extensao-dados-bancarios
Title: "Dados Bancários"
Description: "Informações bancárias para reembolsos ou pagamentos"
* valueString 1..1

// Data de Criação
Extension: ExtensaoDataCriacao
Id: extensao-data-criacao
Title: "Data de Criação"
Description: "Data de criação do registro"
* valueDateTime 1..1

// Data de Atualização
Extension: ExtensaoDataAtualizacao
Id: extensao-data-atualizacao
Title: "Data de Atualização"
Description: "Última data de atualização do registro"
* valueDateTime 1..1

// Motivo de Atualização
Extension: ExtensaoMotivoAtualizacao
Id: extensao-motivo-atualizacao
Title: "Motivo de Atualização"
Description: "Motivo da última atualização do registro"
* valueString 1..1

// Motivo de Alteração
Extension: ExtensaoMotivoAlteracao
Id: extensao-motivo-alteracao
Title: "Motivo de Alteração"
Description: "Motivo da última alteração do registro"
* valueString 1..1

// Responsável pela Alteração
Extension: ExtensaoResponsavelAlteracao
Id: extensao-responsavel-alteracao
Title: "Responsável pela Alteração"
Description: "Indica quem foi o responsável pela última alteração no registro"
* valueString 1..1

// Status
Extension: ExtensaoStatus
Id: extensao-status
Title: "Status"
Description: "Situação atual do registro (ativo, inativo, etc.)"
* valueCodeableConcept 1..1

// Registro Bloqueado
Extension: ExtensaoBloqueado
Id: extensao-bloqueado
Title: "Registro Bloqueado"
Description: "Indica se o registro está bloqueado para uso"
* valueBoolean 1..1
