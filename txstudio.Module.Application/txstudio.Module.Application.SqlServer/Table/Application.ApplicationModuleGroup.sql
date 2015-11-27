CREATE TABLE [Application].[ApplicationModuleGroup]
(
	[No]				SMALLINT IDENTITY(1,1),
	
	[Name]				NVARCHAR(50),
	[Description]		NVARCHAR(250),
	[Sort]				SMALLINT,
	
	[whenCreate]		DATETIMEOFFSET(0) DEFAULT (SYSDATETIMEOFFSET()),
	[whenLastChange]	DATETIMEOFFSET(0),
	[memberCreate]		NVARCHAR(50),
	[memberLastChange]	NVARCHAR(50),
	
	CONSTRAINT [PK_ApplicationModuleGroup]
		PRIMARY KEY
		(
			[No]	ASC
		) ON [PRIMARY]

) ON [PRIMARY]

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'識別碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleGroup',
    @level2type = N'COLUMN',
    @level2name = N'No'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'名稱',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleGroup',
    @level2type = N'COLUMN',
    @level2name = N'Name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'描述',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleGroup',
    @level2type = N'COLUMN',
    @level2name = N'Description'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'排序',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleGroup',
    @level2type = N'COLUMN',
    @level2name = N'Sort'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'建立時間',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleGroup',
    @level2type = N'COLUMN',
    @level2name = N'whenCreate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'最後異動時間',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleGroup',
    @level2type = N'COLUMN',
    @level2name = N'whenLastChange'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'建立人員',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleGroup',
    @level2type = N'COLUMN',
    @level2name = N'memberCreate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'最後異動人員',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleGroup',
    @level2type = N'COLUMN',
    @level2name = N'memberLastChange'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式模組群組資料表',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleGroup'