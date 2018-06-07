select * from Alumnos
where Semestre=3

select * from Maestros
where Nombre= 'Arturo'

Select * from Horario
where hora_inicio='17:00:00'

Select * from HorarioAlumno
where id_horario=3

select * from Materia
where Materia='Algebra Lineal'
GO

select Carrera, COUNT(Carrera)as Cantidad from Alumnos
Group By Carrera

select Nombre from Maestros
Group By Nombre

Select hora_inicio, COUNT(hora_inicio)as Cantidad from Horario
Group By hora_inicio

Select id_horario from HorarioAlumno
group by id_horario

select Materia, COUNT(materia) from Materia
group by Materia

GO

Select Max(hora_inicio)as 'La materia mas tarde de la semamna empieza a las:' from horario

Select MIN(hora_inicio)as 'La primer materia de la semamna empieza a las:' from horario

Select hora_inicio, COUNT(hora_inicio)as Cantidad from Horario
where hora_inicio>='8:00'
Group By hora_inicio

select COUNT(matricula) as 'Cantidad de alumnos'from Alumnos

select COUNT(matriculaM) as 'Cantidad de maestros' from Maestros
Go


Select hora_inicio, COUNT(hora_inicio)as Cantidad from Horario
where hora_inicio>='8:00'
Group By hora_inicio
Having COUNT (hora_inicio)<=2

 select count(Semestre)as 'Cantidad', Semestre from Alumnos
 group by Semestre
 having count(semestre)>1

 select Carrera, COUNT(Carrera)as Cantidad from Alumnos
Group By Carrera
having count(carrera)>2

select Minutos, COUNT(minutos)as 'Cantidad' from Materia
where Minutos>100
Group by Minutos
having count(minutos)<180

select Materia, COUNT(materia) from Materia
group by Materia
having COUNT(materia)<2
GO


select top 3 * from Alumnos

select top 5 * from Maestros

select top 2 * from Horario
where hora_inicio='17:00'

select top 3 * from HorarioAlumno
where id_horario<6

select top 3 * from Materia
where Minutos>120