-- =========================
-- Drop Database
-- =========================
USE master
GO

IF  EXISTS (
	SELECT name 
		FROM sys.databases 
		WHERE name = N'a07_DTGiang_FCPMS'
)
DROP DATABASE [a07_DTGiang_FCPMS]
GO