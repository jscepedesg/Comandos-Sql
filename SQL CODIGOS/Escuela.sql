create database escuela
use escuela

create table carrera(
clave_c int,
nom_c varchar(50),
durac_c float,
constraint pk_cc primary key(clave_c)
)
--Inserta valores
insert into carrera values (1,'derecho',3)
insert into carrera values (2,'Ing de sistemas',4)
--Muestra los valores de la tabla
select * from carrera

create table materia(
clave_m int,
nom_m varchar(50),
cred_m float,
constraint pk_cm primary key(clave_m)
)
--Inserta valores
insert into materia values (1,'matematicas',25)
insert into materia values (2,'español',15)
--Muestra datos de la tabla mas expecificos
select clave_m, nom_m from materia 
--Muetra datos de la tabla
select * from materia

create table profesor(
clave_p int,
nom_p varchar(150),
dir_p varchar(200),
tel_p bigint,
hor_p datetime
constraint pk_cp primary key(clave_p)
)
--Inserta valores
insert into profesor values (1,'laura','Calle azul',253456,'7:00')
insert into profesor values (2,'Andres','Calle roja',123456,'22:00')

/*Tabla alumno
con una clave foranea*/

create table alumno(
mat_a int,
nom_a varchar(150),
edad_a int,
sem_a int,
gen_a varchar(10),
clave_c1 int,
constraint pk_calu primary key(mat_a),
constraint pf_fc1 foreign key(clave_c1) references carrera (clave_c)
)
--Inserta valores
insert into alumno values (1,'Ana',18,2,'F',1)
insert into alumno values (2,'Jorge',20,3,'M',2)
--Muestra datos de la tabla
select * from alumno

create table alu_pro(
mat_alu1 int,
clave_p1 int,
constraint fk_falu1 foreign key(mat_alu1) references alumno (mat_a),
constraint fk_fp1 foreign key(clave_p1) references profesor (clave_p)
)

insert into alu_pro values (1,2)
insert into alu_pro values (2,1)

create table mat_alu(
clave_m1 int,
mat_alu2 int,
constraint fk_fm1 foreign key(clave_m1) references materia (clave_m),
constraint fk_falu2 foreign key(mat_alu2) references alumno (mat_a)
)

insert into mat_alu values (1,2)
insert into mat_alu values (2,1)

create table mat_pro(
clave_m2 int,
clave_p2 int,
constraint fk_fm2 foreign key(clave_m2) references materia (clave_m),
constraint fk_fp2 foreign key(clave_p2) references profesor (clave_p)
)

insert into mat_pro values (2,2)
insert into mat_pro values (1,1)

/*Insert*/
--Tabla carrera
insert into carrera values (3,'Diseño',3)

--Tabla materia
insert into materia values(3,'Dibujo',15)
insert into materia values(4,'Programación',20)

--Tabla alumno
insert into alumno values(4,'Sergio',19,7,'Hombre',2)
insert into alumno values(3,'Julieta',20,6,'Mujer',3)

--Alumno-Profesor
insert into alu_pro values(2,2)
insert into alu_pro values(3,2)

--Materia-ALumno
insert into mat_alu values(4,2)
insert into mat_alu values(3,3)
insert into mat_alu values(4,1)

--crea un puente entre tablas de clave primaria a foranea 
select nom_a,edad_a,sem_a,nom_c,nom_p,nom_m
 from alumno inner join carrera on alumno.clave_c1=carrera.clave_c
 inner join alu_pro on alu_pro.mat_alu1=alumno.mat_a
 inner join profesor on profesor.clave_p=alu_pro.clave_p1
 inner join mat_alu on mat_alu.mat_alu2=alumno.mat_a
 inner join materia on materia.clave_m=mat_alu.clave_m1

 --Muestra datos de alumno con una condicion

 select nom_a,edad_a,sem_a,nom_c,nom_p,nom_m
 from alumno inner join carrera on alumno.clave_c1=carrera.clave_c
 inner join alu_pro on alu_pro.mat_alu1=alumno.mat_a
 inner join profesor on profesor.clave_p=alu_pro.clave_p1
 inner join mat_alu on mat_alu.mat_alu2=alumno.mat_a
 inner join materia on materia.clave_m=mat_alu.clave_m1
 where edad_a=18