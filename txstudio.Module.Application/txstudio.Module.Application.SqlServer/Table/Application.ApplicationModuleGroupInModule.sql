CREATE TABLE [Application].[ApplicationModuleGroupInModule]
(
	[ModuleGroupNo]	SMALLINT,
	[ModuleNo]		SMALLINT,
	
	CONSTRAINT [PK_ApplicationModuleGroupInModule]
		PRIMARY KEY
		(
			[ModuleNo] ASC,
			[ModuleGroupNo] ASC
		) ON [PRIMARY],
		
	CONSTRAINT [FK_ApplicationModuleGroupInModule_ModuleGroupNo]
		FOREIGN KEY ([ModuleGroupNo])
			REFERENCES [Application].[ApplicationModuleGroup]([No])
				ON DELETE CASCADE,
				
	CONSTRAINT [FK_ApplicationModuleGroupInModule_ModuleNo]
		FOREIGN KEY ([ModuleNo])
			REFERENCES [Application].[ApplicationModule]([No])
				ON DELETE NO ACTION

) ON [PRIMARY]

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式模組群組識別碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleGroupInModule',
    @level2type = N'COLUMN',
    @level2name = N'ModuleGroupNo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式模組識別碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleGroupInModule',
    @level2type = N'COLUMN',
    @level2name = N'ModuleNo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式模組群組與模組對應資料表',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleGroupInModule'