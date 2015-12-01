/*
	新增一筆應用程式訂閱資料
*/
CREATE PROCEDURE [Application].[AddApplicationSubscriber]
	@Schema			VARCHAR(25),
	@Name			NVARCHAR(50),
	@Description	NVARCHAR(250),
	@IsEnabled		BIT,
	@memberCreate	NVARCHAR(50),

	@No				SMALLINT OUT
AS

	INSERT INTO [Application].[ApplicationSubscriber](
		[Schema]
		,[Name]
		,[Description]
		,[IsEnabled]
		,[memberCreate]
	) VALUES (
		@Schema
		,@Name
		,@Description
		,@IsEnabled
		,@memberCreate
	)
	
	SET @No = (
		SELECT IDENT_CURRENT('Application.ApplicationSubscriber')
	)

GO
