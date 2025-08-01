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

// Hora de Criação/Registro
Extension: ExtensaoHoraCriacao
Id: extensao-hora-criacao
Title: "Hora da Criação"
* valueTime 1..1

// Data de Atualização
Extension: ExtensaoDataAtualizacao
Id: extensao-data-atualizacao
Title: "Data de Atualização"
Description: "Última data de atualização do registro"
* valueDateTime 1..1

// Hora de Atualização/Alteração
Extension: ExtensaoHoraAtualizacao
Id: extensao-hora-atualizacao
Title: "Hora da Atualização"
* valueTime 1..1

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

// --- Atendimento ---

// Programa de Saúde
Extension: ExtensaoProgramaSaude
Id: extensao-programa-saude
Title: "Programa de Saúde"
Description: "Programa de saúde institucional ao qual o atendimento está vinculado"
* valueCodeableConcept 1..1

// Data Entrada Instituição
Extension: ExtensaoDataEntradaInstituicao
Id: extensao-data-entrada-instituicao
Title: "Data Entrada Instituição"
Description: "Data em que o paciente retirou senha para atendimento"
* valueDate 1..1

// Hora Entrada Instituição
Extension: ExtensaoHoraEntradaInstituicao
Id: extensao-hora-entrada-instituicao
Title: "Hora Entrada Instituição"
Description: "Hora em que o paciente retirou senha para atendimento"
* valueTime 1..1

// Data Entrada Atendimento Administrativo
Extension: ExtensaoDataEntradaAtendimento
Id: extensao-data-entrada-atendimento
Title: "Data Entrada Atendimento Administrativo"
Description: "Data de abertura de ficha no atendimento"
* valueDate 1..1

// Hora Entrada Atendimento Administrativo
Extension: ExtensaoHoraEntradaAtendimento
Id: extensao-hora-entrada-atendimento
Title: "Hora Entrada Atendimento Administrativo"
Description: "Hora de abertura de ficha no atendimento"
* valueTime 1..1

// Data da Triagem
Extension: ExtensaoDataTriagem
Id: extensao-data-triagem
Title: "Data da Triagem"
Description: "Data da triagem/acolhimento do paciente"
* valueDate 1..1

// Hora da Triagem
Extension: ExtensaoHoraTriagem
Id: extensao-hora-triagem
Title: "Hora da Triagem"
Description: "Hora da triagem/acolhimento do paciente"
* valueTime 1..1

// Data do Atendimento Médico
Extension: ExtensaoDataAtendMedico
Id: extensao-data-atend-medico
Title: "Data do Atendimento Médico"
Description: "Data do atendimento realizado pelo profissional de saúde"
* valueDate 1..1

// Hora do Atendimento Médico
Extension: ExtensaoHoraAtendMedico
Id: extensao-hora-atend-medico
Title: "Hora do Atendimento Médico"
Description: "Hora do atendimento realizado pelo profissional de saúde"
* valueTime 1..1

// Data de Alta Médica
Extension: ExtensaoDataAltaMedica
Id: extensao-data-alta-medica
Title: "Data de Alta Médica"
Description: "Data da alta médica informada pelo profissional"
* valueDate 1..1

// Hora de Alta Médica
Extension: ExtensaoHoraAltaMedica
Id: extensao-hora-alta-medica
Title: "Hora de Alta Médica"
Description: "Hora da alta médica informada pelo profissional"
* valueTime 1..1

// Desfecho Clínico
Extension: ExtensaoDesfechoClinico
Id: extensao-desfecho-clinico
Title: "Desfecho Clínico"
Description: "Descrição do desfecho clínico ou título de alta do paciente"
* valueString 1..1

// Tipo de Acidente
Extension: ExtensaoTipoAcidente
Id: extensao-tipo-acidente
Title: "Tipo de Acidente"
Description: "Tipo de acidente relacionado ao atendimento"
* valueCodeableConcept 1..1

// Caráter da Solicitação
Extension: ExtensaoCaraterSolicitacao
Id: extensao-carater-solicitacao
Title: "Caráter da Solicitação"
Description: "Caráter do atendimento (eletivo, urgência, emergência)"
* valueString 1..1
