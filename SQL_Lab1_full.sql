CREATE DATABASE lab1_FULL
GO
USE lab1_FULL
GO
SET DATEFORMAT DMY
GO
CREATE TABLE KHACHHANG(
	MAKH CHAR(4),
	HOTEN VARCHAR(40),
	DCHI VARCHAR(50),
	SODT VARCHAR(20),
	NGSINH	SMALLDATETIME,
	DOANHSO MONEY,
	NGDK SMALLDATETIME
)

CREATE TABLE NHANVIEN (
	MANV CHAR(4),
	HOTEN VARCHAR(40),
	SODT VARCHAR(20),
	NGVL SMALLDATETIME
)

CREATE TABLE SANPHAM (
	MASP CHAR(4),
	TENSP VARCHAR(40),
	DVT VARCHAR(20),
	NUOCSX VARCHAR(40),
	GIA MONEY
)


CREATE TABLE HOADON (
	SOHD INT,
	NGHD SMALLDATETIME,
	MAKH CHAR(4), 
	MANV CHAR(4),
	TRIGIA MONEY
)

CREATE TABLE CTHD (
	SOHD INT,
	MASP CHAR(4),
	SL INT
)
INSERT INTO dbo.NHANVIEN VALUES('NV01','Nguyen Nhu Nhut', '0927345678', '20060413')
INSERT INTO dbo.NHANVIEN VALUES('NV02','Le Thi Phi Yen', '0987567390', '20060421')
INSERT INTO dbo.NHANVIEN VALUES('NV03','Nguyen Van B', '0997047382', '20060427')
INSERT INTO dbo.NHANVIEN VALUES('NV04','Ngo Thanh Tuan', '0913758498', '20060424')
INSERT INTO dbo.NHANVIEN VALUES('NV05','Nguyen Thi Truc Thanh', '0918590389', '20060420')

INSERT INTO dbo.KHACHHANG VALUES('KH01', 'Nguyen Van A', '731 Tran Hung Dao, Q5, TpHCM', '08823451', '19601022', 13060000, '20060722')
INSERT INTO dbo.KHACHHANG VALUES('KH02', 'Tran Ngoc Han', '23/5 Nguyen Trai, Q5, TpHCM', '0908256478', '19740403', 280000, '20060730')
INSERT INTO dbo.KHACHHANG VALUES('KH03', 'Tran Ngoc Linh', '45 Nguyen Canh Chan, Q1, TpHCM', '0938776266', '19800612', 3860000, '20060805')
INSERT INTO dbo.KHACHHANG VALUES('KH04', 'Tran Minh Long', '50/34 Le Dai Hanh, Q10, TpHCM', '0917325476', '19650309', 250000, '20061002')
INSERT INTO dbo.KHACHHANG VALUES('KH05', 'Le Nhat Minh', '34 Truong Dinh, Q3, TpHCM', '08246108', '19500310', 21000, '20061028')
INSERT INTO dbo.KHACHHANG VALUES('KH06', 'Le Hoai Thuong', '227 Nguyen Van Cu, Q5, TpHCM', '08631708', '19811231', 915000, '20061124')
INSERT INTO dbo.KHACHHANG VALUES('KH07', 'Nguyen Van Tam', '32/3 Tran Binh Trong, Q5, TpHCM', '0916783565', '19710406', 12500, '20061201')
INSERT INTO dbo.KHACHHANG VALUES('KH08', 'Pham Thi Thanh', '45/2 An Duong Vuong, Q5, TpHCM', '0938435756', '19710110', 365000, '20061213')
INSERT INTO dbo.KHACHHANG VALUES('KH09', 'Le Ha Vinh', '873 Le Hong Phong, Q5, TpHCM', '08654763', '19790903', 70000, '20070114')
INSERT INTO dbo.KHACHHANG VALUES('KH10', 'Ha Duy Lap', '34/34B Nguyen Trai, Q1, TpHCM', '08768904', '19830502', 67500, '20070116')

