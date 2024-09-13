USE [a07_DTGiang_FCPMS]
GO

-- Dữ liệu mẫu cho bảng DMCM (Danh mục chuyên môn)
INSERT INTO [dbo].[DMCM] ([mscm], [tencm], [hs], [ghichu])
VALUES
(N'CM001', N'Công nghệ thông tin', 1.0, N'Chuyên môn về CNTT'),
(N'CM002', N'Kế toán', 1.1, N'Chuyên môn về Kế toán'),
(N'CM003', N'Quản trị kinh doanh', 1.2, N'Chuyên môn về Quản trị'),
(N'CM004', N'Kỹ thuật điện', 1.3, N'Chuyên môn về Kỹ thuật điện'),
(N'CM005', N'Xây dựng', 1.4, N'Chuyên môn về Xây dựng')
GO

-- Dữ liệu mẫu cho bảng DMTD (Danh mục trình độ)
INSERT INTO [dbo].[DMTD] ([mstd], [tentd], [hs], [ghichu])
VALUES
(N'TD001', N'Cao đẳng', 1.0, N'Ghi chú Cao đẳng'),
(N'TD002', N'Dại học', 1.1, N'Ghi chú Đại học'),
(N'TD003', N'Thạc sĩ', 1.2, N'Ghi chú Thạc sĩ'),
(N'TD004', N'Tiến sĩ', 1.3, N'Ghi chú Tiến sĩ'),
(N'TD005', N'Chứng chỉ', 1.4, N'Ghi chú Chứng chỉ')
GO

-- Dữ liệu mẫu cho bảng DMCV (Danh mục chức vụ)
INSERT INTO [dbo].[DMCV] ([mscv], [tencv], [hs], [ghichu])
VALUES
(N'CV001', N'Giám đốc', 1.0, N'Chức vụ Giám đốc'),
(N'CV002', N'Phó giám đốc', 1.1, N'Chức vụ Phó giám đốc'),
(N'CV003', N'Trưởng phòng', 1.2, N'Chức vụ Trưởng phòng'),
(N'CV004', N'Nhân viên', 1.3, N'Chức vụ Nhân viên'),
(N'CV005', N'Kế toán trưởng', 1.4, N'Chức vụ Kế toán trưởng')
GO

-- Dữ liệu mẫu cho bảng DMDV (Danh mục đơn vị)
INSERT INTO [dbo].[DMDV] ([msdv], [tendv], [hs], [ghichu])
VALUES
(N'DV001', N'Phòng kinh doanh', 1.0, N'Đơn vị Phòng kinh doanh'),
(N'DV002', N'Phòng kỹ thuật', 1.1, N'Đơn vị Phòng kỹ thuật'),
(N'DV003', N'Phòng nhân sự', 1.2, N'Đơn vị Phòng nhân sự'),
(N'DV004', N'Phòng tài chính', 1.3, N'Đơn vị Phòng tài chính'),
(N'DV005', N'Phòng marketing', 1.4, N'Đơn vị Phòng marketing')
GO

-- Dữ liệu mẫu cho bảng DMKCONG (Danh mục khoản công)
INSERT INTO [dbo].[DMKCONG] ([mskcong], [tenkcong], [sotien], [ghichu])
VALUES
(N'KC001', N'Khoản công tác phí', 1000000, N'Khoản công tác phí'),
(N'KC002', N'Khoản tiền thưởng', 2000000, N'Khoản tiền thưởng'),
(N'KC003', N'Khoản phụ cấp', 1500000, N'Khoản phụ cấp')
GO

-- Dữ liệu mẫu cho bảng DMKTRU (Danh mục khoản trừ)
INSERT INTO [dbo].[DMKTRU] ([msktru], [tenktru], [sotien], [ghichu])
VALUES
(N'KT001', N'Khoản bảo hiểm', 500000, N'Khoản bảo hiểm'),
(N'KT002', N'Khoản thuế thu nhập', 700000, N'Khoản thuế thu nhập'),
(N'KT003', N'Khoản vay', 300000, N'Khoản vay')
GO

-- Dữ liệu mẫu cho bảng KYLUONG (Kỳ lương)
INSERT INTO [dbo].[KYLUONG] ([msky], [nam], [thang], [ghichu])
VALUES
(N'KY202401', 2024, 1, N'Kỳ lương tháng 1 năm 2024'),
(N'KY202402', 2024, 2, N'Kỳ lương tháng 2 năm 2024'),
(N'KY202403', 2024, 3, N'Kỳ lương tháng 3 năm 2024')
GO

-- Dữ liệu mẫu cho bảng DMNS (Danh mục nhân sự)
INSERT INTO [dbo].[DMNS] ([msns], [tenns], [nu], [ngaysinh], [ngaytuyen], [sodt], [hinh], [mscm], [mstd], [mscv], [msdv])
VALUES
(N'NS001', N'Nguyễn Văn A', 0, '1985-06-15', '2010-08-01', '0901234567', N'image1.jpg', N'CM001', N'TD002', N'CV004', N'DV001'),
(N'NS002', N'Trần Thị B', 1, '1990-09-20', '2015-01-15', '0902345678', N'image2.jpg', N'CM002', N'TD003', N'CV003', N'DV002'),
(N'NS003', N'Phạm Văn C', 0, '1987-03-05', '2012-11-30', '0903456789', N'image3.jpg', N'CM003', N'TD001', N'CV002', N'DV003')
GO


-- Dữ liệu mẫu cho bảng BANGCHAMCONG (Bảng chấm công)
INSERT INTO [dbo].[BANGCHAMCONG] ([msns], [msky], [songaychuan], [songaylv], [ghichu])
VALUES
(N'NS001', N'KY202401', 22, 20, N'Chấm công tháng 1 năm 2024'),
(N'NS002', N'KY202402', 23, 22, N'Chấm công tháng 2 năm 2024'),
(N'NS003', N'KY202403', 21, 21, N'Chấm công tháng 3 năm 2024')
GO

-- Dữ liệu mẫu cho bảng PHIEULUONG (Phiếu lương)
INSERT INTO [dbo].[PHIEULUONG] ([msphieu], [msns], [msky], [mucluong], [tonghs], [ghichu])
VALUES
(N'PH001', N'NS001', N'KY202401', 5000000, 20, N'Phiếu lương tháng 1 năm 2024'),
(N'PH002', N'NS002', N'KY202402', 6000000, 22, N'Phiếu lương tháng 2 năm 2024'),
(N'PH003', N'NS003', N'KY202403', 5500000, 21, N'Phiếu lương tháng 3 năm 2024')
GO

-- Dữ liệu mẫu cho bảng CTKCONG (Chi tiết khoản công)
INSERT INTO [dbo].[CTKCONG] ([msphieu], [mskcong], [hs])
VALUES
(N'PH001', N'KC001', 1000000),
(N'PH001', N'KC002', 2000000),
(N'PH002', N'KC003', 1500000)
GO

-- Dữ liệu mẫu cho bảng CTKTRU (Chi tiết khoản trừ)
INSERT INTO [dbo].[CTKTRU] ([msphieu], [msktru], [hs])
VALUES
(N'PH001', N'KT001', 500000),
(N'PH002', N'KT002', 700000),
(N'PH003', N'KT003', 300000)
GO