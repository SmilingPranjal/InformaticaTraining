create table FACT_SALES (
  SALE_STORE_KEY varchar(50),
  SALE_PRODUCT_KEY varchar(50),
  SALE_VALUE number,
  SALE_QTY number
);

create table DIM_PRODUCT(
  PRODUCT_KEY varchar(50), 
  PRODUCT_ID varchar(10),
  PRODUCT_NAME varchar(50),
  PRODUCT_COST number
);

create table DIM_STORE (
  STORE_KEY varchar(50),
  STORE_NAME varchar(50),
  STORE_ID varchar(10),
  STORE_LOCATION varchar(50)
);

alter table FACT_SALES add constraint pk primary key(SALE_STORE_KEY, SALE_PRODUCT_KEY);
alter table FACT_SALES drop constraint fk_s; /* foreign key(SALE_STORE_KEY) references DIM_STORE(STORE_KEY);*/
alter table FACT_SALES drop constraint fk_p; /* foreign key(SALE_PRODUCT_KEY) references DIM_PRODUCT(PRODUCT_KEY);*/

alter table DIM_PRODUCT add constraint pk_p primary key(PRODUCT_KEY);

alter table DIM_STORE add constraint pk_s primary key(STORE_KEY);

create table join_sales_product (
  SALE_PRODUCT_KEY varchar(50),
  SALE_VALUE number,
  SALE_QTY number,
  PRODUCT_ID varchar(10),
  PRODUCT_NAME varchar(50),
  PRODUCT_COST number
);

alter table join_sales_product add constraint pk_j primary key (sale_product_key);

