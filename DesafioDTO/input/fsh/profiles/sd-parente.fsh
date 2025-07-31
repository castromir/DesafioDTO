Profile: Parente
Parent: RelatedPerson
Id: parente
Title: "Parente"
Description: "Perfil FHIR do recurso RelatedPerson para representar um parente ou responsável de um Patient"

* name 1..1
* name.text

* identifier.system 1..1
* identifier.system ^short = "CPF da mãe, do pai ou do responsável do paciente"

* identifier.value 1..1
* identifier.value ^short = "Número do CPF da mãe, do pai ou do responsável do paciente"

* patient 1..1
* patient only Reference(Paciente)

* relationship 1..1
* relationship.coding.system 1..1
* relationship.coding.system ^short = "Tipo do Código de parentesco/relação com o paciente"
* relationship.coding.code 1..1
* relationship.coding.code ^short = "Código de parentesco/relação com o paciente"