INSERT INTO dbo.SANPHAM VALUES('BC01', 'But chi', 'cay', 'Singapore', 3000)
INSERT INTO dbo.SANPHAM VALUES('BC02', 'But chi', 'cay', 'Singapore', 5000)
INSERT INTO dbo.SANPHAM VALUES('BC03', 'But chi', 'cay', 'Viet Nam', 3500)
INSERT INTO dbo.SANPHAM VALUES('BC04', 'But chi', 'hop', 'Viet Nam', 30000)
INSERT INTO dbo.SANPHAM VALUES('BB01', 'But bi', 'cay', 'Viet Nam', 5000)
INSERT INTO dbo.SANPHAM VALUES('BB02', 'But bi', 'cay', 'Trung Quoc', 7000)
INSERT INTO dbo.SANPHAM VALUES('BB03', 'But bi', 'hop', 'Thai Lan', 100000)
INSERT INTO dbo.SANPHAM VALUES('TV01', 'Tap 100 giay mong', 'quyen', 'Viet Nam', 2500)
INSERT INTO dbo.SANPHAM VALUES('TV02', 'Tap 200 giay mong', 'quyen', 'Viet Nam', 4500)
INSERT INTO dbo.SANPHAM VALUES('TV03', 'Tap 100 giay tot', 'quyen', 'Viet Nam', 3000)
INSERT INTO dbo.SANPHAM VALUES('TV04', 'Tap 200 giay tot', 'quyen', 'Viet Nam', 5500)
INSERT INTO dbo.SANPHAM VALUES('TV05', 'Tap 100 trang', 'chuc', 'Viet Nam', 23000)
INSERT INTO dbo.SANPHAM VALUES('TV06', 'Tap 200 trang', 'chuc', 'Viet Nam', 53000)
INSERT INTO dbo.SANPHAM VALUES('TV07', 'Tap 100 trang', 'chuc', 'Trung Quoc', 34000)
INSERT INTO dbo.SANPHAM VALUES('ST01', 'So tay 500 trang', 'quyen', 'Trung Quoc', 40000)
INSERT INTO dbo.SANPHAM VALUES('ST02', 'So tay loai 1', 'quyen', 'Viet Nam', 55000)
INSERT INTO dbo.SANPHAM VALUES('ST03', 'So tay loai 2', 'quyen', 'Viet Nam', 51000)
INSERT INTO dbo.SANPHAM VALUES('ST04', 'So tay', 'quyen', 'Thai Lan', 550000)
INSERT INTO dbo.SANPHAM VALUES('ST05', 'So tay mong', 'quyen', 'Thai Lan', 20000)
INSERT INTO dbo.SANPHAM VALUES('ST06', 'Phan viet bang', 'hop', 'Viet Nam', 5000)
INSERT INTO dbo.SANPHAM VALUES('ST07', 'Phan khong bui', 'hop', 'Viet Nam', 7000)
INSERT INTO dbo.SANPHAM VALUES('ST08', 'Bong bang', 'cai', 'Viet Nam', 1000)
INSERT INTO dbo.SANPHAM VALUES('ST09', 'But long', 'cay', 'Viet Nam', 5000)
INSERT INTO dbo.SANPHAM VALUES('ST10', 'But long', 'cay', 'Trung Quoc', 7000)

