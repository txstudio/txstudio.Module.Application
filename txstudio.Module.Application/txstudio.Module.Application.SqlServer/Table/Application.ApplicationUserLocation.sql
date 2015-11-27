CREATE TABLE [Application].[ApplicationUserLocation]
(
	[UserNo]			INT NOT NULL,

	[PostalCode]		VARCHAR(10),
	[County]			NVARCHAR(50),
	[State]				NVARCHAR(50),
	[City]				NVARCHAR(50),
	[Address]			NVARCHAR(150),

	CONSTRAINT [PK_ApplicationUserLocation]
		PRIMARY KEY CLUSTERED
		(
			[UserNo]	ASC
		) ON [PRIMARY],

	CONSTRAINT [FK_ApplicationUserLocation_UserNo]
		FOREIGN KEY ([UserNo])
			REFERENCES [Application].[ApplicationUser]
			(
				[No]
			) ON DELETE CASCADE

) ON [PRIMARY]
GO


EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵遞區號',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserLocation',
    @level2type = N'COLUMN',
    @level2name = N'PostalCode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'國家',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserLocation',
    @level2type = N'COLUMN',
    @level2name = N'County'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'州/省',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserLocation',
    @level2type = N'COLUMN',
    @level2name = N'State'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'縣市',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserLocation',
    @level2type = N'COLUMN',
    @level2name = N'City'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'地址',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserLocation',
    @level2type = N'COLUMN',
    @level2name = N'Address'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式使用者聯絡地址資料表',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationUserLocation'