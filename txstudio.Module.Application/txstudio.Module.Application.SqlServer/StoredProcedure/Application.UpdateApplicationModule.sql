/*
	更新指定的應用程式模組內容
*/
CREATE PROCEDURE [Application].[UpdateApplicationModule]
	@Name				NVARCHAR(50),
	@Description		NVARCHAR(250),
	
	@IsEnabled			BIT,
	@IsAnonymous		BIT,
	@IsDeveloping		BIT,
	@Sort				SMALLINT,
	@ModuleLink			[Application].[ApplicationModuleLink] READONLY,
	
	@memberLastChange	NVARCHAR(50),
	@No					SMALLINT,
	@Result				BIT OUT
AS

	UPDATE [Application].[ApplicationModule]
		SET [Name] = @Name
			,[Description] = @Description
			,[IsEnabled] = @IsEnabled
			,[IsAnonymous] = @IsAnonymous
			,[IsDeveloping] = @IsDeveloping
			,[Sort] = @Sort
			,[whenLastChange] = SYSDATETIMEOFFSET()
			,[memberLastChange] = @memberLastChange
		WHERE [No] = @No
		
	MERGE [Application].[ApplicationModuleLink] as target
	USING (
		SELECT @No [ModuleNo]
			,[Index]
			,[Link]
		FROM @ModuleLink
	) as source([ModuleNo],[Index],[Link]) ON (
		target.[ModuleNo] = source.[ModuleNo]
			AND target.[Index] = source.[Index]
	)
	WHEN NOT MATCHED BY source THEN
		DELETE
	WHEN MATCHED AND (ISNULL(target.[Link],'--') <> ISNULL(source.[Link],'--')) THEN
		UPDATE SET [Link] = source.[Link]
	WHEN NOT MATCHED BY target THEN
		INSERT (
			[ModuleNo]
			,[Index]
			,[Link]
		) VALUES (	
			source.[ModuleNo]
			,source.[Index]
			,source.[Link]
		);

GO