INSERT INTO dbo.HOADON VALUES('1001', '20060723', 'KH01', 'NV01', 32000)
INSERT INTO dbo.HOADON VALUES('1002', '20060812', 'KH01', 'NV02', 84000)
INSERT INTO dbo.HOADON VALUES('1003', '20060823', 'KH02', 'NV01', 10000)
INSERT INTO dbo.HOADON VALUES('1004', '20060901', 'KH02', 'NV01', 18000)
INSERT INTO dbo.HOADON VALUES('1005', '20061020', 'KH01', 'NV02', 3800000)
INSERT INTO dbo.HOADON VALUES('1006', '20061016', 'KH01', 'NV03', 2430000)
INSERT INTO dbo.HOADON VALUES('1007', '20061028', 'KH03', 'NV03', 51000)
INSERT INTO dbo.HOADON VALUES('1008', '20061028', 'KH01', 'NV03', 44000)
INSERT INTO dbo.HOADON VALUES('1009', '20060723', 'KH03', 'NV04', 20000)
INSERT INTO dbo.HOADON VALUES('1010', '20061101', 'KH01', 'NV01', 5200000)
INSERT INTO dbo.HOADON VALUES('1011', '20061104', 'KH04', 'NV03', 250000)
INSERT INTO dbo.HOADON VALUES('1012', '20061130', 'KH05', 'NV03', 21000)
INSERT INTO dbo.HOADON VALUES('1013', '20061212', 'KH06', 'NV01', 5000)
INSERT INTO dbo.HOADON VALUES('1014', '20061231', 'KH03', 'NV02', 3150000)
INSERT INTO dbo.HOADON VALUES('1015', '20070101', 'KH06', 'NV01', 910000)
INSERT INTO dbo.HOADON VALUES('1016', '20070101', 'KH07', 'NV02', 12500)
INSERT INTO dbo.HOADON VALUES('1017', '20070102', 'KH08', 'NV03', 35000)
INSERT INTO dbo.HOADON VALUES('1018', '20070113', 'KH08', 'NV03', 330000)
INSERT INTO dbo.HOADON VALUES('1019', '20070113', 'KH01', 'NV03', 30000)
INSERT INTO dbo.HOADON VALUES('1020', '20070114', 'KH09', 'NV04', 70000)
INSERT INTO dbo.HOADON VALUES('1021', '20070116', 'KH10', 'NV03', 67500)
INSERT INTO dbo.HOADON VALUES('1022', '20070116', NULL, 'NV03', 7000)
INSERT INTO dbo.HOADON VALUES('1023', '20070117', NULL, 'NV01', 330000)

INSERT INTO dbo.CTHD VALUES('1001', 'TV02', 10)
INSERT INTO dbo.CTHD VALUES('1001', 'ST01', 5)
INSERT INTO dbo.CTHD VALUES('1001', 'BC01', 5)
INSERT INTO dbo.CTHD VALUES('1001', 'BC02', 10)
INSERT INTO dbo.CTHD VALUES('1001', 'ST08', 10)
INSERT INTO dbo.CTHD VALUES('1002', 'BC04', 20)
INSERT INTO dbo.CTHD VALUES('1002', 'BB01', 20)
INSERT INTO dbo.CTHD VALUES('1002', 'BB02', 20)
INSERT INTO dbo.CTHD VALUES('1003', 'BB03', 10)
INSERT INTO dbo.CTHD VALUES('1004', 'TV01', 20)
INSERT INTO dbo.CTHD VALUES('1004', 'TV02', 10)
INSERT INTO dbo.CTHD VALUES('1004', 'TV03', 10)
INSERT INTO dbo.CTHD VALUES('1004', 'TV04', 10)
INSERT INTO dbo.CTHD VALUES('1005', 'TV05', 50)
INSERT INTO dbo.CTHD VALUES('1005', 'TV06', 50)
INSERT INTO dbo.CTHD VALUES('1006', 'TV07', 20)
INSERT INTO dbo.CTHD VALUES('1006', 'ST01', 30)
INSERT INTO dbo.CTHD VALUES('1006', 'ST02', 10)
INSERT INTO dbo.CTHD VALUES('1007', 'ST03', 10)
INSERT INTO dbo.CTHD VALUES('1008', 'ST04', 8)
INSERT INTO dbo.CTHD VALUES('1009', 'ST05', 10)
INSERT INTO dbo.CTHD VALUES('1010', 'TV07', 50)
INSERT INTO dbo.CTHD VALUES('1010', 'ST07', 50)
INSERT INTO dbo.CTHD VALUES('1010', 'ST08', 100)
INSERT INTO dbo.CTHD VALUES('1010', 'ST04', 50)
INSERT INTO dbo.CTHD VALUES('1010', 'TV03', 100)
INSERT INTO dbo.CTHD VALUES('1011', 'ST06', 50)
INSERT INTO dbo.CTHD VALUES('1012', 'ST07', 3)
INSERT INTO dbo.CTHD VALUES('1013', 'ST08', 5)
INSERT INTO dbo.CTHD VALUES('1014', 'BC02',	80)
INSERT INTO dbo.CTHD VALUES('1014', 'BB02', 100)
INSERT INTO dbo.CTHD VALUES('1014', 'BC04', 60)
INSERT INTO dbo.CTHD VALUES('1014', 'BB01', 50)
INSERT INTO dbo.CTHD VALUES('1015', 'BB02', 30)
INSERT INTO dbo.CTHD VALUES('1015', 'BB03', 7)
INSERT INTO dbo.CTHD VALUES('1016', 'TV01', 5)
INSERT INTO dbo.CTHD VALUES('1017', 'TV02', 1)
INSERT INTO dbo.CTHD VALUES('1017', 'TV03', 1)
INSERT INTO dbo.CTHD VALUES('1017', 'TV04', 5)
INSERT INTO dbo.CTHD VALUES('1018', 'ST04', 6)
INSERT INTO dbo.CTHD VALUES('1019', 'ST05', 1)
INSERT INTO dbo.CTHD VALUES('1019', 'ST06', 2)
INSERT INTO dbo.CTHD VALUES('1020', 'ST07', 10)
INSERT INTO dbo.CTHD VALUES('1021', 'ST08', 5)
INSERT INTO dbo.CTHD VALUES('1021', 'TV01', 7)
INSERT INTO dbo.CTHD VALUES('1021', 'TV02', 10)
INSERT INTO dbo.CTHD VALUES('1022', 'ST07', 1)
INSERT INTO dbo.CTHD VALUES('1023', 'ST04', 6)

