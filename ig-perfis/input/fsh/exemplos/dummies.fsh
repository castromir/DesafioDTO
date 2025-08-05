Instance: LocationExemplo
InstanceOf: Location
Usage: #example
* name = "Local Fictício"

Instance: AppointmentExemplo
InstanceOf: Appointment
Usage: #example
* status = #cancelled
* participant[0].type.text = "Agendamento"
* participant[0].status = #accepted

Instance: AccountExemplo
InstanceOf: Account
Usage: #example
* status = #active
* name = "Conta Exemplo"
