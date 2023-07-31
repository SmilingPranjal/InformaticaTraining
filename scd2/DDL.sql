
CREATE TABLE SCD2
(
    ID                  varchar2(6),
    NAME                varchar2(25),
    ABOUT               varchar2(50),
    CURRENT_FLAG        char(1),
    EFFECTIVE_FROM_DATE date,
    EFFECTIVE_TO_DATE   date
);

Alter Table scd2 add constraint pk primary key(ID,NAME,ABOUT);
