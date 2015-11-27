CREATE TABLE [Application].[ApplicationUserContact]
(
	[UserNo]			INT NOT NULL,

	[Mobile]			VARCHAR(25),
	[Phone]				VARCHAR(25),
	[Fax]				VARCHAR(25),
	[Email]				NVARCHAR(150),
	
	[Mobile2]			VARCHAR(25),
	[PhoneOffice]		VARCHAR(25),
	[PhoneNight]		VARCHAR(25),
	[Email2]			NVARCHAR(150),

	CONSTRAINT [PK_ApplicationUserContact]
		PRIMARY KEY CLUSTERED
		(
			[UserNo]	ASC
		) ON [PRIMARY],

	CONSTRAINT [FK_ApplicationUserContact_UserNo]
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
    @level1name = N'ApplicationUserContact',
    @level2type = N'COLUMN',
    @level2name = N'UserNo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'行動電話',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserContact',
    @level2type = N'COLUMN',
    @level2name = N'Mobile'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'連絡電話',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserContact',
    @level2type = N'COLUMN',
    @level2name = N'Phone'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'傳真號碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserContact',
    @level2type = N'COLUMN',
    @level2name = N'Fax'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電子郵件',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserContact',
    @level2type = N'COLUMN',
    @level2name = N'Email'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'行動電話2',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserContact',
    @level2type = N'COLUMN',
    @level2name = N'Mobile2'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'辦公室電話',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserContact',
    @level2type = N'COLUMN',
    @level2name = N'PhoneOffice'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'夜間連絡電話',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserContact',
    @level2type = N'COLUMN',
    @level2name = N'PhoneNight'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電子郵件2',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserContact',
    @level2type = N'COLUMN',
    @level2name = N'Email2'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式使用者聯絡資料表',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserContact'