CREATE TABLE [Application].[ApplicationGroup]
(
	[No]				INT IDENTITY(1,1),

	[Name]				NVARCHAR(50),
	[Description]		NVARCHAR(250),
		
	[rowguid]			UNIQUEIDENTIFIER DEFAULT (NEWID()),
	
	[whenCreate]		DATETIMEOFFSET(0) DEFAULT (SYSDATETIMEOFFSET()),
	[whenLastChange]	DATETIMEOFFSET(0),
	[memberCreate]		NVARCHAR(50),
	[memberLastChange]	NVARCHAR(50),

	CONSTRAINT [PK_ApplicationGroup]
		PRIMARY KEY CLUSTERED
		(
			[No]	ASC
		)  ON [PRIMARY]

) ON [PRIMARY]
