CREATE TABLE [Application].[ApplicationUserPassword]
(
	[UserNo]			INT NOT NULL,
	[Index]				SMALLINT NOT NULL,

	[TimeUtc]			DATETIMEOFFSET(0) DEFAULT (SYSDATETIMEOFFSET()),
	[PasswordHash]		VARCHAR(100) NOT NULL,
	[PasswordSalt]		VARCHAR(100) NOT NULL,

	CONSTRAINT [PK_ApplicationUserPassword]
		PRIMARY KEY
		(
			[UserNo]	ASC,
			[Index]		ASC
		) ON [PRIMARY],

	CONSTRAINT [FK_ApplicationUserPassword_UserNo] FOREIGN KEY ([UserNo])
		REFERENCES [Application].[ApplicationUser]([No]) ON DELETE CASCADE

) ON [PRIMARY]

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'使用者識別碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserPassword',
    @level2type = N'COLUMN',
    @level2name = N'UserNo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'索引',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserPassword',
    @level2type = N'COLUMN',
    @level2name = N'Index'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'建立時間',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserPassword',
    @level2type = N'COLUMN',
    @level2name = N'TimeUtc'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'雜湊密碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserPassword',
    @level2type = N'COLUMN',
    @level2name = N'PasswordHash'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'加鹽碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserPassword',
    @level2type = N'COLUMN',
    @level2name = N'PasswordSalt'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式使用者密碼歷程記錄資料表',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserPassword'