CREATE TABLE [Application].[ApplicationModuleLink]
(
	[ModuleNo]		SMALLINT,	
	[Index]			TINYINT,

	[Link]			VARCHAR(100),
	
	CONSTRAINT [PK_ApplicationModuleLink]
		PRIMARY KEY
		(
			[ModuleNo]	ASC,
			[Index]		ASC
		) ON [PRIMARY],
		
	CONSTRAINT [FK_ApplicationModuleLink_ModuleNo]
		FOREIGN KEY ([ModuleNo]) 
			REFERENCES [Application].[ApplicationModule]([No])
				ON DELETE CASCADE

) ON [PRIMARY]

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式模組識別碼',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleLink',
    @level2type = N'COLUMN',
    @level2name = N'ModuleNo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'索引',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleLink',
    @level2type = N'COLUMN',
    @level2name = N'Index'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式連結路徑',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleLink',
    @level2type = N'COLUMN',
    @level2name = N'Link'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'應用程式模組可使用連結清單',
    @level0type = N'SCHEMA',
    @level0name = N'Application',
    @level1type = N'TABLE',
    @level1name = N'ApplicationModuleLink'