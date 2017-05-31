--connect sysadmin_lab02
--truong duan an doc, ghi thong tin du an minh quan ly
CREATE OR REPLACE FUNCTION FUNCTION_CAPNHAT_CHITIEU(P_SCHEMA VARCHAR2,P_OBJ VARCHAR2)
RETURN VARCHAR2
AS
USER NVARCHAR2(15);
TEMP NVARCHAR2(200);
MADA_TRGDA VARCHAR2(15);
BEGIN
  USER := SYS_CONTEXT('USERENV','SESSION_USER');
  if USER in ('DANS001TR', 'DAKH001TR', 'DADA001TR', 'DAKD001TR', 'DATT001TR') then
    Select maDA into MADA_TRGDA from sysadmin_lab02.DUAN_1412004_1412107 where truongDA = USER;
    TEMP := 'duAn = ''' || MADA_TRGDA || '''';
    RETURN TEMP;
    else return '';
  END IF;
END;
BEGIN
dbms_rls.add_policy(
object_schema => 'sysadmin_lab02',
object_name => 'CHITIEU_1412004_1412107',
policy_name => 'PO5',
function_schema => 'sysadmin_lab02',
policy_function => 'FUNCTION_CAPNHAT_CHITIEU',
statement_types => 'select, insert, update',
update_check => TRUE
);
END;
--connect as DANS001TR, DAKH001TR, DADA001TR, DAKD001TR, DATT001TR to test
select * from sysadmin_lab02.CHITIEU_1412004_1412107;
--select ok
update sysadmin_lab02.CHITIEU_1412004_1412107 set CHITIEU.SOTIEN = 15;
--update ok
insert into sysadmin_lab02.CHITIEU_1412004_1412107 values('CTDANS001003', 'dat chuan cong so nhu tren', 25, 'DANS001');
--update ok
--policy5: ok

