
--connect ownerDBCONGTY 
-------------------------------------3. insert data-------------------------------------------
--1. CHINHANH
Insert into CHINHANH values ('CN001', N'TP HCM', null);
Insert into CHINHANH values ('CN002', N'V?ng T�u', null);
Insert into CHINHANH values ('CN003', N'H� N?i', null);
Insert into CHINHANH values ('CN004', N'B?c Li�u', null);
Insert into CHINHANH values ('CN005', N'C?n Th?', null);

--update CHINHANH set truongChiNhanh
Update CHINHANH set truongChiNhanh = 'CN001TR' where maCN = 'CN001';
Update CHINHANH set truongChiNhanh = 'CN002TR' where maCN = 'CN002';
Update CHINHANH set truongChiNhanh = 'CN003TR' where maCN = 'CN003';
Update CHINHANH set truongChiNhanh = 'CN004TR' where maCN = 'CN004';
Update CHINHANH set truongChiNhanh = 'CN005TR' where maCN = 'CN005';

--2. PHONGBAN
Insert into PHONGBAN values ('PNS', N'Nh�n S?', null, '22/May/1978', null, 'CN001');
Insert into PHONGBAN values ('PKH', N'K? Ho?ch', null, '01/Jan/1985', null, 'CN002');
Insert into PHONGBAN values ('PDA', N'?? �n', null, '19/Jun/1971', null, 'CN003');
Insert into PHONGBAN values ('PKD', N'Kinh Doanh', null, '23/Jul/1972', null, 'CN004');
Insert into PHONGBAN values ('PTT', N'Th�ng Tin', null, '23/Jul/1972', null, 'CN005');

--Update PHONGBAN set TRPHG
Update PHONGBAN set TRPHG = 'NSTR' where MAPHG = 'PNS';
Update PHONGBAN set TRPHG = 'KHTR' where MAPHG = 'PKH';
Update PHONGBAN set TRPHG = 'DATR' where MAPHG = 'PDA';
Update PHONGBAN set TRPHG = 'KDTR' where MAPHG = 'PKD';
Update PHONGBAN set TRPHG = 'TTTR' where MAPHG = 'PTT';

----3. NHANVIEN
--------------1. truong duan
Insert into NHANVIEN values ('DANS001TR', N'?inh B� Ti�n', N'119 C?ng Qu?nh, Tp HCM', '0123456789', N't@g', 'PNS', 'CN001', 30000,  'DANS001TR');
Insert into NHANVIEN values ('DAKH001TR', N'Nguy?n Thanh T�ng', N'222 Nguy?n V?n C?, Tp HCM', '01343456789', N'tt@g', 'PKH', 'CN002', 23000,  'DAKH001TR');
Insert into NHANVIEN values ('DADA001TR', N'Tr?n Ng?c H?ng ', N'332 Nguy?n Th�i H?c, Tp HCM', '01333456789', N'nh@g', 'PDA', 'CN003', 67000,  'DADA001TR');
Insert into NHANVIEN values ('DAKD001TR', N'L� Qu?nh Nh?', N'291 H? V?n Hu�, Tp HCM', '01333456679', N'n@g', 'PKD', 'CN004', 12000,  'DAKD001TR');
Insert into NHANVIEN values ('DATT001TR', N'Nguy?n Minh H�ng', N'95 B� R?a, V?ng T�u', '01333456129', N'mh@g', 'PTT', 'CN005', 55000,  'DATT001TR');
--------------2. truong phong
Insert into NHANVIEN values ('NSTR', N'?inh B� Quy�n', N'119 Nguy?n C? Trinh, Tp HCM', '0345456789', N'bq@g', 'PNS', 'CN001', 52000,  'NSTR');
Insert into NHANVIEN values ('KHTR', N'Nguy?n Th�i Vinh', N'222 Nguy?n Tr�i, Tp HCM', '01673456789', N'tv@g', 'PKH', 'CN002', 41000,  'KHTR');
Insert into NHANVIEN values ('DATR', N'Tr?n H?i Xinh', N'332 L� Lai, Tp HCM', '06423456789', N'hx@g', 'PDA', 'CN003', 36000,  'DATR');
Insert into NHANVIEN values ('KDTR', N'L� H?i Tri?u', N'291 H? Hu?, Tp HCM', '0133347869', N'ht@g', 'PKD', 'CN004', 43000,  'KDTR');
Insert into NHANVIEN values ('TTTR', N'Nguy?n Ch??ng Ho�ng', N'95 B� R?a, V?ng T�u', '01333434529', N'ch@g', 'PTT', 'CN005', 47000,  'TTTR');
-------------3. truong chinhanh
Insert into NHANVIEN values ('CN001TR', N'Tr?n Cao V�n', N'119 Nguy?n C? Trinh, Tp HCM', '0345456789', N'cv@g', 'PNS', 'CN001', 52000,  'CN001TR');
Insert into NHANVIEN values ('CN002TR', N'Nguy?n Quy?n Linh', N'222 Nguy?n Tr�i, Tp HCM', '01673456789', N'ql@g', 'PKH', 'CN002', 41000,  'CN002TR');
Insert into NHANVIEN values ('CN003TR', N'Tr?n Vi Linh', N'332 L� Lai, Tp HCM', '06423456789', N'vl@g', 'PDA', 'CN003', 36000,  'CN003TR');
Insert into NHANVIEN values ('CN004TR', N'V� Tr??ng Giang', N'291 H? Hu?, Tp HCM', '0133347869', N'tg@g', 'PKD', 'CN004', 43000,  'CN004TR');
Insert into NHANVIEN values ('CN005TR', N'Ho�ng V?n Th?nh', N'95 B� R?a, V?ng T�u', '01333434529', N'vt@g', 'PTT', 'CN005', 47000,  'CN005TR');
-------------4. nhanvien
Insert into NHANVIEN values ('NS001', N'Ho�ng Th�i Th�nh', N'119 Nguy?n C? Trinh, Tp HCM', '0345456789', N'tt@g', 'PNS', null, 52000,  'NS001');
Insert into NHANVIEN values ('KH001', N'Nguy?n V?n Linh', N'222 Nguy?n Tr�i, Tp HCM', '01673456789', N'vl@g', 'PKH', null, 41000,  'KH001');
Insert into NHANVIEN values ('DA001', N'Tr?n Linh', N'332 L� Lai, Tp HCM', '06423456789', N'tl@g', 'PDA', null, 36000,  'DA001');
Insert into NHANVIEN values ('KD001', N'V� Tr??ng', N'291 H? Hu?, Tp HCM', '0133347869', N'vg@g', 'PKD', null, 43000,  'KD001');
Insert into NHANVIEN values ('TT001', N'Ho�ng Th?nh', N'95 B� R?a, V?ng T�u', '01333434529', N'ht@g', 'PTT', null, 47000,  'TT001');
--------------5. giam doc
Insert into NHANVIEN values ('GD001', N'Ho�ng Th�i', N'119 Nguy?n C? Trinh, Tp HCM', '0345456789', N'tt@g', null, null, 52000,  'GD001');
Insert into NHANVIEN values ('GD002', N'Nguy?n Xinh', N'222 Nguy?n Tr�i, Tp HCM', '01673456789', N'nx@g', null, null, 41000,  'GD002');
Insert into NHANVIEN values ('GD003', N'Tr?n Phi', N'332 L� Lai, Tp HCM', '06423456789', N'tp@g', null, null, 36000,  'GD003');
Insert into NHANVIEN values ('GD004', N'V� H?i', N'291 H? Hu?, Tp HCM', '0133347869', N'vh@g', null, null, 43000,  'GD004');
Insert into NHANVIEN values ('GD005', N'Ho�ng Ch�', N'95 B� R?a, V?ng T�u', '01333434529', N'hc@g', null, null, 47000,  'GD005');

