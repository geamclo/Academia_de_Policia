--entidad academia
create table academia(
codigo_academia serial 			not null,
nombre_academia varchar (30) 	not null,
direccion_academia varchar(30) 	not null,
primary key (codigo_academia)
);
drop table academia
select*from academia


--entidad docente
create table docente(
codigo_docente serial 			not null,
nombre_docente varchar (30)		not null,
apellido_docente varchar (30)	not null,
ncedula_docente varchar (10)	not null,
ncelular_docente varchar (10)	not null,
finicio_docente date            not null,
gradoPolicia_docente varchar(25)not null,
correo_docente varchar(30)		not null,
fnacimiento_docente date		not null,
primary key (codigo_docente)
);
drop table docente
select*from docente



--entidad cadete
create table cadete(
codigo_cadete serial 			not null,
nombre_cadete varchar (30) 		not null,
apellido_cadete varchar (30) 	not null,
fechaI_cadete date              not null,
ncedula_cadete varchar (10) 	not null,
ncelular_cadete varchar (10)	not null,
fnacimiento_cadete date 		not null,
provincia_cadete varchar (30) 	not null,
ciudad_cadete varchar (30) 		not null,
correo_cadete varchar(30) 		not null,
genero_cadete varchar (15)		not null,
tipo_sangre_cadete varchar(15)  not null,
primary key (codigo_cadete)
);

drop table cadete
select*from cadete



--entidad curso
create table curso(
codigo_curso serial 		 not null,
codigo_estudiante int        not null,
codigo_docente int           not null,
codigo_academia int 		 not null,
ubicacion_curso varchar (30) not null,
primary key (codigo_curso)
);
drop table curso
select*from curso


--entidad seccion
create table seccion(
codigo_seccion serial 				not null,
codigo_curso int			 		not null,
disponibilidad_seccion varchar (25) not null,
capacidad_seccion int,
primary key (codigo_seccion)
);


drop table seccion
select*from seccion

--entidad materia
create table materia(
codigo_materia serial		 	not null,
codigo_docente int 		     	not null,
codigo_seccion int 				not null,
nombre_materia varchar (25) 	not null,
credito_materia varchar (3) 	not null,
periodo_materia varchar (25),
primary key (codigo_materia)
);
drop table materia
select*from materia


--entidad calificacion
create table calificacion(
codigo_calificacion serial 				not null,
codigo_cadete int    					not null,
codigo_docente int 						not null,
tareaCalificada_calificacion varchar 	not null,
calificacionob_calificacion int 		not null,
primary key (codigo_calificacion)
);
drop table calificacion
select*from calificacion



/*
--tablas hijas
--No ejecutare por ahora hasta 2do parcial de ser el caso
create table curso_academia(
codigo_curso int 	not null,
codigo_academia int	not null
);
drop table curso_academia

create table docente_curso(
codigo_docente 	int not null,
codigo_curso 	int not null,
fecha           int not null
);

drop table docente_curso
*/







--Insercciones sobre la tabla academia
insert into academia (nombre_academia,direccion_academia) values('la dolorosa', 'Manta calle 13 av 11');
insert into academia (nombre_academia,direccion_academia) values('la dolorosa', 'Manta calle 16 av 13');


--Inserciones a la tabla cadete
insert into cadete (nombre_cadete,apellido_cadete,fechai_cadete,ncedula_cadete,ncelular_cadete,fnacimiento_cadete,provincia_cadete,ciudad_cadete,correo_cadete,genero_cadete,tipo_sangre_cadete) values('Marco', 'Macias','02-03-2022','1316601342','0982772390','02-03-2001',
'Esmeraldas','Esmeraldas','Marco3126@gmail.com','Masculino','A positivo');
insert into cadete (nombre_cadete,apellido_cadete,fechai_cadete,ncedula_cadete,ncelular_cadete,fnacimiento_cadete,provincia_cadete,ciudad_cadete,correo_cadete,genero_cadete,tipo_sangre_cadete) values('Marco', 'Macias','02-03-2021','1316601334','0985672390','02-03-2001',
'Esmeraldas','Esmeraldas','Marco3126@gmail.com','Masculino','B positivo');
insert into cadete (nombre_cadete,apellido_cadete,fechai_cadete,ncedula_cadete,ncelular_cadete,fnacimiento_cadete,provincia_cadete,ciudad_cadete,correo_cadete,genero_cadete,tipo_sangre_cadete) values('Maria', 'Delgado','01-01-2022','1316601562','0952762380','04-03-2002',
'Manabi','Montecristi','Maria2456@gmail.com','Femenino','B positivo');
insert into cadete (nombre_cadete,apellido_cadete,fechai_cadete,ncedula_cadete,ncelular_cadete,fnacimiento_cadete,provincia_cadete,ciudad_cadete,correo_cadete,genero_cadete,tipo_sangre_cadete) values('Jose', 'Macias','02-05-2022','1316601782','0982775680','04-03-2000',
'Manabi','Manta','Maciasjose12@gmail.com','Masculino','A positivo');
insert into cadete (nombre_cadete,apellido_cadete,fechai_cadete,ncedula_cadete,ncelular_cadete,fnacimiento_cadete,provincia_cadete,ciudad_cadete,correo_cadete,genero_cadete,tipo_sangre_cadete) values('Enrrique', 'Mendoza','02-12-2022','1313401122','0982772230','04-03-2003',
'Pichincha','Quito','quique32@gmail.com','Masculino','A positivo');
insert into cadete (nombre_cadete,apellido_cadete,fechai_cadete,ncedula_cadete,ncelular_cadete,fnacimiento_cadete,provincia_cadete,ciudad_cadete,correo_cadete,genero_cadete,tipo_sangre_cadete) values('Dayana', 'Rivas','01-05-2022','1316341782','0982275680','02-03-2001',
'Manabi','Manta','Dayanaa12@gmail.com','Femenino','B positivo');
insert into cadete (nombre_cadete,apellido_cadete,fechai_cadete,ncedula_cadete,ncelular_cadete,fnacimiento_cadete,provincia_cadete,ciudad_cadete,correo_cadete,genero_cadete,tipo_sangre_cadete) values('Mery', 'Avila','02-11-2022','1313401122','0982772230','04-11-2003',
'Guayas','Guayaquil','Meryjane@gmail.com','Masculino','A positivo');
insert into cadete (nombre_cadete,apellido_cadete,fechai_cadete,ncedula_cadete,ncelular_cadete,fnacimiento_cadete,provincia_cadete,ciudad_cadete,correo_cadete,genero_cadete,tipo_sangre_cadete) values('Maria', 'Delgado','01-01-2022','1329601562','0952762330','04-07-2001',
'Manabi','Montecristi','Maria2456@gmail.com','Femenino','B Negativo');
insert into cadete (nombre_cadete,apellido_cadete,fechai_cadete,ncedula_cadete,ncelular_cadete,fnacimiento_cadete,provincia_cadete,ciudad_cadete,correo_cadete,genero_cadete,tipo_sangre_cadete) values('Maria', 'Delgado','01-01-2022','1329601562','0952762330','04-07-2001',
'Manabi','Portoviejo','Maria2456@gmail.com','Femenino','O negativo');

insert into cadete (nombre_cadete,apellido_cadete,fechai_cadete,ncedula_cadete,ncelular_cadete,fnacimiento_cadete,provincia_cadete,ciudad_cadete,correo_cadete,genero_cadete,tipo_sangre_cadete) values('Ana', 'Tenorio','01-01-2022','1329971562','0952742334','04-02-2001',
'Manabi','Portoviejo','Ana2457@gmail.com','Femenino','O negativo');

insert into cadete (nombre_cadete,apellido_cadete,fechai_cadete,ncedula_cadete,ncelular_cadete,fnacimiento_cadete,provincia_cadete,ciudad_cadete,correo_cadete,genero_cadete,tipo_sangre_cadete) values('Maria', 'Delgado','01-01-2022','1329601562','0952762330','04-07-2001',
'Manabi','Portoviejo','Maria2456@gmail.com','Femenino','O negativo');

