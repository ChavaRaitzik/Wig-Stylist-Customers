use WigDB
go
delete WigStylist
go
insert WigStylist(ClientFirstName,ClientLastName,ClientPhoneNumber, PreferredContactMethod,NumAppointments,AppointmentTime,Style,Marketing)
select 'Esti', 'Cohen', '7324569876', 'WhatsApp', 12, '01/01/2023 1:20pm', 'curly', 'Word of Mouth'
union select 'Esti', 'Cohen', '7324569876', 'WhatsApp', 12, '01/09/2022 2:00pm', 'straight', 'Word of Mouth'
union select 'Esti', 'Cohen', '7324569876', 'WhatsApp', 12, '01/09/2022 2:20pm', 'wavy', 'Word of Mouth'
union select 'Chani', 'Katzenstein', '7326490004', 'Call', 3, '01/05/2023 10:00am', 'crimpy', 'Magazine'
union select 'Chani', 'Katzenstein', '7326490004', 'Call', 3, '01/05/2023 10:20am', 'curly', 'Magazine'
union select 'Yehudis', 'Fisch', '7329087654', 'Text', 0, '01/05/2023 10:40am', 'straight', 'Word of Mouth'
union select 'Tami', 'Felder', '7326578098', 'WhatsApp', 15,'01/02/2023 12:00pm', 'crimpy', 'WhatsApp Status'
union select 'Tami', 'Felder', '7326578098', 'WhatsApp', 15,'01/02/2023 12:20pm', 'wavy', 'WhatsApp Status'
union select 'Shani', 'Schwartz', '7325076754', 'Text', 8, '01/01/2023 1:00pm', 'straight', 'Business Card'
union select 'Shani', 'Schwartz', '7325076754', 'Text', 8, '01/05/2023 2:00pm', 'curly', 'Business Card'
union select 'Esther', 'Cohen', '7326789900', 'Call', 6, '01/05/2023 1:20pm', 'crimpy', 'Word of Mouth'
union select 'Esther', 'Cohen', '7326789900', 'Call', 6, '01/05/2023 1:40pm', 'curly', 'Word of Mouth'
union select 'Tzipporah', 'Simon', '7326098767', 'Call', 18, null, null, 'Business Card'
union select 'Shifra', 'Hirsch', '7329086576', 'Text', 3, null, null, 'Word of Mouth'
union select 'Nechama', 'Raitzik', '7320985690', 'WhatsApp', 7, null, null, 'Word of Mouth'
union select 'Penina', 'Gellis', '7320678765', 'Call', 1, null, null, 'Magazine'
union select 'Breindy', 'Stern', '7326577890', 'WhatsApp', 1, null, null, 'WhatsApp Status'