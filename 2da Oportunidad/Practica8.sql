Use Escuela
GO


Create procedure AñadirMateria
(@materia varchar(100),@matriculaM int,@dias varchar(50),@minutos int)
as 
begin
	Insert into Materia select @matriculaM, @materia,@dias,@minutos
end
go
exec AñadirMateria 'AS',3000001,'Lunes',60
go 
 
 
Create procedure AlumnoHorario
(@Matricula int,@idHorario int)
as 
begin
	Insert into HorarioAlumno select @Matricula,@idHorario
end
go
exec AlumnoHorario 2000003,4
go 
select * from HorarioAlumno
GO


 
Create procedure insertAlumno
(@nomb varchar(50),@carrera varchar(50), @semestre int)
as 
begin
	Insert into Alumnos select @nomb,@carrera, @semestre
end
go
exec InsertAlumno 'Alberto','LF',8
go 
select * from Alumnos



Create procedure insertMaestro
(@nomb varchar(50))
as 
begin
	Insert into Maestros select @nomb
end
go
exec insertMaestro 'Eli'
go 
select * from Maestros
GO


 
Create procedure insertHorario
(@hini time(7),@idMat int)
as 
begin
	Insert into Horario select @hini,@idMat
end
go
exec insertHorario '19:00:00',8
go 
select * from Horario
GO


create function CalcularTiempo
(@horaIn time(7), @minutos int)
returns time(7)
begin
declare @final time(7) 
	set @final= DATEADD(MINUTE,@minutos,@horaIn)
return @final 
end;
go

declare @var time(7);
exec @var = CalcularTiempo '17:00:00', 70
select @var



create function MateriasAlumno
(@mat int)
returns int
begin
declare @final int 
	
	Select @final=Count(A.Matricula) from Alumnos as A
left join HorarioAlumno as H on H.matricula= A.Matricula
where A.Matricula=@mat
return @final 
end;
go

declare @v int
exec @v = MateriasAlumno 2000003
select @v

go



create TRIGGER BajaAlumno
on Alumnos 
instead of Delete 
as 
begin 
 declare @mat int; 
 select @mat= d.Matricula from HorarioAlumno h
 inner join deleted d on d.Matricula =h.matricula
 
 delete HorarioAlumno 
 where matricula= @mat;
 
 end;

 
create TRIGGER NuevaMateria
on Materia
after Insert 
as 
begin 
	declare @mat int; 
	select @mat=M.Id_Materias from Materia as M
	inner join inserted i on i.Id_Materias=M.Id_Materias

	insert into Horario select '00:00:00', @mat
end;


