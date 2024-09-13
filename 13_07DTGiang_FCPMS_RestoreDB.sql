-- =======================================
-- Restore File and Filegroups
-- =======================================

-- Restore filegroups - one at a time
RESTORE DATABASE a07_DTGiang_FCPMS 
	FILE = N'a07_DTGiang_FCPMS' 
	FROM DISK = N'D:\storage-sql\a07_DTGiang_FCPMS_BackupDB.bak' 
	WITH  
		FILE = 1,  
		NORECOVERY,  
		NOUNLOAD,  
		STATS = 10
GO

-- Restore log
RESTORE LOG a07_DTGiang_FCPMS
	FROM DISK = N'D:\storage-sql\a07_DTGiang_FCPMS_BackupDB.bak' 
	WITH  
		FILE = 2,  
		NOUNLOAD,  
		STATS = 10
GO