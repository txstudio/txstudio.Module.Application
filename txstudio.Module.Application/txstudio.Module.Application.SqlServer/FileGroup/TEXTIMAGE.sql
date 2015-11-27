/*
不要變更資料庫路徑或名稱變數。
任何 sqlcmd 變數都會在組建和部署期間
經過適當取代。
*/
ALTER DATABASE [$(DatabaseName)]
	ADD FILEGROUP [TEXTIMAGE]
