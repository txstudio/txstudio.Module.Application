CREATE TABLE [Application].[ApplicationConfig]
(
	[No]				SMALLINT IDENTITY(1,1),
	
	[Name]				NVARCHAR(50),
	[Version]			NVARCHAR(50),
	
	[whenCreate]		DATETIMEOFFSET(0) DEFAULT (SYSDATETIMEOFFSET()),
	[memberCreate]		NVARCHAR(50),
	
	CONSTRAINT [PK_ApplicationConfig]
		PRIMARY KEY CLUSTERED
		(
			[No] ASC
		) ON [PRIMARY]

) ON [PRIMARY]

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'識別碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationConfig',
    @level2type = N'COLUMN',
    @level2name = N'No'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式名稱',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationConfig',
    @level2type = N'COLUMN',
    @level2name = N'Name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'版本',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationConfig',
    @level2type = N'COLUMN',
    @level2name = N'Version'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'建立時間',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationConfig',
    @level2type = N'COLUMN',
    @level2name = N'whenCreate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'建立人員',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationConfig',
    @level2type = N'COLUMN',
    @level2name = N'memberCreate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式設定檔資料表',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationConfig'