-- ===========================

-- Backup database
BACKUP DATABASE a07_DTGiang_FCPMS 
	TO DISK = N'D:\storage-sql\a07_DTGiang_FCPMS_BackupDB.bak'

-- Backup log
BACKUP LOG a07_DTGiang_FCPMS 
	TO DISK = N'D:\storage-sql\a07_DTGiang_FCPMS_BackupDB.bak' 
	WITH 
		NO_TRUNCATE ,
		NORECOVERY, 
		NOFORMAT, 
		NOINIT, 
		NAME = 'a07_DTGiang_FCPMS_BackupDB', 
		SKIP, 
		NOREWIND, 
		NOUNLOAD, 
		STATS = 10
GO