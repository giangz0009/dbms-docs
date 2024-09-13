USE [a08VXTHE_SaleJ]
GO
SELECT 'Mã CS' = t.mscsbh, 'Tên CS' = c.tencsbh, 'Mã hàng' = t.msmh, 'Tên hàng' = m.tenmh, 'ĐVT'= m.dvt, 'Giá' = m.gia, 'Số tồn' = t.slton 
  FROM TONHANG AS t, DMMH AS m, DMCSBH AS c
  WHERE T.slton >= 60 AND t.mscsbh = c.mscsbh AND t.msmh = m.msmh 
GO


