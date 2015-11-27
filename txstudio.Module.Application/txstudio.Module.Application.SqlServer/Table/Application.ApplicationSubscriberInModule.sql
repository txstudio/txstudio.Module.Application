CREATE TABLE [Application].[ApplicationSubscriberInModule]
(
	[ModuleNo]		SMALLINT,
	[SubscriberNo]	SMALLINT,
	
	CONSTRAINT [PK_ApplicationSubscriberInModule]
		PRIMARY KEY CLUSTERED
		(
			[ModuleNo],
			[SubscriberNo]
		) ON [PRIMARY],

	CONSTRAINT [FK_ApplicationSubscriberInModule_ModuleNo]
		FOREIGN KEY ([ModuleNo])
			REFERENCES [Application].[ApplicationModule]([No])
				ON DELETE CASCADE,

	CONSTRAINT [FK_ApplicationSubscriberInModule_SubscriberNo]
		FOREIGN KEY ([SubscriberNo])
			REFERENCES [Application].[ApplicationSubscriber]([No])
				ON DELETE NO ACTION

) ON [PRIMARY]

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'模組識別碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationSubscriberInModule',
    @level2type = N'COLUMN',
    @level2name = N'ModuleNo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'訂閱識別碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationSubscriberInModule',
    @level2type = N'COLUMN',
    @level2name = N'SubscriberNo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式訂閱與模組對應資料表 - 指定訂閱可使用的應用程式模組清單',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationSubscriberInModule'