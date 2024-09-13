USE [a07_DTGiang_FCPMS]
GO

/****** Object:  View [dbo].[View_Tong-hs-luong-nhan-vien]    Script Date: 9/11/2024 7:42:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_Tong-hs-luong-nhan-vien]
AS
SELECT dbo.DMNS.msns, dbo.DMNS.tenns, dbo.DMNS.nu, dbo.DMNS.ngaysinh, dbo.DMCM.hs + dbo.DMCV.hs + dbo.DMDV.hs + dbo.DMTD.hs AS [Tổng hệ số], dbo.DMCV.tencv AS Chức, dbo.DMDV.tendv AS [Đơn vị], dbo.DMTD.tentd AS [Trình độ], 
                  dbo.DMCM.tencm AS [Chuyên môn]
FROM     dbo.DMNS INNER JOIN
                  dbo.DMCM ON dbo.DMNS.mscm = dbo.DMCM.mscm INNER JOIN
                  dbo.DMCV ON dbo.DMNS.mscv = dbo.DMCV.mscv INNER JOIN
                  dbo.DMDV ON dbo.DMNS.msdv = dbo.DMDV.msdv INNER JOIN
                  dbo.DMTD ON dbo.DMNS.mstd = dbo.DMTD.mstd
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "DMNS"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DMCM"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DMCV"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 170
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DMDV"
            Begin Extent = 
               Top = 7
               Left = 774
               Bottom = 170
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DMTD"
            Begin Extent = 
               Top = 7
               Left = 1016
               Bottom = 170
               Right = 1210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1416
         Width = 1584
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Tong-hs-luong-nhan-vien'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1356
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Tong-hs-luong-nhan-vien'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Tong-hs-luong-nhan-vien'
GO

/****** Object:  View [dbo].[View_LayNhanSuChuaDuocChamCong]    Script Date: 9/13/2024 12:12:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_LayNhanSuChuaDuocChamCong]
AS
SELECT        dbo.DMNS.msns, dbo.DMNS.tenns, dbo.DMNS.ngaysinh, dbo.DMNS.sodt, dbo.DMCV.tencv AS [Chức vụ], dbo.DMCM.tencm AS [Chuyên môn], dbo.DMTD.tentd AS [Trình độ], dbo.DMDV.tendv AS [Đơn vị]
FROM            dbo.DMNS INNER JOIN
                         dbo.DMCM ON dbo.DMNS.mscm = dbo.DMCM.mscm INNER JOIN
                         dbo.DMCV ON dbo.DMNS.mscv = dbo.DMCV.mscv INNER JOIN
                         dbo.DMDV ON dbo.DMNS.msdv = dbo.DMDV.msdv INNER JOIN
                         dbo.DMTD ON dbo.DMNS.mstd = dbo.DMTD.mstd
WHERE        (dbo.DMNS.msns NOT IN
                             (SELECT        msns
                               FROM            dbo.BANGCHAMCONG))
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "DMNS"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "DMCM"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DMCV"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DMDV"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 136
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DMTD"
            Begin Extent = 
               Top = 6
               Left = 870
               Bottom = 136
               Right = 1040
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 2025
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_LayNhanSuChuaDuocChamCong'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_LayNhanSuChuaDuocChamCong'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_LayNhanSuChuaDuocChamCong'
GO

/****** Object:  View [dbo].[View_NhanSu_DaChamCong_ChuaCoPhieuLuong]    Script Date: 9/13/2024 12:14:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_NhanSu_DaChamCong_ChuaCoPhieuLuong]
AS
SELECT        NS.msns, CAST(A.msky AS nchar(20)) AS [msky ], NS.tenns, NS.ngaysinh, CAST(A.ghichu AS nvarchar(150)) AS ghichu
FROM            dbo.DMNS AS NS INNER JOIN
                             (SELECT        msns, msky, ghichu
                               FROM            dbo.BANGCHAMCONG AS B
                               WHERE        (NOT EXISTS
                                                             (SELECT        1 AS Expr1
                                                               FROM            dbo.PHIEULUONG AS P
                                                               WHERE        (B.msns = msns) AND (B.msky = msky)))) AS A ON NS.msns = A.msns
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "NS"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2655
         Width = 2970
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_NhanSu_DaChamCong_ChuaCoPhieuLuong'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_NhanSu_DaChamCong_ChuaCoPhieuLuong'
GO


/****** Object:  View [dbo].[View_ThanhTienCacKhoangCongTru]    Script Date: 9/13/2024 12:15:01 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_ThanhTienCacKhoangCongTru]
AS
SELECT        dbo.PHIEULUONG.msphieu, CAST(dbo.KYLUONG.thang AS nvarchar) + '/ ' + CAST(dbo.KYLUONG.nam AS nvarchar) AS [Ngày lập], dbo.DMNS.tenns AS [Tên nhân sự], dbo.DMNS.nu AS [Giới tính], dbo.DMNS.ngaysinh, 
                         dbo.DMKTRU.tenktru AS [Tên khoảng trừ], dbo.CTKTRU.hs AS [Hệ số KTRU], dbo.DMKTRU.sotien AS [Số tiền KTRU], dbo.CTKTRU.hs * dbo.DMKTRU.sotien AS [Tổng KTRU], dbo.DMKCONG.tenkcong AS [Tên khoảng cộng], 
                         dbo.CTKCONG.hs AS [Hệ số KCONG], dbo.DMKCONG.sotien AS [Số tiền KCONG], dbo.CTKCONG.hs * dbo.DMKCONG.sotien AS [Tổng KCONG]
FROM            dbo.PHIEULUONG INNER JOIN
                         dbo.KYLUONG ON dbo.PHIEULUONG.msky = dbo.KYLUONG.msky INNER JOIN
                         dbo.DMNS ON dbo.PHIEULUONG.msns = dbo.DMNS.msns INNER JOIN
                         dbo.CTKTRU ON dbo.PHIEULUONG.msphieu = dbo.CTKTRU.msphieu INNER JOIN
                         dbo.CTKCONG ON dbo.PHIEULUONG.msphieu = dbo.CTKCONG.msphieu INNER JOIN
                         dbo.DMKCONG ON dbo.CTKCONG.mskcong = dbo.DMKCONG.mskcong INNER JOIN
                         dbo.DMKTRU ON dbo.CTKTRU.msktru = dbo.DMKTRU.msktru
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PHIEULUONG"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KYLUONG"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DMNS"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CTKTRU"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 119
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CTKCONG"
            Begin Extent = 
               Top = 6
               Left = 870
               Bottom = 119
               Right = 1040
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DMKCONG"
            Begin Extent = 
               Top = 120
               Left = 662
               Bottom = 250
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DMKTRU"
            Begin Extent = 
               Top = 120
               Left = 870
               Bottom = 250
               Right = 1040
            End
            DisplayFlags = 280
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ThanhTienCacKhoangCongTru'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ThanhTienCacKhoangCongTru'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ThanhTienCacKhoangCongTru'
GO


/****** Object:  View [dbo].[View_TongCacKhoangCongTruCuaPhieuLuong]    Script Date: 9/13/2024 12:15:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_TongCacKhoangCongTruCuaPhieuLuong]
AS
SELECT        msphieu, [Ngày lập], [Tên nhân sự], [Giới tính], ngaysinh, [Khoảng Cộng], [Khoảng Trừ], [Khoảng Cộng] - [Khoảng Trừ] AS Tổng
FROM            (SELECT        msphieu, [Ngày lập], [Tên nhân sự], [Giới tính], ngaysinh, SUM([Tổng KCONG]) AS [Khoảng Cộng], SUM([Tổng KTRU]) AS [Khoảng Trừ]
                          FROM            (SELECT        dbo.PHIEULUONG.msphieu, CAST(dbo.KYLUONG.thang AS nvarchar) + '/ ' + CAST(dbo.KYLUONG.nam AS nvarchar) AS [Ngày lập], dbo.DMNS.tenns AS [Tên nhân sự], dbo.DMNS.nu AS [Giới tính], 
                                                                              dbo.DMNS.ngaysinh, dbo.DMKTRU.tenktru AS [Tên khoảng trừ], dbo.CTKTRU.hs AS [Hệ số KTRU], dbo.DMKTRU.sotien AS [Số tiền KTRU], dbo.CTKTRU.hs * dbo.DMKTRU.sotien AS [Tổng KTRU], 
                                                                              dbo.DMKCONG.tenkcong AS [Tên khoảng cộng], dbo.CTKCONG.hs AS [Hệ số KCONG], dbo.DMKCONG.sotien AS [Số tiền KCONG], dbo.CTKCONG.hs * dbo.DMKCONG.sotien AS [Tổng KCONG]
                                                    FROM            dbo.PHIEULUONG INNER JOIN
                                                                              dbo.KYLUONG ON dbo.PHIEULUONG.msky = dbo.KYLUONG.msky INNER JOIN
                                                                              dbo.DMNS ON dbo.PHIEULUONG.msns = dbo.DMNS.msns INNER JOIN
                                                                              dbo.CTKTRU ON dbo.PHIEULUONG.msphieu = dbo.CTKTRU.msphieu INNER JOIN
                                                                              dbo.CTKCONG ON dbo.PHIEULUONG.msphieu = dbo.CTKCONG.msphieu INNER JOIN
                                                                              dbo.DMKCONG ON dbo.CTKCONG.mskcong = dbo.DMKCONG.mskcong INNER JOIN
                                                                              dbo.DMKTRU ON dbo.CTKTRU.msktru = dbo.DMKTRU.msktru) AS derivedtbl_1
                          GROUP BY msphieu, [Tên nhân sự], [Ngày lập], ngaysinh, [Giới tính]) AS derivedtbl_2
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "derivedtbl_2"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_TongCacKhoangCongTruCuaPhieuLuong'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_TongCacKhoangCongTruCuaPhieuLuong'
GO





