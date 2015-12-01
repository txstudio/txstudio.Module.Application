/*
	更新指定應用程式訂閱可使用的模組資料
*/
CREATE PROCEDURE [Application].[UpdateApplicationSubscriberInModule]
	@SubscriberNo	SMALLINT,
	@ModuleNo		[Application].[ApplicationModule] READONLY,
	
	@Result			BIT
AS

	SET @Result = 0

	MERGE [Application].[ApplicationSubscriberInModule] as target
	USING (
		SELECT [No] [ModuleNo]
			,@SubscriberNo [SubscriberNo]
		FROM @ModuleNo
	) as source ([ModuleNo],[SubscriberNo]) ON (
		target.[ModuleNo] = source.[ModuleNo]
			AND target.[SubscriberNo] = source.[SubscriberNo]
	)
	WHEN NOT MATCHED BY source THEN
		DELETE
	WHEN NOT MATCHED BY target THEN
		INSERT (
			[ModuleNo]
			,[SubscriberNo]
		) VALUES (
			source.[ModuleNo]
			,source.[SubscriberNo]
		);

	SET @Result = 1
GO