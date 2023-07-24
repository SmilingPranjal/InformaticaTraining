create table FACT_SALES (
  SALE_STORE_KEY,
  SALE_PRODUCT_KEY,
  SALE_VALUE,
  SALE_QTY
);

create table DIM_PRODUCT(
  PRODUCT_KEY, 
  PRODUCT_ID,
  PRODUCT_NAME,
  PRODUCT_COST
);

create table DIM_STORE (
  STORE_KEY,
  STORE_NAME,
  STORE_ID,
  STORE_LOCATION
);

alter table FACT_SALES add constraint pk primary key(SALE_STORE_KEY, SALE_PRODUCT_KEY);
alter table FACT_SALES add constraint fk_s foreign key(SALE_STORE_KEY) references DIM_STORE(STORE_KEY);
alter table FACT_SALES add constraint fk_p foreign key(SALE_PRODUCT_KEY) references DIM_PRODUCT(PRODUCT_KEY);

alter table DIM_PRODUCT add constraint pk_p primary key(SALE_PRODUCT_KEY);

alter table DIM_STORE add constraint pk_s primary key(SALE_STORE_KEY);
