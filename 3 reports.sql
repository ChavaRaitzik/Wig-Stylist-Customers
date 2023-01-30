use WigDB
go
-- 1) I would like to see the ways that people heard about me and how many people found out about me through each way.
--     Please provide a list of my marketing forums, ordered from most to least popular.
-- SM This is not correct, because it looks on each row. The real way to do this is with a CTE which you'll learn in session 25
select w.Marketing, NumOfTimes = count(*)
from WigStylist w
group by w.Marketing
order by NumOfTimes
-- 2) I would like to be able to easily recognize my biggest clients. 
--     Please provide a list of my clients and each one's total number of appointments. Order from most to least appointments.
select w.ClientFirstName, w.ClientLastName, w.NumAppointments
from WigStylist w
order by w.NumAppointments desc
-- 3) I would like to easily see all my upcoming appointments and clients. 
--     Please provide a list of upcoming appointments with the client's name included. Order from closest to farthest away.
select w.ClientFirstName, w.ClientLastName, w.AppointmentTime
from WigStylist w
where w.AppointmentTime is not null
and w.AppointmentTime > getdate()
order by datediff(day,getdate(),w.AppointmentTime)
-- 4) I would like to be able to come into work each day, and see all my clients and their appointment times scheduled for that day. 
--     Please provide a way for me to view my appointments each day. Order from earliest to latest in the day.
select *
from WigStylist w
where day(w.AppointmentTime) = day(getdate())
order by w.AppointmentTime