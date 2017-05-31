--tạo role ROEL_TRUONGDUAN, chứa các trưởng dự án
--connect sys
create role ROLE_TRUONGDUAN;
--grant select, insert, update on DUAN_1412004_1412107 to ROLE_TRUOONGDUAN
--connect sysadmin_lab02
grant select, insert, update on DUAN_1412004_1412107 to ROLE_TRUONGDUAN;
--grant ROLE_TRUONGDUAN to cac truong du an
--connect sys
grant ROLE_TRUONGDUAN to DANS001TR, DAKH001TR, DADA001TR, DAKD001TR, DATT001TR;
--grant select, insert, update on CHITIEU_1412004_1412107 to ROLE_TRUOONGDUAN
--connect sysadmin_lab02
grant select, insert, update on CHITIEU_1412004_1412107 to ROLE_TRUONGDUAN;

--tạo role tất cả các nhân viên
--connect sys
create role ROLE_NHANVIEN;
--connect sysadmin_lab02
grant select on NHANVIEN_1412004_1412107 to ROLE_NHANVIEN;
--connect sys
grant ROLE_NHANVIEN to 
DANS001TR, DAKH001TR, DADA001TR, DAKD001TR, DATT001TR
, NSTR, KHTR, DATR, KDTR, TTTR
, CN001TR, CN002TR, CN003TR, CN004TR, CN005TR
, NS001, KH001, DA001, KD001, TT001
, GD001, GD002, GD003, GD004, GD005;