--4. DUAN
Insert into DUAN values ('DANS001', N'Ti?ng Anh ?i L�m', 20, 'PNS', 'DANS001TR');
Insert into DUAN values ('DAKH001', N'Nh?t Ng? Ph? C?p', 15, 'PKH', 'DAKH001TR');
Insert into DUAN values ('DADA001', N'Kinh Doanh Xanh', 18, 'PDA', 'DADA001TR');
Insert into DUAN values ('DAKD001', N'Th?i Trang Tr?', 40, 'PKD', 'DAKD001TR');
Insert into DUAN values ('DATT001', N'NLP ?? Th�nh C�ng', 50, 'PTT', 'DATT001TR');

--5. CHITIEU
Insert into CHITIEU values ('CTDANS001001', N'??t chu?n ti?ng anh giao ti?p c�ng s?', 20, 'DANS001');
Insert into CHITIEU values ('CTDAKH001001', N'??t chu?n ti?ng nh?t giao ti?p c�ng s?', 30, 'DAKH001');
Insert into CHITIEU values ('CTDADA001001', N'??t chu?n kinh doanh th�n thi?n m�i tr??ng', 30, 'DADA001');
Insert into CHITIEU values ('CTDAKD001001', N'Nh�n vi�n to�n c�ng ty c� gu th?i trang tr? trung', 30, 'DAKD001');
Insert into CHITIEU values ('CTDATT001001', N'NLP ?? hi?u qu? nh?t c� th? trong c�ng vi?c', 30, 'DATT001');

--6. PHANCONG
--truong du an
Insert into PHANCONG values ('DANS001TR', 'DANS001', N'tr??ng', 50);
Insert into PHANCONG values ('DAKH001TR', 'DAKH001', N'tr??ng', 50);
Insert into PHANCONG values ('DADA001TR', 'DADA001', N'tr??ng', 50);
Insert into PHANCONG values ('DAKD001TR', 'DAKD001', N'tr??ng', 50);
Insert into PHANCONG values ('DATT001TR', 'DATT001', N'tr??ng', 50);
--thanh vien du an
Insert into PHANCONG values ('NS001', 'DANS001', N'th�nh vi�n', 40);
Insert into PHANCONG values ('KH001', 'DAKH001', N'th�nh vi�n', 40);
Insert into PHANCONG values ('DA001', 'DADA001', N'th�nh vi�n', 40);
Insert into PHANCONG values ('KD001', 'DAKD001', N'th�nh vi�n', 40);
Insert into PHANCONG values ('TT001', 'DATT001', N'th�nh vi�n', 40);

