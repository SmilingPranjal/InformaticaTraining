create table org_p (
Indexs number,
Organisation_Id varchar(100),
name varchar(100),
Country	 varchar(100),
Description	varchar(100),
Founded	number,
Industry varchar(100),
Num_emp number
);

alter table org_p add constraint pk_primary primary key (Indexs);

select * from org_p;