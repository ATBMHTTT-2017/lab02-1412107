 --connect sys
--Create the administrative user, who will administer policies, procedures, database
--connect as sys
create user sysadmin_lab01 identified by sysadmin_lab01;
grant create session to sysadmin_lab01;
grant dba,connect to sysadmin_lab01;
grant all privileges to sysadmin_lab01;

--connect sys
-----------------------tao tai khoan-------------------------------------
--------------1. truong duan
--1. DUAN 1,phong NHANSU
GRANT CREATE SESSION TO DANS001TR IDENTIFIED BY DANS001TR;
GRANT connect, resource to DANS001TR;
--2. DUAN 2, phong KEHOACH
GRANT CREATE SESSION TO DAKH001TR IDENTIFIED BY DAKH001TR;
GRANT connect, resource to DAKH001TR;
--3. DUAN 3, phong DEAN
GRANT CREATE SESSION TO DADA001TR IDENTIFIED BY DADA001TR;
GRANT connect, resource to DADA001TR;
--4. DUAN 4, phong KINHDOANH
GRANT CREATE SESSION TO DAKD001TR IDENTIFIED BY DAKD001TR;
GRANT connect, resource to DAKD001TR;
--5. DUAN 5, phong THONGTIN
GRANT CREATE SESSION TO DATT001TR IDENTIFIED BY DATT001TR;
GRANT connect, resource to DATT001TR;

--------------2. truong phong
--1. NHANSU
GRANT CREATE SESSION TO NSTR IDENTIFIED BY NSTR;
GRANT connect, resource to NSTR;
--2. KEHOACH
GRANT CREATE SESSION TO KHTR IDENTIFIED BY KHTR;
GRANT connect, resource to KHTR;
--3. DUAN
GRANT CREATE SESSION TO DATR IDENTIFIED BY DATR;
GRANT connect, resource to DATR;
--4. KINHDOANH
GRANT CREATE SESSION TO KDTR IDENTIFIED BY KDTR;
GRANT connect, resource to KDTR;
--5. THONGTIN
GRANT CREATE SESSION TO TTTR IDENTIFIED BY TTTR;
GRANT connect, resource to TTTR;

-------------3. truong chinhanh
--1. chinhanh 1
GRANT CREATE SESSION TO CN001TR IDENTIFIED BY CN001TR;
GRANT connect, resource to CN001TR;
--2. chinhanh 2
GRANT CREATE SESSION TO CN002TR IDENTIFIED BY CN002TR;
GRANT connect, resource to CN002TR;
--3. chinhanh 3
GRANT CREATE SESSION TO CN003TR IDENTIFIED BY CN003TR;
GRANT connect, resource to CN003TR;
--4. chinhanh 4
GRANT CREATE SESSION TO CN004TR IDENTIFIED BY CN004TR;
GRANT connect, resource to CN004TR;
--5. chinhanh 5
GRANT CREATE SESSION TO CN005TR IDENTIFIED BY CN005TR;
GRANT connect, resource to CN005TR;
-------------4. nhanvien
--1. NHANSU
GRANT CREATE SESSION TO NS001 IDENTIFIED BY NS001;
GRANT connect, resource to NS001;
--2. KEHOACH
GRANT CREATE SESSION TO KH001 IDENTIFIED BY KH001;
GRANT connect, resource to KH001;
--3. DUAN
GRANT CREATE SESSION TO DA001 IDENTIFIED BY DA001;
GRANT connect, resource to DA001;
--4. KINHDOANH
GRANT CREATE SESSION TO KD001 IDENTIFIED BY KD001;
GRANT connect, resource to KD001;
--5. THONGTIN
GRANT CREATE SESSION TO TT001 IDENTIFIED BY TT001;
GRANT connect, resource to TT001;

--------------5. giam doc
--1. giam doc 1
GRANT CREATE SESSION TO GD001 IDENTIFIED BY GD001;
GRANT connect, resource to GD001;
--2. giam doc 2
GRANT CREATE SESSION TO GD002 IDENTIFIED BY GD002;
GRANT connect, resource to GD002;
--3. giam doc 3
GRANT CREATE SESSION TO GD003 IDENTIFIED BY GD003;
GRANT connect, resource to GD003;
--4. giam doc 4
GRANT CREATE SESSION TO GD004 IDENTIFIED BY GD004;
GRANT connect, resource to GD004;
--5. giam doc 5
GRANT CREATE SESSION TO GD005 IDENTIFIED BY GD005;
GRANT connect, resource to GD005;