--2.1. Các yêu cầu tạo dữ liệu
--1 Tạo các quan hệ và khai báo các khóa chính, khóa ngoại của quan hệ.
-- Đổi kiểu dữ liệu sang NOT Null thì mới tạo khóa chính được
ALTER TABLE dbo.KHACHHANG ALTER COLUMN MAKH CHAR(4) NOT NULL
ALTER TABLE dbo.SANPHAM ALTER COLUMN MASP CHAR(4) NOT NULL
ALTER TABLE dbo.NHANVIEN ALTER COLUMN MANV CHAR(4) NOT NULL
ALTER TABLE DBO.HOADON ALTER COLUMN SOHD INT NOT NULL
--Khóa chính
ALTER TABLE dbo.KHACHHANG ADD PRIMARY KEY(MAKH)
ALTER TABLE dbo.SANPHAM ADD PRIMARY KEY(MASP)
ALTER TABLE dbo.NHANVIEN ADD PRIMARY KEY(MANV)
ALTER TABLE dbo.HOADON ADD PRIMARY KEY(SOHD)
-- Khóa ngoại
ALTER TABLE dbo.HOADON ADD FOREIGN KEY(MAKH) REFERENCES dbo.KHACHHANG
ALTER TABLE dbo.HOADON ADD FOREIGN KEY(MANV) REFERENCES dbo.NHANVIEN
ALTER TABLE dbo.CTHD ADD FOREIGN KEY(SOHD) REFERENCES dbo.HOADON
ALTER TABLE dbo.CTHD ADD FOREIGN KEY(MASP) REFERENCES dbo.SANPHAM
--2 Thêm vào thuộc tính GHICHU có kiểu dữ liệu varchar(20) cho quan hệ SANPHAM.
ALTER TABLE dbo.SANPHAM ADD GHICHU VARCHAR(20)
--3 Thêm vào thuộc tính LOAIKH có kiểu dữ liệu là tinyint cho quan hệ KHACHHANG.
ALTER TABLE dbo.KHACHHANG ADD LOAIKH tinyint
--4 Sửa kiểu dữ liệu của thuộc tính GHICHU trong quan hệ SANPHAM thành varchar(100).
ALTER TABLE dbo.SANPHAM ALTER COLUMN GHICHU varchar(100)
--5 Xóa thuộc tính GHICHU trong quan hệ SANPHAM.
ALTER TABLE dbo.SANPHAM DROP COLUMN GHICHU
--6 Làm thế nào để thuộc tính LOAIKH trong quan hệ KHACHHANG có thể lưu các giá trị là: “Vang lai”, “Thuong xuyen”, “Vip”, …
--7 Đơn vị tính của sản phẩm chỉ có thể là (“cay”,”hop”,”cai”,”quyen”,”chuc”)
SELECT * FROM dbo.SANPHAM AS SP WHERE SP.DVT IN('cay', 'hop', 'cai', 'quyen', 'chuc');
--8 Giá bán của sản phẩm từ 500 đồng trở lên.
SELECT * FROM dbo.SANPHAM AS SP WHERE SP.GIA>=500;
--9 Mỗi lần mua hàng, khách hàng phải mua ít nhất 1 sản phẩm.
SELECT * FROM KHACHHANG AS KH WHERE 1< (SELECT COUNT(*) FROM dbo.HOADON AS HD WHERE HD.MAKH=KH.MAKH);
--10 Ngày khách hàng đăng ký là khách hàng thành viên phải lớn hơn ngày sinh của người đó.
SELECT * FROM KHACHHANG AS KH WHERE KH.NGDK>KH.NGSINH;
--11 Ngày mua hàng (NGHD) của một khách hàng thành viên sẽ lớn hơn hoặc bằng ngày khách hàng đó đăng ký thành viên (NGDK).
SELECT KH.MAKH, KH.HOTEN FROM dbo.KHACHHANG AS KH, DBO.HOADON as HD WHERE HD.MAKH=KH.MAKH AND KH.NGDK<=HD.NGHD; --Bị trung khi chạy
--12 Ngày bán hàng (NGHD) của một nhân viên phải lớn hơn hoặc bằng ngày nhân viên đó vào làm.
SELECT * FROM dbo.NHANVIEN AS NV WHERE 1<=(SELECT COUNT(*) FROM dbo.HOADON AS HD WHERE HD.MANV=NV.MANV)
--13 Mỗi một hóa đơn phải có ít nhất một chi tiết hóa đơn.
--14 Trị giá của một hóa đơn là tổng thành tiền (số lượng*đơn giá) của các chi tiết thuộc hóa đơn đó.
--15 Doanh số của một khách hàng là tổng trị giá các hóa đơn mà khách hàng thành viên đó đã mua.
--Phần 2
--1 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất.
SELECT SP.MASP, SP.TENSP FROM dbo.SANPHAM AS SP WHERE SP.NUOCSX='Trung Quoc'
--2 In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cay”, ”quyen”.
SELECT * FROM dbo.SANPHAM AS SP WHERE SP.DVT IN ('cay', 'quyen')
--3 In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là “B” và kết thúc là “01”.
SELECT * FROM dbo.SANPHAM AS SP WHERE SP.MASP LIKE 'B%01'
--4 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất có giá từ 30.000 đến 40.000.
SELECT * FROM dbo.SANPHAM AS SP WHERE SP.NUOCSX='Trung Quoc' AND SP.GIA BETWEEN 30000 AND 40000
--5 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” hoặc “Thai Lan” sản xuất có giá từ 30.000 đến 40.000.
SELECT * FROM dbo.SANPHAM AS SP WHERE (SP.NUOCSX='Trung Quoc' OR SP.NUOCSX='Thai Lan') AND SP.GIA BETWEEN 30000 AND 40000
--6 In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007.
SELECT * FROM dbo.HOADON AS HD WHERE HD.NGHD IN ('20070101','20010102')
--7 In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007, sắp xếp theo ngày (tăng dần) và trị giá của hóa đơn (giảm dần).
SELECT * FROM dbo.HOADON AS HD WHERE MONTH(HD.NGHD)=1 AND YEAR(HD.NGHD)=2007 ORDER BY HD.NGHD ASC, HD.TRIGIA DESC
--8 In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007.
SELECT * FROM dbo.HOADON AS HD WHERE HD.NGHD='20070101'
--9 In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Nguyen Van B” lập trong ngày 28/10/2006.
--UPDATE dbo.KHACHHANG SET HOTEN='Nguyen Van B' WHERE KHACHHANG.HOTEN='Nguyen Van A'
SELECT COUNT(*) FROM dbo.HOADON AS HD, dbo.KHACHHANG AS KH WHERE HD.MAKH=KH.MAKH AND KH.HOTEN='Nguyen Van B' AND HD.NGHD='20061028';
--10 In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyen Van A” mua trong tháng 10/2006.
SELECT SP.MASP, SP.TENSP FROM 
(dbo.SANPHAM SP JOIN dbo.CTHD CT ON SP.MASP=CT.MASP) JOIN
(dbo.KHACHHANG KH JOIN dbo.HOADON HD ON KH.MAKH=HD.MAKH) ON CT.SOHD=HD.SOHD 
WHERE KH.HOTEN='Nguyen Van A' AND MONTH(HD.NGHD)=10 AND  YEAR(HD.NGHD)=2006
--11 Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”.
SELECT * FROM dbo.HOADON HD, dbo.CTHD CT WHERE HD.SOHD=CT.SOHD AND CT.MASP IN ('BB01', 'BB02')
--12 Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
SELECT * FROM dbo.CTHD, dbo.HOADON WHERE CTHD.SOHD=HOADON.SOHD AND CTHD.MASP IN ('BB01', 'BB02')
SELECT CTHD.MASP, COUNT(CTHD.MASP) FROM dbo.CTHD GROUP BY CTHD.MASP
--13 Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “BB01” và “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
SELECT * FROM dbo.HOADON HD WHERE 2=( SELECT COUNT(*) FROM dbo.CTHD CT WHERE HD.SOHD=CT.SOHD AND CT.SL BETWEEN 10 AND 20 AND CT.MASP IN ('BB01', 'BB02'))
--14 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất hoặc các sản phẩm được bán ra trong ngày 1/1/2007.

