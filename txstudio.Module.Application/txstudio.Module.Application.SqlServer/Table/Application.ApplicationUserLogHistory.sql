CREATE TABLE [Application].[ApplicationUserLogHistory]
(
	[No]			INT IDENTITY(1,1),
	[UserNo]		INT NOT NULL,

	[TimeUtc]		DATETIMEOFFSET(0) DEFAULT(SYSDATETIMEOFFSET()),
	[IsSuccess]		BIT	NOT NULL,
	[IPAddress]		VARCHAR(15) NOT NULL,

	CONSTRAINT [PK_ApplicationUserLogHistory] PRIMARY KEY 
	(
		[No] ASC
	) ON [PRIMARY],

	CONSTRAINT [FK_ApplicationUserLogHistory_UserNo] FOREIGN KEY ([UserNo])
		REFERENCES [Application].[ApplicationUser]([No])
			ON DELETE CASCADE

) ON [PRIMARY]

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'識別碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserLogHistory',
    @level2type = N'COLUMN',
    @level2name = N'No'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'使用者識別碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserLogHistory',
    @level2type = N'COLUMN',
    @level2name = N'UserNo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'建立時間',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserLogHistory',
    @level2type = N'COLUMN',
    @level2name = N'TimeUtc'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'登入成功',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserLogHistory',
    @level2type = N'COLUMN',
    @level2name = N'IsSuccess'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'IP位址',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserLogHistory',
    @level2type = N'COLUMN',
    @level2name = N'IPAddress'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式使用者登入記錄資料表',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserLogHistory'