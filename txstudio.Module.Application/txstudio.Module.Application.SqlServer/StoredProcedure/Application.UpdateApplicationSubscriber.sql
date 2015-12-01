/*
	更新指定應用程式訂閱資料
*/
CREATE PROCEDURE [Application].[UpdateApplicationSubscriber]
	@Name				NVARCHAR(50),
	@Description		NVARCHAR(250),
	@IsEnabled			BIT,
	@memberLastChange	NVARCHAR(50),
	@No					SMALLINT,

	@Result				BIT OUT
AS

	UPDATE [Application].[ApplicationSubscriber]
	   SET [Name] = @Name
		  ,[Description] = @Description
		  ,[IsEnabled] = @IsEnabled
		  ,[whenLastChange] = SYSDATETIMEOFFSET()
		  ,[memberLastChange] = @memberLastChange
	 WHERE [No] = @No

GO