--15 In ra danh sách các sản phẩm (MASP,TENSP) không bán được.

--16 In ra danh sách các sản phẩm (MASP,TENSP) không bán được trong năm 2006.

--17 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất không bán được trong năm 2006.

--18 Tìm số hóa đơn đã mua tất cả các sản phẩm do Singapore sản xuất.

--19 Có bao nhiêu hóa đơn không phải của khách hàng đăng ký thành viên mua?

--20 Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.

--21 Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu ?

--22 Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?

--23 Tính doanh thu bán hàng trong năm 2006.

--24 Tìm số hóa đơn có trị giá cao nhất trong năm 2006.

--25 Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006.

--26 In ra danh sách 3 khách hàng (MAKH, HOTEN) có doanh số cao nhất.

--27 In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.

--28 In ra danh sách các sản phẩm (MASP, TENSP) do “Thai Lan” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của tất cả các sản phẩm).

--29 In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của sản phẩm do “Trung Quoc” sản xuất).

--30 * In ra danh sách 3 khách hàng có doanh số cao nhất (sắp xếp theo kiểu xếp hạng).

--31 Tính tổng số sản phẩm do “Trung Quoc” sản xuất.

--32 Tính tổng số sản phẩm của từng nước sản xuất.

--33 Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm.

--34 Tính doanh thu bán hàng mỗi ngày.

--35 Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006.

--36 Tính doanh thu bán hàng của từng tháng trong năm 2006.

--37 Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau.

--38 Tìm hóa đơn có mua 3 sản phẩm do “Viet Nam” sản xuất (3 sản phẩm khác nhau).

--39 Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất.

--40 Tháng mấy trong năm 2006, doanh số bán hàng cao nhất ?

--41 Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006.

--42 *Mỗi nước sản xuất, tìm sản phẩm (MASP,TENSP) có giá bán cao nhất.

--43 Tìm nước sản xuất sản xuất ít nhất 3 sản phẩm có giá bán khác nhau.

--44 *Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất.
