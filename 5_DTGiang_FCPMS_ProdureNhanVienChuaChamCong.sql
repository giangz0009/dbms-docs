-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE Procedure_NhanVien_DaChamCong_ChuaCoPhieuLuong 
	-- Add the parameters for the stored procedure here
	@msns nchar(20)
AS
BEGIN
    -- Insert statements for procedure here
	SELECT *
	FROM dbo.View_NhanSu_DaChamCong_ChuaCoPhieuLuong
	Where msns LIKE @msns
END
GO
