DROP DATABASE UNIFOOD
go

CREATE DATABASE UNIFOOD
GO

USE UNIFOOD
GO

CREATE TABLE NGUOIDUNG
(
	MaNguoiDung VARCHAR(9) CONSTRAINT PK_NGUOIDUNG PRIMARY KEY,	
	HoVaTen NVARCHAR(50),
	GioiTinh NVARCHAR(3) CONSTRAINT Right_GioiTinh CHECK(GioiTinh = N'Nam' OR GioiTinh = N'Nữ'),
	NgaySinh DATE,
	DiaChi NVARCHAR(150),
	DienThoai VARCHAR(10) CONSTRAINT DienThoai_Is_Unique UNIQUE,
	Email VARCHAR(30) CONSTRAINT Email_Is_Unique UNIQUE,
	MatKhau VARCHAR(50),
)

-- THÊM DỮ LIỆU CHO BẢNG NGƯỜI DÙNG --
INSERT INTO NGUOIDUNG VALUES ('QL0000001',N'Nguyễn Quốc Ninh',N'Nam','20000221',N'484 Lê Văn Việt, Q9, TP HCM', '0988776655','ninhnq@gmaiL.com','12345678')
INSERT INTO NGUOIDUNG VALUES ('QL0000002',N'Mai Anh Thơ',N'Nữ','20001011',N'153 Hoàng Diệu 2, Thủ Đức, TP HCM', '0988776654','thanhnv@gmail.com','12345678')
INSERT INTO NGUOIDUNG VALUES ('QL0000003',N'Võ Trần Minh Quân',N'Nam','20001010',N'80 Đặng Văn Bi, Thủ Đức, TP HCM', '0978997575','vtmquan0909@gmail.com','12345678')
INSERT INTO NGUOIDUNG VALUES ('QL0000004',N'Tạ Thị Mai Hương',N'Nữ','20000909',N'140 Man Thiện, Q9, TP HCM', '0988776652','huongttm@gmail.com','12345678')
INSERT INTO NGUOIDUNG VALUES ('QL0000005',N'Trần Đăng Tâm',N'Nam','20001210',N'12 Lê Văn Chí, Thủ Đức, TP HCM', '0988776651','tamtd@gmail.com','12345678')
INSERT INTO NGUOIDUNG VALUES ('KH0000000',N'Khách Vãng Lai',NULL,NULL,NULL,'19008198','gamil@com','')
INSERT INTO NGUOIDUNG VALUES ('KH0000001',N'Đỗ Văn Dũng',N'Nam','20000809',N'1 Võ Văn Ngân, Thủ Đức, TP HCM', '0981776655','dungdv@gmail.com','abcd1234')
INSERT INTO NGUOIDUNG VALUES ('KH0000002',N'Nguyễn Thị Mai',N'Nữ','20000709',N'121 Man Thiện, Q9, TP HCM', '0988476655','maint@gmail.com','abcd1234')
INSERT INTO NGUOIDUNG VALUES ('KH0000003',N'Trương Văn Anh',N'Nam','20000506',N'25 Võ Văn Ngân, Thủ Đức, TP HCM', '0981766655','anhtv@gmail.com','abcd1234')
INSERT INTO NGUOIDUNG VALUES ('KH0000004',N'Huỳnh Minh Tiến',N'Nam','20000913',N'100 Man Thiện, Q9, TP HCM', '0988126655','tienhm@gmail.com','abcd1234')
INSERT INTO NGUOIDUNG VALUES ('KH0000005',N'Huỳnh Quang Trường',N'Nam','20000819',N'81 Lê Văn Chí, Thủ Đức, TP HCM', '0988771355','truonghq@gmail.com','abcd1234')
INSERT INTO NGUOIDUNG VALUES ('KH0000006',N'Nguyễn Thanh Vân',N'Nữ','20000801',N'87 Man Thiện, Q9, TP HCM', '0988776614','vannt@gmail.com','1234abcd')
INSERT INTO NGUOIDUNG VALUES ('KH0000007',N'Lê Hoàng Việt',N'Nam','20000825',N'13 Võ Văn Ngân, Thủ Đức, TP HCM', '0988776664','vietlh@gmail.com','1234abcd')
INSERT INTO NGUOIDUNG VALUES ('KH0000008',N'Trần Đình Vương',N'Nam','20000129',N'54 Đặng Văn Bi, Thủ Đức, TP HCM', '0988773355','vuongtd@gmail.com','1234abcd')
INSERT INTO NGUOIDUNG VALUES ('KH0000009',N'Nguyễn Minh Tiến',N'Nam','20000228',N'181 Lê Văn Chí, Thủ Đức, TP HCM', '0988116655','tiennm@gmail.com','1234abcd')
INSERT INTO NGUOIDUNG VALUES ('KH0000010',N'Nguyễn Thành Chương',N'Nam','20000329',N'169 Đặng Văn Bi, Thủ Đức, TP HCM', '0988776619','chuongnt@gmail.com','1234abcd')
INSERT INTO NGUOIDUNG VALUES ('KH0000011',N'Nguyễn Quốc Cường',N'Nam','20000811',N'233 Võ Văn Ngân, Thủ Đức, TP HCM', '0988776647','cuongnq@gmail.com','1234abcd')
INSERT INTO NGUOIDUNG VALUES ('KH0000012',N'Đoàn Phạm Duy',N'Nam','20000810',N'248 Võ Văn Ngân, Thủ Đức, TP HCM', '0988776699','duydp@gmail.com','1234abcd')
INSERT INTO NGUOIDUNG VALUES ('KH0000013',N'Phan Tiến Dũng',N'Nam','20000919',N'99 Đặng Văn Bi, Thủ Đức, TP HCM', '0988776687','dungpt@gmail.com','1234abcd')
GO
--------------------------------------

CREATE TABLE NHOMSANPHAM
(
	MaNhom SMALLINT CONSTRAINT PK_NHOMSANPHAM PRIMARY KEY,
	CONSTRAINT Right_MaNhom CHECK(MaNhom > 0),
	TenNhom NVARCHAR(20)
)

