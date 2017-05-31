--ham ma hoa
--connect as sysadmin_lab02
CREATE OR REPLACE PROCEDURE MAHOA_LUONG
AS
BEGIN
  DECLARE
    ORIGINAL_LUONG INT;
    LUONG_CHAR NVARCHAR2(15);
    MANV_CHAY NVARCHAR2(6);
    SOLUONG INT;
    BIEN_CHAY INT :=1;
    BIENCHAY_CHAR NVARCHAR2(2);
    PUBLIC_KEY RAW(32) :='12345678912345678912345678912345';
    encryption_type PLS_INTEGER := dbms_crypto.encrypt_aes256 + dbms_crypto.chain_cbc + dbms_crypto.pad_pkcs5;
    ENCRYPT_DATA RAW(2000);
  BEGIN
    SELECT COUNT(*) INTO SOLUONG FROM NHANVIEN_1412004_1412107;
    WHILE BIEN_CHAY <=SOLUONG
      LOOP
         BIENCHAY_CHAR := TO_CHAR(BIEN_CHAY);
         MANV_CHAY := 'NV' || BIENCHAY_CHAR;
         SELECT LUONG INTO ORIGINAL_LUONG FROM NHANVIEN_1412004_1412107 WHERE MANV = MANV_CHAY;
         LUONG_CHAR := TO_CHAR(ORIGINAL_LUONG);

         ENCRYPT_DATA    := dbms_crypto.encrypt( 
         src => utl_i18n.string_to_raw(LUONG_CHAR,'AL32UTF8'), 
         typ => dbms_crypto.encrypt_aes256 + dbms_crypto.chain_cbc + dbms_crypto.pad_pkcs5, 
         key => utl_i18n.string_to_raw(PUBLIC_KEY,'AL32UTF8') );

         UPDATE NHANVIEN_1412004_1412107
         SET LUONG = ''
         WHERE MANV = MANV_CHAY;
              
         UPDATE NHANVIEN_1412004_1412107
         SET LUONG1 = ENCRYPT_DATA
         WHERE MANV = MANV_CHAY;
         
         DBMS_OUTPUT.PUT_LINE('ENCRYPT'||ENCRYPT_DATA);
         BIEN_CHAY:=BIEN_CHAY+1;
    END LOOP;
  END;
END;
--ham giai ma
--connect as sysadmin_lab02
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
     SELECT LUONG INTO ORIGINAL_LUONG FROM sysadmin_lab02 WHERE MANV = USER_CURR;
     LUONG_CHAR := TO_CHAR(ORIGINAL_MATKHAU);

     ENCRYPT_DATA    := dbms_crypto.encrypt(
     src => utl_i18n.string_to_raw(LUONG_CHAR,'AL32UTF8'), 
     typ => dbms_crypto.encrypt_aes256 + dbms_crypto.chain_cbc + dbms_crypto.pad_pkcs5,
     key => utl_i18n.string_to_raw(PUBLIC_KEY,'AL32UTF8') );
          
     UPDATE NHANVIEN_1412004_1412107
     SET LUONG = ENCRYPT_DATA
     WHERE MANV = USER_CURR;
    
     DBMS_OUTPUT.PUT_LINE('ENCRYPT'||ENCRYPT_DATA);
  END;
END;
--grant execute
GRANT EXECUTE ON DBMS_CRYPTO TO sysadmin_lab02;
EXEC sysadmin_lab02.MAHOA_LUONG;
GRANT EXECUTE ON GIAIMA_LUONG TO ROLE_NHANVIEN;
