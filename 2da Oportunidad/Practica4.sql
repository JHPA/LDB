use Escuela
Go

select * from Alumnos

insert into Alumnos select  'Humberto','LSTI',3
union select  'Saul','LSTI',4
union select  'Marco', 'LSTI',4
union select  'Samara', 'LMAD',2
union select  'Gaby', 'LM',7
union select  'Paola', 'LF',6
union select 'Fernando', 'LCC',6
union select 'Juan',  'LMAD',6
union select 'Selene','LMAD',4
union select 'Amauri', 'LSTI',2
GO

insert into Maestros select 'Alberto'
union select 'Osvaldo'
union select 'Romeo'
union select 'Jonathan'
union select 'Rosa'
union select 'Arturo'
union select 'Miguel'
union select 'Martha'
union select 'Oscar'
union select 'Braulio'
GO
select * from Maestros

Insert Into Materia select 3000000, 'SEGA', 'Miercoles',180
union select 3000001,'SF', 'Viernes', 150
union select 3000002, 'TELE3','Martes', 180
union select 3000003,'Algebra Lineal','Lunes',120 
union select 3000004, 'TI','Jueves', 120
union select 3000005, 'Lab DOO', 'Miercoles', 120
union select 3000006,'Algebra Lineal','Jueves', 120
union select 3000007,'POO','Lunes',180
union select 3000008,'DOO','Miercoles',180
union select 3000009,'Calculo','Viernes',120
select* from Materia


insert into Horario select '17:00:00',1
union select '7:00:00',2
union select '17:00:00',3
union select '12:00:00',4
union select '13:00:00',5
union select '18:00:00',6
union select '12:00:00',7
union select '16:00:00',8
union select '15:00:00',9
union select '12:00:00',10
union select '17:00:00',3
select * from Horario


insert into HorarioAlumno select 2000000, 3
union select 2000001, 2
union select 2000003, 1
union select 2000002, 4
union select 2000004, 5
union select 2000005, 6
union select 2000006, 7
union select 2000007, 8
union select 2000008, 9
union select 2000009, 10
select * from HorarioAlumno


select * from Maestros
update Alumnos
set Nombre= 'Gabriela'
where Nombre= 'Gaby'

update Maestros
set Nombre='Ricardo'
Where Nombre='Jonathan'

update HorarioAlumno
set Matricula='2000000'
where id_Horario= 7

update Horario
set hora_inicio='16:00:00'
where hora_inicio='15:00:00'

update Alumnos
set Carrera='LMAD'
where Nombre='Amauri' and Carrera='LSTI'
GO


delete from HorarioAlumno
where id_horarioAlumno=5

delete from Horario
where id_horario=5

delete from Materia
where Materia='TI'

delete from Alumnos
where Matricula=2000004

delete from Maestros
where Nombre='Martha'


