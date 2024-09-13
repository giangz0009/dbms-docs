/****** XÁC ĐỊNH DB NHẬP DỮ LIỆU ******/
USE [a08VXTHE_SaleJ]
GO
/****** NHẬP DỮ LIỆU: Table DMCSBH******/
INSERT INTO DMCSBH(mscsbh, tencsbh, dc, sodt, succhua ,controng)
     VALUES ('01', N'Tân Bình, Tp.HCM', N'Hoàng Văn Thụ','123456','2000', '1000')
GO
INSERT INTO DMCSBH(mscsbh, tencsbh, dc, sodt, succhua ,controng)
     VALUES ('02', N'Thủ Đức, Tp.HCM', N'Võ Văn Ngân','6789','5000', '4000')
GO
/****** NHẬP DỮ LIỆU: Table DMNSX******/
INSERT INTO DMNSX(msnsx, tennsx, nuoc)
     VALUES('01', 'SJC', 'VN')
GO
INSERT INTO DMNSX(msnsx, tennsx, nuoc)
     VALUES('02', 'Tín Nghĩa', 'VN')
GO
INSERT INTO DMNSX(msnsx, tennsx, nuoc)
     VALUES('03', 'FEDEX', 'USA')
GO
/****** NHẬP DỮ LIỆU: Table DMNV******/
INSERT INTO DMNV(msnv, hoten, sodt)
     VALUES('01', N'Tony Tèo', '1111')
GO
INSERT INTO DMNV(msnv, hoten, sodt)
     VALUES('02', N'Hellen Thị Nở', '222')
GO
/****** NHẬP DỮ LIỆU: Table  DMKH******/
INSERT INTO DMKH(mskh, tenkh, dc, sodt, msthue, diem)
     VALUES('01',N'AAA', N'123 HVT', '333', '02080001', '0')
GO
INSERT INTO DMKH(mskh, tenkh, dc, sodt, msthue, diem)
     VALUES('02', N'BBB', N'456 LVS', '444', '03080002', '0')
GO
/****** NHẬP DỮ LIỆUl: Table  DMMH******/
INSERT INTO DMMH(msmh, tenmh, dvt, gia, ngaysx, hansd, mota, hinh, msnsx)
     VALUES('01',N'Dây Chuyền',N'Chiếc','500000','2024-05-18','2500-01-01',N'Tặng quà cho bồ','','01') 	 
GO
INSERT INTO DMMH(msmh, tenmh, dvt, gia, ngaysx, hansd, mota, hinh, msnsx)
     VALUES('02',N'Lắc',N'Cái','600000','2024-01-20','2700-01-01',N'Quà 8.3','','02') 	 
GO
/****** NHẬP DỮ LIỆUl: Table  TONHANG******/
INSERT INTO TONHANG(mscsbh, msmh, slton)
     VALUES('01','01','75')
GO
INSERT INTO TONHANG(mscsbh, msmh, slton)
     VALUES('01','02','50')
GO
INSERT INTO TONHANG(mscsbh, msmh, slton)
     VALUES('02','01','60')
GO
INSERT INTO TONHANG(mscsbh, msmh, slton)
     VALUES('02','02','90')
GO
INSERT INTO TONHANG(mscsbh, msmh, slton)
     VALUES('03','01','15')
GO
