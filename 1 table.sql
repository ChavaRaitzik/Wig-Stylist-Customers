use WigDB
go
drop table if exists WigStylist
go
create table dbo.WigStylist(
    WigStylistId int not null identity primary key,
    ClientFirstName varchar(25) not null constraint ck_WigStylist_client_first_name_cannot_be_blank check(ClientFirstName > ''),
    ClientLastName varchar(25) not null constraint ck_WigStylist_client_last_name_cannot_be_blank check(ClientLastName > ''),
    ClientNickname varchar(25) not null default '',
    ClientPhoneNumber char(10) not null constraint ck_WigStylist_client_phone_number_must_be_9_digits check(len(ClientPhoneNumber) = 10 and ClientPhoneNumber not like '%[^0-9]%'),
    PreferredContactMethod varchar(8) not null constraint ck_WigStylist_preferred_contact_must_be_in_call_text_whatsapp check(PreferredContactMethod in('Call','Text','Whatsapp')),
    NumAppointments int not null constraint ck_WigStylists_num_appointments_cannot_be_negative check(NumAppointments >= 0),
    AppointmentTime datetime constraint ck_WigStylists_appointment_time_cannot_be_more_than_2_months_in_advance check(datediff(month,getdate(),AppointmentTime) <= 2),
    Style varchar(8) null constraint ck_WigStylists_style_must_be_in_straight_wavy_curly_crimpy check(Style in('straight','wavy','curly','crimpy')),
    Marketing varchar(20) not null constraint ck_WigStylist_marketinge_cannot_be_blank check(Marketing > ''),
    constraint ck_WigStylists_style_and_appointment_time_must_both_have_value_or_not 
        check((AppointmentTime is null and Style is null) or (AppointmentTime is not null and Style is not null))
-- SM I can't add unique constraint because you allow to have 3 appointments on schedule.
)