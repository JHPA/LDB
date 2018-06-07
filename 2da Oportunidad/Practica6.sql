use Escuela
GO


select id_Horario,hora_inicio,Materia,Dias,Minutos from Horario as H
left join Materia as Ma on H.idMaterias = ma.Id_Materias

Select matricula, hora_inicio, Materia, Dias, Minutos from HorarioAlumno as HA
left join Horario as H on HA.id_horario= H.id_Horario
left join Materia as Ma on H.idMaterias = ma.Id_Materias

select Id_Materias, Materia,Minutos,Nombre from Materia as  Ma
left join Maestros as Me on Ma.MatriculaM = Me.MatriculaM

Select Nombre,Carrera,Materia, hora_inicio from HorarioAlumno as HA
left join Horario as H on HA.id_horario= H.id_Horario
left join Materia as Ma on H.idMaterias = ma.Id_Materias
left join Alumnos as A on HA.matricula = A.Matricula

Select Nombre, Materia,hora_inicio,Dias from Maestros as Me
left join Materia as Ma on Me.MatriculaM=Ma.MatriculaM
left join Horario as H on H.idMaterias =Ma.Id_Materias
GO

Select Ma.Materia,COUNT(Me.Nombre) from Materia as Ma
join Maestros as Me on Me.MatriculaM=Ma.MatriculaM
group by Ma.Materia

Select A.Nombre,COUNT(HA.id_horario) as 'Cantidad de Materias' from Alumnos as A
join HorarioAlumno as HA on HA.matricula = A.Matricula
group by A.Nombre


Select H.hora_inicio,COUNT(A.Nombre) as 'Cantidad de Alumnos a esta hora' from Alumnos as A
join HorarioAlumno as HA on HA.matricula = A.Matricula
join Horario as H on H.id_Horario=HA.id_horario
group by H.hora_inicio

Select M.Materia,A.Nombre from Materia as M
join Horario as H on H.idMaterias= M.Id_Materias
join HorarioAlumno as HA on HA.id_horario=H.id_Horario
join Alumnos as A on A.Matricula=HA.matricula
group by M.Materia,A.Nombre

Select M.Nombre,Count(Me.Materia) as 'Cantidad de calases asignadas' from Maestros as M
right join Materia as Me on Me.MatriculaM = M.MatriculaM
GROUP BY M.Nombre

select * 
from Horario 
where idMaterias=(
select Id_Materias
from Materia 
where Materia='SF')

with Mat as (
select *
from Horario as H
where id_Horario <> 2
)
select *
from Mat
GO



select * 
into #Alum
from Alumnos

select *
from #Alum
GO