-- THÊM DỮ LIỆU CHO BẢNG NHÓM SẢN PHẨM --
INSERT INTO NHOMSANPHAM VALUES (1,N'Cơm')
INSERT INTO NHOMSANPHAM VALUES (2,N'Món bún, phở, mì')
INSERT INTO NHOMSANPHAM VALUES (3,N'Bánh mì')
INSERT INTO NHOMSANPHAM VALUES (4,N'Bánh mặn')
INSERT INTO NHOMSANPHAM VALUES (5,N'Bánh ngọt')
INSERT INTO NHOMSANPHAM VALUES (6,N'Thức ăn nhanh')
INSERT INTO NHOMSANPHAM VALUES (7,N'Nước suối')
INSERT INTO NHOMSANPHAM VALUES (8,N'Nước ngọt')
INSERT INTO NHOMSANPHAM VALUES (10,N'Đồ ăn kèm')
INSERT INTO NHOMSANPHAM VALUES (11,N'Canh phần')
INSERT INTO NHOMSANPHAM VALUES (12,N'Nước giải khát')
GO
-----------------------------------------

CREATE TABLE KHOHANG
(
	MaKho VARCHAR(10) CONSTRAINT PK_KHOHANG PRIMARY KEY,
	TenKho NVARCHAR(50),
	DiaChi NVARCHAR(100),
)

-- THÊM DỮ LIỆU CHO BẢNG KHO HÀNG --
INSERT INTO KHOHANG VALUES('KHOHANG01',N'Kho hàng trụ sở chính HCMUTE', N'Số 1, Võ Văn Ngân, phường Linh Trung, Thủ Đức, TP HCM')
INSERT INTO KHOHANG VALUES('KHOHANG02',N'Kho hàng phụ HCMUTE', N'Số 3, Lê Văn Chí, phường Linh Trung, Thủ Đức, TP HCM')
INSERT INTO KHOHANG VALUES('KHOHANG03',N'Kho hàng dự phòng', N'Số 12, Hoàng Diệu 2, phường Linh Trung, Thủ Đức, TP HCM')
INSERT INTO KHOHANG VALUES('KHOHANG04',N'Kho hàng Quận 9', N'Số 486, Lê Văn Việt, phường Tăng Nhơn Phú A, Quận 9, TP HCM')
GO
------------------------------------

CREATE TABLE SANPHAM
(
	MaSanPham VARCHAR(10) CONSTRAINT PK_SANPHAM PRIMARY KEY,
	TenSanPham NVARCHAR(100),
	DonViTinh NVARCHAR(10),
	DonGia INT CONSTRAINT Right_DonGia CHECK(DonGia > 0),
	SoLuong INT CONSTRAINT Right_SoLuongHang CHECK(SoLuong >= 0),
	AnhMinhHoa VARCHAR(100),
	MaNhom SMALLINT CONSTRAINT FK_SANPHAM_NHOMSANPHAM FOREIGN KEY REFERENCES NHOMSANPHAM(MaNhom),
	MaKho VARCHAR(10) CONSTRAINT FK_SANPHAM_KHOHANG FOREIGN KEY REFERENCES KHOHANG(MaKho),
	MoTa NVARCHAR(1500)
)

-- THÊM DỮ LIỆU CHO BẢNG SẢN PHẨM --
INSERT INTO SANPHAM VALUES('MN10200001',N'Phở bò Việt Nam', N'Tô',25000,100,'/Images/Pho.jpg',2,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('MN10200002',N'Bún giò heo', N'Tô',20000,100,'/Images/Bun.jpg',2,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('MN10200003',N'Bún riêu cua',N'Tô',20000,100,'/Images/Minuoc.jpg',2,'KHOHANG03',NULL)
INSERT INTO SANPHAM VALUES('MN10200004',N'Mì Quảng', N'Tô',25000,100,'/Images/Miquang.jpg',2,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('MN10100005',N'Cơm tấm sườn bì chả', N'Đĩa',30000,100,'/Images/Comtam.jpg',1,'KHOHANG02',N'01 Đĩa cơm tấm sườn bì chả trứng ,01 Canh rong biển thịt bầm ,01 Coca-cola giải khát ,01 Khăn lạnh và tâm tre sạch')
INSERT INTO SANPHAM VALUES('MN10100007',N'Cơm chiên trứng', N'Đĩa',20000,100,'/Images/Comchien.jpg',1,'KHOHANG04',NULL)
INSERT INTO SANPHAM VALUES('MN10100009',N'Cơm chiên Dương Châu', N'Đĩa',25000,100,'/Images/ComChienDuongChau.jpg',1,'KHOHANG03',NULL)
INSERT INTO SANPHAM VALUES('MN10100010',N'Cơm chiên hải sản', N'Đĩa',20000,100,'/Images/ComChienHaiSan.jpg',1,'KHOHANG02',NULL)
INSERT INTO SANPHAM VALUES('MN10100012',N'Cơm trắng', N'Phần',25000,100,'/Images/ComTrang.jpg',1,'KHOHANG04',NULL)
INSERT INTO SANPHAM VALUES('MN10200013',N'Bún thịt nướng', N'Tô',30000,100,'/Images/BunThitNuong.jpg',2,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('MN10300006',N'Bánh mì Việt Nam', N'Cái',15000,100,'/Images/Banhmi.jpg',3,'KHOHANG03',NULL)
INSERT INTO SANPHAM VALUES('MN10100015',N'Xôi gà', N'Đĩa',20000,100,'/Images/XoiGa.jpg',1,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('MN10400016',N'Bánh giò', N'Cái',17000,100,'/Images/BanhGio.jpg',4,'KHOHANG02',NULL)
INSERT INTO SANPHAM VALUES('MN10100023',N'Cơm tự chọn', N'Phần',25000,100,'/Images/ComTuChon.jpg',1,'KHOHANG04',NULL)

INSERT INTO SANPHAM VALUES('AK10200001',N'Thịt sườn nướng', N'Phần',20000,100,'/Images/ThitSuonNuong.jpg',10,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10200002',N'Sườn que nướng', N'Phần',22000,100,'/Images/SuonQueNuong.jpg',10,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10200003',N'Đùi gà nướng', N'Phần',20000,100,'/Images/DuiGaNuong.jpg',10,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10200004',N'Cánh gà nướng', N'Phần',22000,100,'/Images/CanhGaNuong.jpg',10,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10200005',N'Lạp xưởng nướng', N'Phần',18000,100,'/Images/LapXuongNuong.jpg',10,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10200006',N'Nem nướng', N'Phần',15000,100,'/Images/NemNuong.jpg',10,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10200007',N'Trứng chiên', N'Phần',10000,100,'/Images/TrungChien.jpg',10,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10200008',N'Trứng óp la', N'Phần',10000,100,'/Images/TrungOpLa.jpg',10,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10200009',N'Chả trứng', N'Phần',10000,100,'/Images/ChaTrung.jpg',10,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10200010',N'Bì thịt', N'Phần',10000,100,'/Images/BiThit.jpg',10,'KHOHANG01',NULL)

INSERT INTO SANPHAM VALUES('AK10300001',N'Canh rong biển thịt bầm', N'Phần',15000,100,'/Images/CanhRongBienThitBam.jpg',11,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10300002',N'Canh khổ qua nhồi thịt', N'Phần',15000,100,'/Images/CanhKhoQuaNhoiThit.jpg',11,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10300003',N'Canh khoai mỡ thịt bầm', N'Phần',15000,100,'/Images/CanhKhoaiMoThitBam.jpg',11,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10300004',N'Canh chua cá ba-sa', N'Phần',15000,100,'/Images/CanhChuaCaBaSa.jpg',11,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10300005',N'Canh cải ngọt thịt bầm', N'Phần',15000,100,'/Images/CanhCaiNgotThitBam.jpg',11,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10300006',N'Canh rau củ hầm', N'Phần',15000,100,'/Images/CảnhauCuHam.jpg',11,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10300007',N'Canh chay mướp + nắm', N'Phần',15000,100,'/Images/CanhChayMuopNam.jpg',11,'KHOHANG01',NULL)

INSERT INTO SANPHAM VALUES('AK10400001',N'Coca-cola tươi', N'Phần',10000,100,'/Images/CocaCola.jpg',12,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10400002',N'Sprite tươi', N'Phần',10000,100,'/Images/Sprite.jpg',12,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10400003',N'Cam ép tươi', N'Phần',15000,100,'/Images/CamEpTuoi.jpg',12,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10400004',N'Nưới suối Dasani', N'Phần',10000,100,'/Images/NuocSuoiDasani.jpg',12,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10400005',N'Rau má tươi', N'Phần',10000,100,'/Images/RauMaTuoi.jpg',12,'KHOHANG01',NULL)
INSERT INTO SANPHAM VALUES('AK10400006',N'Trà bí đao hạt chia tươi', N'Phần',15000,100,'/Images/TraBiDaoHatChiaTuoi.jpg',12,'KHOHANG01',NULL)
GO
------------------------------------

CREATE TABLE ANKEM
(
	MaMonAnChinh VARCHAR(10) CONSTRAINT FK_ANCHINH_SANPHAM REFERENCES SANPHAM(MaSanPham),
	MaDoAnKem VARCHAR(10) CONSTRAINT FK_ANKEM_SANPHAM REFERENCES SANPHAM(MaSanPham),
	CONSTRAINT PK_ANKEM PRIMARY KEY(MaMonAnChinh, MaDoAnkem)
)

-- THÊM DỮ LIỆU CHO BẢNG ĂN KÈM --
insert into ANKEM values('MN10100005','AK10200001')
insert into ANKEM values('MN10100005','AK10200002')
insert into ANKEM values('MN10100005','AK10200003')
insert into ANKEM values('MN10100005','AK10200004')
insert into ANKEM values('MN10100005','AK10200005')
insert into ANKEM values('MN10100005','AK10200006')
insert into ANKEM values('MN10100005','AK10200007')
insert into ANKEM values('MN10100005','AK10200008')
insert into ANKEM values('MN10100005','AK10200009')
insert into ANKEM values('MN10100005','AK10200010')

insert into ANKEM values('MN10100005','AK10300001')
insert into ANKEM values('MN10100005','AK10300002')
insert into ANKEM values('MN10100005','AK10300003')
insert into ANKEM values('MN10100005','AK10300004')
insert into ANKEM values('MN10100005','AK10300005')
insert into ANKEM values('MN10100005','AK10300006')
insert into ANKEM values('MN10100005','AK10300007')

insert into ANKEM values('MN10100005','AK10400001')
insert into ANKEM values('MN10100005','AK10400002')
insert into ANKEM values('MN10100005','AK10400003')
insert into ANKEM values('MN10100005','AK10400004')
insert into ANKEM values('MN10100005','AK10400005')
insert into ANKEM values('MN10100005','AK10400006')
go
----------------------------------

CREATE TABLE GIOHANG
(
	MaGio INT CONSTRAINT PK_GIOHANG PRIMARY KEY,
	CONSTRAINT Right_MaGio CHECK(MaGio > 0),
	MaNguoiDung VARCHAR(9) CONSTRAINT FK_GIOHANG_NGUOIDUNG FOREIGN KEY REFERENCES NGUOIDUNG(MaNguoiDung)
)

-- THÊM DỮ LIỆU CHO BẢNG GIỎ HÀNG --
INSERT INTO GIOHANG VALUES(1000000, 'KH0000001')
INSERT INTO GIOHANG VALUES(1000001, 'KH0000001')
INSERT INTO GIOHANG VALUES(1000002, 'KH0000001')
INSERT INTO GIOHANG VALUES(1000003, 'KH0000002')
INSERT INTO GIOHANG VALUES(1000004, 'KH0000002')
INSERT INTO GIOHANG VALUES(1000005, 'KH0000003')
GO
------------------------------------

CREATE TABLE DATHANG
(
	MaGio INT CONSTRAINT FK_DATHANG_GIOHANG FOREIGN KEY REFERENCES GIOHANG(MaGio),
	MaSanPham VARCHAR(10) CONSTRAINT FK_DATHANG_SANPHAM FOREIGN KEY REFERENCES SANPHAM(MaSanPham),
	SoLuong INT CONSTRAINT Right_SoLuongMua CHECK(SoLuong > 0),
	DonGia INT,
	GhiChu NVARCHAR(200),
	CONSTRAINT PK_DATHANG PRIMARY KEY(MaGio, MaSanPham)
)

-- THÊM DỮ LIỆU CHO BẢNG ĐẶT HÀNG --
INSERT INTO DATHANG VALUES (1000000,'MN10100005',3,30000,NULL)
INSERT INTO DATHANG VALUES (1000000,'MN10100001',5,20000,NULL)
INSERT INTO DATHANG VALUES (1000000,'MN10100002',1,20000,NULL)
INSERT INTO DATHANG VALUES (1000000,'MN10100002',1,25000,NULL)
INSERT INTO DATHANG VALUES (1000000,'MN10100009',2,25000,NULL)
INSERT INTO DATHANG VALUES (1000000,'MN10100002',3,20000,NULL)
INSERT INTO DATHANG VALUES (1000001,'MN10100001',1,20000,NULL)
INSERT INTO DATHANG VALUES (1000001,'MN10100003',2,25000,NULL)
INSERT INTO DATHANG VALUES (1000002,'MN10200002',3,20000,NULL)
INSERT INTO DATHANG VALUES (1000002,'MN10200003',4,20000,NULL)
INSERT INTO DATHANG VALUES (1000002,'MN10200004',5,25000,NULL)
INSERT INTO DATHANG VALUES (1000002,'MN10200005',2,17000,NULL)
INSERT INTO DATHANG VALUES (1000002,'MN10200004',1,20000,NULL)
INSERT INTO DATHANG VALUES (1000003,'MN10200007',5,15000,NULL)
INSERT INTO DATHANG VALUES (1000003,'MN10200001',2,25000,NULL)
INSERT INTO DATHANG VALUES (1000003,'MN10200002',3,20000,NULL)
INSERT INTO DATHANG VALUES (1000004,'MN10200003',4,17000,NULL)
INSERT INTO DATHANG VALUES (1000005,'MN10200007',2,20000,NULL)
GO
------------------------------------

CREATE TABLE DONVIGIAOHANG
(
	MaDonVi VARCHAR(10) CONSTRAINT PK_DONVIGIAOHANG PRIMARY KEY,
	TenDonVi NVARCHAR(50),
	DiaChi NVARCHAR(150)
)

-- THÊM DỮ LIỆU CHO BẢNG ĐƠN VỊ GIAO HÀNG --
INSERT INTO DONVIGIAOHANG VALUES ('GIAOHANG01', N'Ninjavan', N'2 Võ Văn Ngân, phường Linh Chiểu, Thủ Đức, TP HCM')
INSERT INTO DONVIGIAOHANG VALUES ('GIAOHANG02', N'Giao hàng quận 9', N'77/2 Tân Lập, phường Hiệp Phú, Q9, TP HCM')
INSERT INTO DONVIGIAOHANG VALUES ('GIAOHANG03', N'Giao hàng nhanh', N'20 đường số 7, phường Linh Chiểu, Thủ Đức, TP HCM')
GO
--------------------------------------------

CREATE TABLE DONHANG
(
	MaDon INT CONSTRAINT PK_DONHANG PRIMARY KEY,
	CONSTRAINT Right_MaDon CHECK(MaDon > 0),
	MaGio INT CONSTRAINT FK_DONHANG_GIOHANG FOREIGN KEY REFERENCES GIOHANG(MaGio),
	MaDonViGiaoHang VARCHAR(10) CONSTRAINT FK_DONHANG_DONVIGIAOHANG FOREIGN KEY REFERENCES DONVIGIAOHANG(MaDonVi),
	TT_DonHang NVARCHAR(50) CONSTRAINT Right_TT_DonHang CHECK(TT_DonHang = N'Đã tiếp nhận' OR TT_DonHang = N'Đang xử lý' OR TT_DonHang = N'Đang giao hàng' OR TT_DonHang = N'Giao hàng thành công' OR TT_DonHang = N'Đã hủy'),
	TT_ThanhToan BIT,
	TongGiaTri INT,
	NgayDat DATE,
	NgayGiaoHang DATE,
	NgayThanhToan DATE,	
	HoVaTen NVARCHAR(50),
	DiaChi NVARCHAR(150),
	DienThoai VARCHAR(10)
)
GO

-- THÊM DỮ LIỆU CHO BẢNG ĐƠN HÀNG --
INSERT INTO DONHANG VALUES (2000000, 1000000, 'GIAOHANG01', N'Giao hàng thành công', 1, 345000, '20201026', '20201027', '20201027')
INSERT INTO DONHANG VALUES (2000001, 1000001, 'GIAOHANG01', N'Giao hàng thành công', 1, 70000, '20201027', '20201027', '20201027')
INSERT INTO DONHANG VALUES (2000002, 1000004, NULL, N'Đang xử lý', 0, 68000, '20201103', NULL, NULL)
------------------------------------



USE UNIFOOD
GO

CREATE ROLE KhachHang

GRANT SELECT, UPDATE ON NGUOIDUNG TO KhachHang
GRANT SELECT ON NHOMSANPHAM TO KhachHang
GRANT SELECT ON SANPHAM TO KhachHang
GRANT SELECT ON ANKEM TO KhachHang
GRANT SELECT ON GIOHANG TO KhachHang
GRANT SELECT, INSERT, UPDATE, DELETE ON DATHANG TO KhachHang
GRANT SELECT ON DONHANG TO KhachHang

CREATE ROLE QuanLy

GRANT SELECT, INSERT, UPDATE(MatKhau), DELETE ON NGUOIDUNG TO QuanLy
GRANT ALL ON NHOMSANPHAM TO QuanLy
GRANT ALL ON SANPHAM TO QuanLy
GRANT ALL ON ANKEM TO QuanLy
GRANT ALL ON DONVIGIAOHANG TO QuanLy
GRANT ALL ON KHOHANG TO QuanLy
GRANT SELECT, INSERT, UPDATE(MaGio), DELETE ON GIOHANG TO QuanLy
GRANT SELECT ON DATHANG TO QuanLy
GRANT ALL ON DONHANG TO QuanLy


USE UNIFOOD
GO
-- TẠO FUNCTION KIỂM TRA NGÀY SINH NGƯỜI DÙNG CÓ HỢP LỆ HAY KHÔNG --
-- VÕ TRẦN MINH QUÂN
CREATE FUNCTION func_NgaySinhHopLe(@ngaySinh DATE)
RETURNS BIT
AS
BEGIN
	DECLARE @homNay DATE
	SET @homNay = CONVERT(DATE, GETDATE())
	IF @ngaySinh >= @homNay
		RETURN 0
	RETURN 1
END
GO
--------------------------------------------------------------------

-- TẠO FUNCTION KIỂM TRA SỐ ĐIỆN THOẠI NGƯỜI DÙNG ĐÃ TỒN TẠI HAY CHƯA --
-- VÕ TRẦN MINH QUÂN
CREATE FUNCTION func_DienThoaiHopLe(@dienThoai VARCHAR(10))
RETURNS BIT
AS
BEGIN
	IF @dienThoai NOT IN (SELECT DienThoai FROM NGUOIDUNG)
		RETURN 1
	RETURN 0
END
GO
------------------------------------------------------------------------

-- TẠO FUNCTION KIỂM TRA EMAIL NGƯỜI DÙNG ĐÃ TỒN TẠI HAY CHƯA --
-- VÕ TRẦN MINH QUÂN
CREATE FUNCTION func_EmailHopLe(@email VARCHAR(30))
RETURNS BIT
AS
BEGIN
	IF @email NOT IN (SELECT Email FROM NGUOIDUNG)
		RETURN 1
	RETURN 0
END
GO
----------------------------------------------------------------

-- TẠO FUNCTION SINH MÃ NGƯỜI DÙNG --
-- VÕ TRẦN MINH QUÂN
CREATE FUNCTION func_TaoMa(@tienTo VARCHAR(2))
RETURNS VARCHAR(9)
AS
BEGIN
	DECLARE @ketQua VARCHAR(9)
	DECLARE @maCuoiCung VARCHAR(9)
	SET @maCuoiCung = (SELECT TOP(1) MaNguoiDung 
					   FROM NGUOIDUNG
					   WHERE MaNguoiDung LIKE (@tienTo + '%')
					   ORDER BY MaNguoiDung DESC)
	SET @maCuoiCung = (SELECT SUBSTRING(@maCuoiCung, 3, 7))
	DECLARE @maSo INT
	SET @maSo = CONVERT(INT, @maCuoiCung)
	DECLARE @maMoi VARCHAR(7)
	SET @maMoi = CONVERT(VARCHAR(7), @maSo + 1)
	DECLARE @doDaiMaMoi INT
	SET @doDaiMaMoi = LEN(@maMoi)
	IF @doDaiMaMoi < 7
	BEGIN
		DECLARE @chuoiSo0 VARCHAR(6)
		SET @chuoiSo0 = '0'
		WHILE LEN(@chuoiSo0) < (7 - @doDaiMaMoi)
			SET @chuoiSo0 = @chuoiSo0 + '0'
		SET @ketQua = @tienTo + @chuoiSo0 + @maMoi
	END
	ELSE
		SET @ketQua = @tienTo + @maMoi
	RETURN @ketQua
END
GO
-------------------------------------

-- TẠO FUNCTION KIỂM TRA MẬT KHẨU CÓ ĐỘ DÀI TỪ 10 ĐẾN 50 KÍ TỰ--
-- VÕ TRẦN MINH QUÂN
CREATE FUNCTION func_MatKhauHopLe(@matKhau VARCHAR(50))
RETURNS BIT
AS
BEGIN
	DECLARE @doDaiMatKhau INT
	SET @doDaiMatKhau = LEN(@matKhau)
	IF @doDaiMatKhau < 10 OR @doDaiMatKhau > 50
		RETURN 0
	RETURN 1
END
GO
---------------------------------------------------------------

-- TẠO VIEW ĐƠN HÀNG --
-- VÕ TRẦN MINH QUÂN
CREATE VIEW view_DonHang AS
SELECT MaNguoiDung, MaDon, TT_DonHang, TT_ThanhToan, TongGiaTri, NgayDat, NgayGiaoHang, NgayThanhToan
FROM GIOHANG INNER JOIN DONHANG ON GIOHANG.MaGio = DONHANG.MaGio
GO
-----------------------

-- TẠO VIEW CHI TIẾT ĐƠN HÀNG --
-- VÕ TRẦN MINH QUÂN
CREATE VIEW view_ChiTietDonHang AS
SELECT MaDon, DATHANG.MaSanPham, TenSanPham, DATHANG.SoLuong, DATHANG.DonGia, GhiChu
FROM DONHANG INNER JOIN DATHANG ON DONHANG.MaGio = DATHANG.MaGio
			 INNER JOIN SANPHAM ON DATHANG.MaSanPham = SANPHAM.MaSanPham
GO
--------------------------------

-- TẠO PROCEDURE PHÂN QUYỀN NGƯỜI DÙNG --
-- VÕ TRẦN MINH QUÂN
CREATE PROC proc_PhanQuyen(@maNguoiDung VARCHAR(9), @matKhau VARCHAR(50), @laQuanLy BIT)
AS
BEGIN
	DECLARE @taoNguoiDung VARCHAR(500), @themVaoRole VARCHAR(500), @role VARCHAR(10)
	IF @laQuanLy = 1
		SET @role = 'QuanLy'
	ELSE
		SET @role = 'KhachHang'
	SET @taoNguoiDung = 'CREATE LOGIN ' + @maNguoiDung + ' WITH PASSWORD = ''' + @matKhau + ''''
						+ CHAR(13) + 'CREATE USER ' + @maNguoiDung + ' FOR LOGIN ' + @maNguoiDung
	SET @themVaoRole = 'SP_ADDROLEMEMBER ''' + @role + ''', ''' + @maNguoiDung + ''''
	EXEC(@taoNguoiDung)
	EXEC(@themVaoRole)
END
GO
-----------------------------------------

---- TẠO TRIGGER KIỂM TRA SỐ LƯỢNG HÀNG MÀ KHÁCH HÀNG ĐẶT PHÙ HỢP VỚI TỔNG SỐ LƯỢNG HÀNG TRONG KHO HAY KHÔNG --
---- TRẦN ĐĂNG TÂM
--CREATE TRIGGER trig_KiemTraSoLuongMua
--ON DATHANG
--AFTER INSERT, UPDATE
--AS
--BEGIN
--	DECLARE @soLuongMua INT
--	SELECT @soLuongMua = SoLuong
--	FROM inserted

--	DECLARE @soLuongConLai INT
--	SELECT @soLuongConLai = SANPHAM.SoLuong
--	FROM inserted INNER JOIN SANPHAM ON inserted.MaSanPham = SANPHAM.MaSanPham

--	IF @soLuongMua > @soLuongConLai
--	BEGIN
--		PRINT N'Số lượng sản phẩm bạn đặt vượt quá số lượng trong kho!'
--		ROLLBACK TRAN
--	END
--END
--GO
---------------------------------------------------------------------------------------------------------------

---- TẠO FUNCTION TÍNH GIÁ TRỊ GIỎ HÀNG MÀ KHÁCH HÀNG ĐẶT (TRUYỀN VÀO MÃ GIỎ) --
---- VÕ TRẦN MINH QUÂN
--CREATE FUNCTION func_GiaTriGioHang(@maGio INT)
--RETURNS INT
--AS
--BEGIN
--	DECLARE @result INT
--	SELECT @result = SUM(SP.DonGia * DH.SoLuong)
--	FROM DATHANG DH INNER JOIN SANPHAM SP ON DH.MaSanPham = SP.MaSanPham
--	WHERE MaGio = @maGio
--	RETURN @result
--END
--GO
--------------------------------------------------------------------------------

---- TẠO TRIGGER KIỂM TRA MÃ GIẢM GIÁ KHÁCH HÀNG CHỌN ĐÃ HẾT SỐ LƯỢNG HAY CHƯA, MÃ CÒN HIỆU LỰC KHÔNG VÀ MÃ CÓ THỂ ÁP DỤNG CHO GIỎ HÀNG KHÔNG --
---- VÕ TRẦN MINH QUÂN
--CREATE TRIGGER trig_MaGiamGia
--ON DONHANG
--AFTER INSERT, UPDATE
--AS
--BEGIN
--	DECLARE @maGiamGia VARCHAR(20)
--	SELECT @maGiamGia = MaGiamGia
--	FROM inserted
--	IF @maGiamGia IS NOT NULL
--	BEGIN
--		DECLARE @soLuongMaConLai INT, @ngayBatDau DATE, @ngayKetThuc DATE, @giaTriToiThieu INT
--		SELECT @soLuongMaConLai = SoLuong, @ngayBatDau = NgayBatDau, @ngayKetThuc = NgayKetThuc, @giaTriToiThieu = GTGH_ToiThieu
--		FROM DONHANG DH INNER JOIN MAGIAMGIA GG ON DH.MaGiamGia = GG.TenMa
--		IF @soLuongMaConLai = 0
--		BEGIN
--			PRINT N'Mã giảm giá bạn chọn đã hết số lượng'
--			ROLLBACK TRAN
--		END
--		ELSE
--		BEGIN
--			DECLARE @homNay DATE
--			SET @homNay = CONVERT(DATE, GETDATE())
--			IF @homNay < @ngayBatDau
--			BEGIN
--				PRINT N'Mã giảm giá chưa có hiệu lực'
--				ROLLBACK TRAN
--			END
--			ELSE
--			BEGIN
--				IF @homNay > @ngayKetThuc
--				BEGIN
--					PRINT N'Mã giảm giá đã hết hạn'
--					ROLLBACK TRAN
--				END
--				ELSE
--				BEGIN
--					DECLARE @giaTriGioHang INT
--					SELECT @giaTriGioHang = dbo.func_GiaTriGioHang(MaGio)
--					FROM DONHANG
--					IF @giaTriGioHang < @giaTriToiThieu
--					BEGIN
--						DECLARE @giaTriConThieu INT
--						SET @giaTriConThieu = @giaTriToiThieu - @giaTriGioHang
--						PRINT N'Giỏ hàng của bạn chưa đạt đủ giá trị tối thiểu để áp dụng mã giảm giá này!'
--						PRINT N'Hãy mua thêm ít nhất ' + CONVERT(NVARCHAR, @giaTriConThieu) + N'VND để sử dụng mã giảm giá!'
--						ROLLBACK TRAN
--					END
--				END
--			END
--		END
--	END	
--END
--GO
------------------------------------------------------------------------------------------------------------------------------------------------

---- TẠO VIEW GIỎ HÀNG BAO GỒM CÁC THÔNG TIN: MÃ GIỎ, MÃ NGƯỜI DÙNG, MÃ SẢN PHẨM VÀ SỐ LƯỢNG MỖI SẢN PHẨM --
----                          (GIỎ HÀNG CHƯA XUẤT HIỆN TRONG ĐƠN HÀNG)                                    --
---- TRẦN ĐĂNG TÂM
--CREATE VIEW view_GioHang
--AS
--    SELECT g.MaGio, g.MaNguoiDung, d.MaSanPham, d.SoLuong
--    FROM GIOHANG AS g INNER JOIN DATHANG AS d ON g.MaGio = d.MaGio
--    WHERE g.MaGio NOT IN (SELECT MaGio FROM DONHANG)
--GO
------------------------------------------------------------------------------------------------------------

use UNIFOOD

go
alter function USF_CountItemNumber(@CartCode int)
returns int 
as 
begin
	declare @res int
	select @res = sum(DH.SoLuong)
	from DATHANG DH 
	where DH.MaGio = @CartCode
	return @res
end
  
go
alter function USF_GetUserNameOfCart(@CartCode int)
returns nvarchar(50)
as 
begin
	declare @res nvarchar(50)
	select @res = N.HoVaTen
	from GIOHANG G inner join NGUOIDUNG N on G.MaNguoiDung = N.MaNguoiDung
	where G.MaGio = @CartCode
	return @res
end

go
alter function USF_GetUserAddressOfCart(@CartCode int)
returns nvarchar(50)
as 
begin
	declare @res nvarchar(50)
	select @res = N.DiaChi
	from GIOHANG G inner join NGUOIDUNG N on G.MaNguoiDung = N.MaNguoiDung
	where G.MaGio = @CartCode
	return @res
end

go
alter function USF_CountTotalCost(@CartCode int)
returns int 
as 
begin
	declare @res int
	select @res = sum(DH.DonGia*DH.SoLuong)
	from DATHANG DH 
	where DH.MaGio = @CartCode
	return @res
end

go
alter function USF_GetShippingUnitName(@ShippingCode nvarchar(10))
returns nvarchar(50)
as 
begin
	declare @res nvarchar(50)
	select @res = TenDonVi
	from DONVIGIAOHANG GH
	where GH.MaDonVi = @ShippingCode
	return @res
end

go
create function USF_GetPaymentStatus(@status bit)
returns nvarchar(50) 
as 
begin
	if  (@status=1)
		return N'Đã thanh toán'
	return N'Chưa thanh toán' 
end


go
alter view [ViewAllOrder] as
select DH.MaDon as MaDon, dbo.USF_GetUserNameOfCart(DH.MaGio) as TenNguoiDung, 
		dbo.USF_GetUserAddressOfCart(DH.MaGio) as DiaChi, dbo.USF_CountItemNumber(DH.MaGio) as Quantity,  
		dbo.USF_GetShippingUnitName(DH.MaDonViGiaoHang) as TenDonViGiaoHang, 
		DH.NgayDat as NgayDat, DH.NgayGiaoHang as NgayGiaoHang, DH.NgayThanhToan as NgayThanhToan, 
		DH.TongGiaTri as TongGiaTri, DH.TT_DonHang as TrangThaiDonHang, dbo.USF_GetPaymentStatus(DH.TT_ThanhToan) as TrangThaiThanhToan
from DONHANG DH

USE UNIFOOD
go

create function USF_GetItemQuantity(@itemCode char(10))
returns int 
as
begin
	declare @num int
	select @num = Pr.SoLuong
	from dbo.SANPHAM Pr
	where Pr.MaSanPham = @itemCode
	if (@num>0) return @num
	return 0
end


go
alter trigger TRIG_NewOrder
on dbo.DONHANG
after insert
as 
begin
	--first test: check number of item
	declare @num int
	select @num = count(*)
	from dbo.DATHANG DT inner join inserted i on i.MaGio = DT.MaGio
	where DT.SoLuong > dbo.USF_GetItemQuantity(DT.MaSanPham)
	if (@num>0) 
	begin
		rollback tran 
		print('Number of Product is not enough')
		return 
	end
	--second test: check bill date and order finish date
	declare @nowdate date 
	declare @billDate date
	declare @endDate date
	SELECT @nowdate = CAST( GETDATE() AS Date)
	select @billDate = i.NgayThanhToan, @endDate = i.NgayGiaoHang
	from inserted i
	if (@billDate < @nowdate OR @endDate < @nowdate)
	begin
		rollback tran
		print('Payment date and complete date must be bigger than placed date')
		return 
	end
	--third test: total cost must be right!
	declare @cost_real int
	declare @cost_bill int
	select @cost_bill = i.TongGiaTri, @cost_real = dbo.USF_CountTotalCost(i.MaGio) from inserted i
	if (@cost_bill<>@cost_real) 
	begin
		update dbo.DONHANG set TongGiaTri = @cost_real 
			where MaDon = (select i.MaDon from inserted i)
		print('The cost is not right, we have just corcted it!')
		return 
	end
	------------------------------------------------------------------------
	print('Ok! orfer is accepted!')
end 


















USE UNIFOOD
GO
-- TẠO FUNCTION KIỂM TRA NGÀY SINH NGƯỜI DÙNG CÓ HỢP LỆ HAY KHÔNG --
CREATE FUNCTION func_NgaySinhHopLe(@ngaySinh DATE)
RETURNS BIT
AS
BEGIN
	DECLARE @homNay DATE
	SET @homNay = CONVERT(DATE, GETDATE())
	IF @ngaySinh >= @homNay
		RETURN 0
	RETURN 1
END
GO

-- TẠO FUNCTION KIỂM TRA SỐ ĐIỆN THOẠI NGƯỜI DÙNG ĐÃ TỒN TẠI HAY CHƯA --
CREATE FUNCTION func_DienThoaiHopLe(@dienThoai VARCHAR(10))
RETURNS BIT
AS
BEGIN
	IF @dienThoai NOT IN (SELECT DienThoai FROM NGUOIDUNG)
		RETURN 1
	RETURN 0
END
GO

-- TẠO FUNCTION KIỂM TRA EMAIL NGƯỜI DÙNG ĐÃ TỒN TẠI HAY CHƯA --
CREATE FUNCTION func_EmailHopLe(@email VARCHAR(30))
RETURNS BIT
AS
BEGIN
	IF @email NOT IN (SELECT Email FROM NGUOIDUNG)
		RETURN 1
	RETURN 0
END
GO

-- TẠO FUNCTION SINH MÃ NGƯỜI DÙNG --
CREATE FUNCTION func_TaoMa(@tienTo VARCHAR(2))
RETURNS VARCHAR(9)
AS
BEGIN
	DECLARE @ketQua VARCHAR(9)
	DECLARE @maCuoiCung VARCHAR(9)
	SET @maCuoiCung = (SELECT TOP(1) MaNguoiDung 
					   FROM NGUOIDUNG
					   WHERE MaNguoiDung LIKE (@tienTo + '%')
					   ORDER BY MaNguoiDung DESC)
	SET @maCuoiCung = (SELECT SUBSTRING(@maCuoiCung, 3, 7))
	DECLARE @maSo INT
	SET @maSo = CONVERT(INT, @maCuoiCung)
	DECLARE @maMoi VARCHAR(7)
	SET @maMoi = CONVERT(VARCHAR(7), @maSo + 1)
	DECLARE @doDaiMaMoi INT
	SET @doDaiMaMoi = LEN(@maMoi)
	IF @doDaiMaMoi < 7
	BEGIN
		DECLARE @chuoiSo0 VARCHAR(6)
		SET @chuoiSo0 = '0'
		WHILE LEN(@chuoiSo0) < (7 - @doDaiMaMoi)
			SET @chuoiSo0 = @chuoiSo0 + '0'
		SET @ketQua = @tienTo + @chuoiSo0 + @maMoi
	END
	ELSE
		SET @ketQua = @tienTo + @maMoi
	RETURN @ketQua
END
GO

-- TẠO VIEW NGƯỜI DÙNG --
CREATE VIEW view_NguoiDung AS
SELECT MaNguoiDung, HoVaTen, GioiTinh, NgaySinh, DiaChi, DienThoai, Email
FROM NGUOIDUNG
GO

-- TẠO VIEW ĐƠN HÀNG --
CREATE VIEW view_DonHang AS
SELECT MaNguoiDung, MaDon, TT_DonHang, TT_ThanhToan, TongGiaTri, NgayDat, NgayGiaoHang, NgayThanhToan
FROM GIOHANG INNER JOIN DONHANG ON GIOHANG.MaGio = DONHANG.MaGio
GO

-- TẠO VIEW CHI TIẾT ĐƠN HÀNG --
CREATE VIEW view_ChiTietDonHang AS
SELECT MaDon, DATHANG.MaSanPham, TenSanPham, DATHANG.SoLuong, DATHANG.DonGia, GhiChu
FROM DONHANG INNER JOIN DATHANG ON DONHANG.MaGio = DATHANG.MaGio
			 INNER JOIN SANPHAM ON DATHANG.MaSanPham = SANPHAM.MaSanPham
GO

-- TẠO PROCEDURE PHÂN QUYỀN NGƯỜI DÙNG --
CREATE PROC proc_PhanQuyen(@maNguoiDung VARCHAR(9), @matKhau VARCHAR(50), @laQuanLy BIT)
AS
BEGIN
	DECLARE @taoNguoiDung VARCHAR(500), @role VARCHAR(10), @themVaoRole VARCHAR(100), @phanQuyenView VARCHAR(100)
	IF @laQuanLy = 1
		SET @role = 'QuanLy'
	ELSE
		SET @role = 'KhachHang'
	SET @taoNguoiDung = 'CREATE LOGIN ' + @maNguoiDung + ' WITH PASSWORD = ''' + @matKhau + ''''
						+ CHAR(13) + 'CREATE USER ' + @maNguoiDung + ' FOR LOGIN ' + @maNguoiDung
	SET @themVaoRole = 'SP_ADDROLEMEMBER ''' + @role + ''', ''' + @maNguoiDung + ''''
	SET @phanQuyenView = 'EXEC dbo.proc_PhanQuyenViewCho' + @role + ' ''' + @maNguoiDung + ''''
	EXEC(@taoNguoiDung)
	EXEC(@themVaoRole)
	EXEC(@phanQuyenView)
END
GO

-- TẠO PROCEDURE ĐỔI MẬT KHẨU LOGIN --
CREATE PROC proc_DoiMatKhau(@maNguoiDung VARCHAR(9), @matKhau VARCHAR(50))
AS
BEGIN
	DECLARE @cauLenh VARCHAR(100)
	SET @cauLenh = 'ALTER LOGIN ' + @maNguoiDung + ' WITH PASSWORD = ''' + @matKhau + ''''
	EXEC(@cauLenh)
END
GO

USE UNIFOOD
GO
-- TẠO PROCEDURE TẠO VIEW VÀ PHÂN QUYỀN VIEW CHO QUẢN LÝ --
CREATE PROC proc_PhanQuyenViewChoQuanLy(@maNguoiDung VARCHAR(9))
AS
BEGIN
	DECLARE @tenView VARCHAR(100), @taoView VARCHAR(500), @phanQuyen VARCHAR(500)
	SET @tenView = 'view_NguoiDung' + @maNguoiDung
	SET @taoView = 'CREATE VIEW ' + @tenView + ' AS'
				   + CHAR(13) + 'SELECT * FROM NGUOIDUNG WHERE MaNguoiDung = ''' + @maNguoiDung + ''''
	SET @phanQuyen = 'GRANT SELECT, UPDATE(HoVaTen, GioiTinh, NgaySinh, DiaChi, DienThoai, Email, MatKhau) ON ' + @tenView + ' TO ' + @maNguoiDung
	EXEC(@taoView)
	EXEC(@phanQuyen)
END
GO

-- TẠO PROCEDURE TẠO VIEW VÀ PHÂN QUYỀN VIEW CHO KHÁCH HÀNG --
CREATE PROC proc_PhanQuyenViewChoKhachHang(@maNguoiDung VARCHAR(9))
AS
BEGIN
	DECLARE @tenView VARCHAR(100), @taoView VARCHAR(500), @phanQuyen VARCHAR(500)

	SET @tenView = 'view_NguoiDung' + @maNguoiDung
	SET @taoView = 'CREATE VIEW ' + @tenView + ' AS'
				   + CHAR(13) + 'SELECT * FROM NGUOIDUNG WHERE MaNguoiDung = ''' + @maNguoiDung + ''''
	SET @phanQuyen = 'GRANT SELECT, UPDATE(HoVaTen, GioiTinh, NgaySinh, DiaChi, DienThoai, Email, MatKhau) ON ' + @tenView + ' TO ' + @maNguoiDung
	EXEC(@taoView)
	EXEC(@phanQuyen)

	SET @tenView = 'view_GioHang' + @maNguoiDung
	SET @taoView = 'CREATE VIEW ' + @tenView + ' AS'
				   + CHAR(13) + 'SELECT * FROM GIOHANG WHERE MaNguoiDung = ''' + @maNguoiDung + ''''
	SET @phanQuyen = 'GRANT SELECT ON ' + @tenView + ' TO ' + @maNguoiDung
	EXEC(@taoView)
	EXEC(@phanQuyen)

	SET @tenView = 'view_DatHang' + @maNguoiDung
	SET @taoView = 'CREATE VIEW ' + @tenView + ' AS'
				   + CHAR(13) + 'SELECT MaGio, MaSanPham, SoLuong, GhiChu FROM DATHANG'
				   + CHAR(13) + 'WHERE MaGio IN (SELECT MaGio FROM view_GioHang' + @maNguoiDung + ')'
	SET @phanQuyen = 'GRANT SELECT, INSERT, DELETE, UPDATE ON ' + @tenView + ' TO ' + @maNguoiDung
	EXEC(@taoView)
	EXEC(@phanQuyen)

	SET @tenView = 'view_DonHang' + @maNguoiDung
	SET @taoView = 'CREATE VIEW ' + @tenView + ' AS'
				   + CHAR(13) + 'SELECT * FROM DONHANG'
				   + CHAR(13) + 'WHERE MaGio IN (SELECT MaGio FROM view_GioHang' + @maNguoiDung + ')'
	SET @phanQuyen = 'GRANT SELECT ON ' + @tenView + ' TO ' + @maNguoiDung
	EXEC(@taoView)
	EXEC(@phanQuyen)
END
GO

-- TẠO TRIGGER KHI CẬP NHẬT ĐƠN GIÁ SẢN PHẨM Ở BẢNG SẢN PHẨM --
CREATE TRIGGER trig_CapNhatDonGia
ON SANPHAM
AFTER UPDATE
AS
BEGIN
	DECLARE @maSanPham VARCHAR(10), @donGia INT
	SELECT @maSanPham = MaSanPHam, @donGia = DonGia
	FROM inserted

	UPDATE DATHANG
	SET DonGia = @donGia
	WHERE MaSanPham = @maSanPham AND MaGio NOT IN (SELECT MaGio FROM DONHANG)
END
GO

-- TẠO TRIGGER KIỂM TRA BẢNG ĐẶT HÀNG --
CREATE TRIGGER trig_KiemTraDatHang
ON DATHANG
AFTER INSERT, UPDATE
AS
BEGIN
	DECLARE @maGio INT
	SELECT @maGio = MaGio
	FROM inserted

	IF @maGio IN (SELECT MaGio FROM DONHANG)
	BEGIN
		RAISERROR('Giỏ hàng đã được xác nhận, bạn không thể thay đổi', 16, 1)
		ROLLBACK TRAN
	END
	ELSE
	BEGIN
		DECLARE @maSanPham VARCHAR(10)
		SELECT @maSanPham = MaSanPham
		FROM inserted

		DECLARE @donGia INT
		SELECT @donGia = DonGia
		FROM SANPHAM
		WHERE MaSanPham = @maSanPham

		UPDATE DATHANG SET DonGia = @donGia WHERE MaGio = @maGio AND MaSanPham = @maSanPham
	END
END
GO
