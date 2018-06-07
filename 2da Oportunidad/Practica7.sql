Use Escuela
GO

create view HorarioDeAlumno as 
Select Nombre,Carrera,Materia, hora_inicio from HorarioAlumno as HA
left join Horario as H on HA.id_horario= H.id_Horario
left join Materia as Ma on H.idMaterias = ma.Id_Materias
left join Alumnos as A on HA.matricula = A.Matricula
GO

create view MaestroClases as 
Select Nombre, Materia,hora_inicio,Dias from Maestros as Me
left join Materia as Ma on Me.MatriculaM=Ma.MatriculaM
left join Horario as H on H.idMaterias =Ma.Id_Materias
GO

Create view MateriasPorTiempo as
select Minutos, COUNT(minutos)as 'Cantidad' from Materia
where Minutos>100
Group by Minutos
having count(minutos)<=180
GO
 
 
Create view MateriasDiferentes as
select Materia, COUNT(materia) as 'Cantidad' from Materia
group by Materia
GO

Create view AlumnosEnCarrera as
select Carrera, COUNT(Carrera)as Cantidad from Alumnos
Group By Carrera
GO