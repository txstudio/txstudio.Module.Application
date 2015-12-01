/*
	新增指定應用程式模組內容，並回傳新增的模組識別碼
*/
CREATE PROCEDURE [Application].[AddApplicationModule]
	@Schema			VARCHAR(25),
	@Name			NVARCHAR(50),
	@Description	NVARCHAR(250),
	
	@IsEnabled		BIT,
	@IsAnonymous	BIT,
	@IsDeveloping	BIT,
	@Sort			SMALLINT,
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
	   ,[Sort]
	   ,[memberCreate]
	) VALUES (
		@Schema
	   ,@Name
	   ,@Description
	   ,@IsEnabled
	   ,@IsAnonymous
	   ,@IsDeveloping
	   ,@Sort
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