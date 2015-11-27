CREATE PROCEDURE [Application].[AddApplicationModule]
	@Schema			VARCHAR(25),
	@Name			NVARCHAR(50),
	@Description	NVARCHAR(250),
	
	@IsEnabled		BIT,
	@IsAnonymous	BIT,
	@IsDeveloping	BIT,
	@ModuleLink		[Application].[ApplicationModuleLink] READONLY,
	
	@memberCreate	NVARCHAR(50),
	@No				SMALLINT OUT
AS

	INSERT INTO [Application].[ApplicationModule](
	   [Schema]
	   ,[Name]
	   ,[Description]
	   ,[IsEnabled]
	   ,[IsAnonymous]
	   ,[IsDeveloping]
	   ,[memberCreate]
	) VALUES (
		@Schema
	   ,@Name
	   ,@Description
	   ,@IsEnabled
	   ,@IsAnonymous
	   ,@IsDeveloping
	   ,@memberCreate
	)
	
	SET @No = (
		SELECT IDENT_CURRENT('Application.ApplicationModule')
	)
	
	INSERT INTO [Application].[ApplicationModuleLink] (
		[ModuleNo]
		,[Index]
		,[Link]
	) 
	SELECT @No [ModuleNo]
		,[Index]
		,[Link]
	FROM @ModuleLink
	
GO