--Inserciones sobre la tabla docente
insert into docente (Nombre_docente,apellido_docente,Ncedula_docente,Ncelular_docente,finicio_docente,gradoPolicia_docente,Correo_docente,Fnacimiento_docente) values('Jose', 'Delgado','1316601152','0982772320',
'02-02-2005','teniente','delgadoj12@gmail.com','04-02-1991');
insert into docente (Nombre_docente,apellido_docente,Ncedula_docente,Ncelular_docente,finicio_docente,gradoPolicia_docente,Correo_docente,Fnacimiento_docente) values('Manuel', 'Delgado','1316609052','0982711340',
'02-02-2004','teniente','delgadom12@gmail.com','04-02-1990');
insert into docente (Nombre_docente,apellido_docente,Ncedula_docente,Ncelular_docente,finicio_docente,gradoPolicia_docente,Correo_docente,Fnacimiento_docente) values('Manuel', 'Delgado','1316602242','0982551320',
'02-02-2002','teniente','delgadomanuel13@gmail.com','04-11-1990');
insert into docente (Nombre_docente,apellido_docente,Ncedula_docente,Ncelular_docente,finicio_docente,gradoPolicia_docente,Correo_docente,Fnacimiento_docente) values('Manuel', 'Parrales','1316602342','0982901320',
'02-02-2006','teniente','delgadomanuel789@gmail.com','04-04-2000');
insert into docente (Nombre_docente,apellido_docente,Ncedula_docente,Ncelular_docente,finicio_docente,gradoPolicia_docente,Correo_docente,Fnacimiento_docente) values('Jose', 'Macias','1316601152','0982734320',
'02-02-2003','teniente','delgadoj12@gmail.com','04-02-1991');
insert into docente (Nombre_docente,apellido_docente,Ncedula_docente,Ncelular_docente,finicio_docente,gradoPolicia_docente,Correo_docente,Fnacimiento_docente) values('Austin', 'Santos','1316644562','0923739920',
'02-02-2003','teniente','Msanchez32@gmail.com','04-02-1992');


--Inserciones sobre la tabla curso
insert into curso (codigo_estudiante,codigo_docente,codigo_academia,ubicacion_curso) values(1,1,1,'Manta');
insert into curso (codigo_estudiante,codigo_docente,codigo_academia,ubicacion_curso) values(1,2,1,'Manta');
insert into curso (codigo_estudiante,codigo_docente,codigo_academia,ubicacion_curso) values(2,2,1,'Manta');
insert into curso (codigo_estudiante,codigo_docente,codigo_academia,ubicacion_curso) values(2,3,1,'Manta');



--Insercciones sobre la tabla seccion

insert into seccion(codigo_curso,disponibilidad_seccion,capacidad_seccion) values(1,'Tarde y noche', 100);
insert into seccion(codigo_curso,disponibilidad_seccion,capacidad_seccion) values(2,'Tarde y noche', 100);

--insercciones sobre la tabla materia

insert into materia (codigo_docente,codigo_seccion,nombre_materia,credito_materia,periodo_materia) values(1,1,'Primeros auxilios','144', '2021-2022');
insert into materia (codigo_docente,codigo_seccion,nombre_materia,credito_materia,periodo_materia) values(2,2,'Primeros auxilios','144', '2021-2022');
insert into materia (codigo_docente,codigo_seccion,nombre_materia,credito_materia,periodo_materia) values(2,3,'Protocolos de seguridad','99', '2021-2022');


--insercciones sobre la tabla calificacion
insert into calificacion (codigo_cadete,codigo_docente,tareaCalificada_calificacion,calificacionob_calificacion,parcial_calificacion)
values (1,2,'Consultas en postgresql',9);
insert into calificacion (codigo_cadete,codigo_docente,tareaCalificada_calificacion,calificacionob_calificacion,parcial_calificacion)
values (1,2,'Tigger en postgresql',10);
insert into calificacion (codigo_cadete,codigo_docente,tareaCalificada_calificacion,calificacionob_calificacion)
values (1,2,'Trigger en postgresql',10);
insert into calificacion (codigo_cadete,codigo_docente,tareaCalificada_calificacion,calificacionob_calificacion)
values (1,2,'Consultas en postgresql',10);
insert into calificacion (codigo_cadete,codigo_docente,tareaCalificada_calificacion,calificacionob_calificacion)
values (1,2,'Cursor en postgresql',10);
insert into calificacion (codigo_cadete,codigo_docente,tareaCalificada_calificacion,calificacionob_calificacion)
values (1,2,'procedimiento almacenado',8);






--llaves foraneas de la tabla curso

alter table curso add constraint fk_academia_curso foreign key (codigo_academia) references academia(codigo_academia)
on delete restrict on update cascade

alter table curso add constraint fk_estudiante_curso foreign key (codigo_estudiante) references estudiante(codigo_estudiante)
on delete restrict on update cascade

alter table curso add constraint fk_docente_curso foreign key (codigo_docente) references docente (codigo_docente)
on delete restrict on update cascade


--llaves foraneas de la tabla seccion
alter table seccion add constraint fk_curso_seccion foreign key (codigo_curso) references curso(codigo_curso)
on delete restrict on update cascade

--llaves foraneas de la tabla materia

alter table materia add constraint fk_docente_seccion foreign key (codigo_seccion) references seccion (codigo_seccion)
on delete restrict on update cascade











--consultas

/*
1. Mostrar todos los cadetes que su nombre no empiece con la letra “A” y en una columna colocar si existen coincidencias 
con respecto a su nombre, apellido y ciudad. Debe aparecer en una columna nombre y apellido,
en otra columna la ciudad de origen y otra la cantidad de coincidencias */

select (nombre_cadete,apellido_cadete) as Nombre_y_Apellido, Ciudad_cadete, 
count (*) as Coincidencias from cadete 
where nombre_cadete not like 'A%'
group by nombre_cadete,apellido_cadete,ciudad_cadete
/*
2. Mostrar a todos los docentes o instructores desde el de mas antigüedad hasta el de menos antigüedad
.Debe aparecer en una columna nombres y apellidos, 
en otras columnas el tiempo que ha trabajado en la academia en años, meses y días.
 */

Select (Nombre_docente, Apellido_docente)  as Nombre_y_apellido, (current_date-finicio_docente)/365 as años,
(((current_date-finicio_docente)%365)/30) as Meses,
(((current_date-finicio_docente)%365 )%30) as Dias
From docente order by finicio_docente


/*
3. Mostrar a todos los cadetes mayores de 20 años y ordenarlos de mayor a menor.
Debe aparecer en una columna los códigos, en otras los id, los   nombres,
los apellidos y la edad en años meses y días del cadete.
*/
Select codigo_cadete,Nombre_cadete, Apellido_cadete, (current_date-fnacimiento_cadete)/365 as años,
(((current_date-fnacimiento_cadete)%365)/30) as Meses,
(((current_date-fnacimiento_cadete)%365 )%30) as Dias
From cadete where (current_date-fnacimiento_cadete)/365>20
order by fnacimiento_cadete asc


/*
4. Realizar una consulta que muestre las calificaciones y los datos correspondientes a ellas, 
ademas que a traves de las llaves foraneas en la entidad calificacion pueda determinar
y mostrar el docente que la colocó una calificacion y el estudiante que la obtuvo y los datos corespondientes a ellos. 
Debe aparecer una tabla con todos los datos, tanto del docente, el cadete y la calificaion
*/
select * from calificacion 
inner join docente  as d on  calificacion.codigo_docente=d.codigo_docente
inner join cadete  as c on calificacion.codigo_cadete=c.codigo_cadete











--llaves foraneas de la tabla calificacion
alter table calificacion add constraint fk_cadete_calificacion foreign key (codigo_cadete) references cadete(codigo_cadete)
on delete restrict on update cascade

alter table calificacion add constraint fk_docente_calificacion foreign key (codigo_docente) references docente (codigo_docente)
on delete restrict on update cascade 

 

--llaves foraneas de la tabla curso_academia

alter table curso_academia add constraint fk_curso_academia_curso foreign key (codigo_curso) references curso (codigo_curso)
on delete restrict on update cascade 
alter table curso_academia add constraint fk_curso_academia_academia foreign key (codigo_academia) references academia (codigo_academia)
on delete restrict on update cascade 
--llaves foraneas de la tabla docente_curso

alter table docente_curso add constraint fk_docente_curso_docente foreign key (codigo_docente) references docente (codigo_docente)
on delete restrict on update cascade 

alter table docente_curso add constraint fk_docente_curso_curso foreign key (codigo_curso) references curso (codigo_curso)
on delete restrict on update cascade 





