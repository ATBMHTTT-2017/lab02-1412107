--yeu cau: ma hoa de chi nhan vien duoc phep xem luong cua minh
--create role tat ca cac nhan vien binh thuong
--connect sys
create role ROLE_NHANVIEN_THUONG;
--grant select to role ROLE_NHANVIEN_THUONG;
--connect sysadmin_lab01
grant select on NHANVIEN to ROLE_NHANVIEN_THUONG;
--grant role to cac nhanvien
--connect sysadmin_lab01
grant ROLE_NHANVIEN_THUONG to NS001, KH001, DA001, KD001, TT001;
--connect NS001 to test
select * from sysadmin_lab01.NHANVIEN;
--connect NS001 to test
select * from sysadmin_lab01.NHANVIEN;
select MANV, HOTEN, DIACHI, DIENTHOAI, EMAIL, MAPHG, CHINHANH, MATKHAU from sysadmin_lab01.NHANVIEN;
--test ok
--connect sysadmin_lab02
select * from sysadmin_lab01.NHANVIEN;
--ma hoa doi xung
--connect as sysadmin_lab02
grant select on NHANVIEN to sysadmin_crypto;
--test
--connect as sysadmin_crypto
select * from sysadmin_lab01.NHANVIEN;--ok
--connect as sysadmin_crypto
--cach lam sysadmin_lab02: chua ham ma hoa, giai ma
--ham mahoa ma hoa toan bo luong
--cap quyen giai ma cho tung user
----bo qua
-------bay gio cho sysadmin_lab02 la account chua procedure mahoa, giaima
--ham ma hoa
--ham giai ma
CREATE OR REPLACE PROCEDURE GIAIMA_LUONG
AS
BEGIN
  DECLARE
    USER_CURR NVARCHAR2(15);
    ORIGINAL_LUONG float;
    LUONG_CHAR NVARCHAR2(15);
    PUBLIC_KEY RAW(32) :='12345678912345678912345678912345';
    encryption_type PLS_INTEGER := dbms_crypto.encrypt_aes256 + dbms_crypto.chain_cbc + dbms_crypto.pad_pkcs5;
    ENCRYPT_DATA RAW(2000);
  BEGIN
     USER_CURR :=SYS_CONTEXT('USERENV','SESSION_USER');
     SELECT LUONG INTO ORIGINAL_LUONG FROM sysadmin_crypto WHERE MANV = USER_CURR;
     LUONG_CHAR := TO_CHAR(ORIGINAL_MATKHAU);

     ENCRYPT_DATA    := dbms_crypto.encrypt( 
     src => utl_i18n.string_to_raw(LUONG_CHAR,'AL32UTF8'), 
     typ => dbms_crypto.encrypt_aes256 + dbms_crypto.chain_cbc + dbms_crypto.pad_pkcs5, 
     key => utl_i18n.string_to_raw(PUBLIC_KEY,'AL32UTF8') );
          
     UPDATE NHANVIEN
     SET LUONG = ENCRYPT_DATA
     WHERE MANV = USER_CURR;
    
     DBMS_OUTPUT.PUT_LINE('ENCRYPT'||ENCRYPT_DATA);
  END;
END;
