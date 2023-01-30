/*
    WigStylistId int id pk
    ClientFirstName varchar(25) not null not blank
    ClientLastName varchar(25) not null not blank
    ClientNickname varchar(25) not null default ''
    ClientPhoneNumber char(10) not null len(ClientPhoneNumber) = 10 and ClientPhoneNumber not like '%[^0-9]%'
    PreferredContactMethod varchar(8) not null in('Call','Text','Whatsapp')
    NumAppointments int not null >= 0
    AppointmentTime datetime datediff(month,getdate(),AppointmentTime) <= 2
    Style varchar(8) null in('straight','wavy','curly','crimpy')
    Marketing varchar(20) not null not blank
    check((AppointmentTime is null and Style is null) or (AppointmentTime is not null and Style is not null))
*/