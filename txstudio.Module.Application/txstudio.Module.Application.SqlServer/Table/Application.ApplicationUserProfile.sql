CREATE TABLE [Application].[ApplicationUserProfile]
(
	[UserNo]			INT NOT NULL,

	[Birthday]			DATE,
	[IsMale]			BIT,

	[LastName]			NVARCHAR(50),
	[MiddleName]		NVARCHAR(50),
	[FirstName]			NVARCHAR(50),

	CONSTRAINT [PK_ApplicationUserProfile]
		PRIMARY KEY CLUSTERED
		(
			[UserNo]	ASC
		) ON [PRIMARY],

	CONSTRAINT [FK_ApplicationUserProfile_UserNo]
		FOREIGN KEY ([UserNo])
			REFERENCES [Application].[ApplicationUser]
			(
				[No]
			) ON DELETE CASCADE

) ON [PRIMARY]

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'使用者識別碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserProfile',
    @level2type = N'COLUMN',
    @level2name = N'UserNo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'出生日期',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserProfile',
    @level2type = N'COLUMN',
    @level2name = N'Birthday'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'為男性',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserProfile',
    @level2type = N'COLUMN',
    @level2name = N'IsMale'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'名字',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserProfile',
    @level2type = N'COLUMN',
    @level2name = N'LastName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'中間名',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserProfile',
    @level2type = N'COLUMN',
    @level2name = N'MiddleName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'姓氏',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserProfile',
    @level2type = N'COLUMN',
    @level2name = N'FirstName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式使用者個人資料表',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserProfile'