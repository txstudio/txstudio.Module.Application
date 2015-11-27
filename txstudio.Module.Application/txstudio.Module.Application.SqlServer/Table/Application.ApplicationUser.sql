CREATE TABLE [Application].[ApplicationUser]
(
	[No]					INT IDENTITY(1,1),

	[Schema]				VARCHAR(25),
	[Account]				VARCHAR(50),

	[Name]					NVARCHAR(50),
	[IsEnabled]				BIT,
	[IsLocked]				BIT,

	[ResetPasswordQuestion]	NVARCHAR(50),
	[ResetPasswordAnswer]	NVARCHAR(50),

	[rowguid]				UNIQUEIDENTIFIER DEFAULT (NEWID()),
	
	[whenCreate]			DATETIMEOFFSET(0) DEFAULT (SYSDATETIMEOFFSET()),
	[whenLastChange]		DATETIMEOFFSET(0),
	[memberCreate]			NVARCHAR(50),
	[memberLastChange]		NVARCHAR(50),

	CONSTRAINT [PK_ApplicationUser]
		PRIMARY KEY CLUSTERED
		(
			[No] ASC
		) ON [PRIMARY],

	CONSTRAINT [UN_ApplicationUser_Schema]
		UNIQUE
		(
			[Schema]
		) ON [INDEX],

	CONSTRAINT [UN_ApplicationUser_Account]
		UNIQUE
		(
			[Account]
		) ON [INDEX]

) ON [PRIMARY]
GO

CREATE INDEX [IX_ApplicationUser_rowguid]
	ON [Application].[ApplicationUser]([rowguid])
		INCLUDE ([No]) ON [INDEX]
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'識別碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser',
    @level2type = N'COLUMN',
    @level2name = N'No'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'代碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser',
    @level2type = N'COLUMN',
    @level2name = N'Schema'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'帳號',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser',
    @level2type = N'COLUMN',
    @level2name = N'Account'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'名稱',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser',
    @level2type = N'COLUMN',
    @level2name = N'Name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'啟用中',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser',
    @level2type = N'COLUMN',
    @level2name = N'IsEnabled'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'已鎖定',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser',
    @level2type = N'COLUMN',
    @level2name = N'IsLocked'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'重設密碼問題',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser',
    @level2type = N'COLUMN',
    @level2name = N'ResetPasswordQuestion'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'重設密碼答案',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser',
    @level2type = N'COLUMN',
    @level2name = N'ResetPasswordAnswer'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'資料列識別項',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser',
    @level2type = N'COLUMN',
    @level2name = N'rowguid'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'建立時間',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser',
    @level2type = N'COLUMN',
    @level2name = N'whenCreate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'最後異動時間',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser',
    @level2type = N'COLUMN',
    @level2name = N'whenLastChange'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'建立人員',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser',
    @level2type = N'COLUMN',
    @level2name = N'memberCreate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'最後異動人員',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser',
    @level2type = N'COLUMN',
    @level2name = N'memberLastChange'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式使用者資料表',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUser'