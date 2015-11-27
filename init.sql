DELETE FROM [Application].[ApplicationModuleGroup]
DBCC CHECKIDENT('Application.ApplicationModuleGroup',RESEED,0)

DELETE FROM [Application].[ApplicationSubscriberInModule]

DELETE FROM [Application].[ApplicationSubscriber]
DBCC CHECKIDENT('Application.ApplicationSubscriber',RESEED,0)

DELETE FROM [Application].[ApplicationModule]
DBCC CHECKIDENT('Application.ApplicationModule',RESEED,0)


DELETE FROM [Application].[ApplicationUser]
DBCC CHECKIDENT('Application.ApplicationUser',RESEED,0)

DELETE FROM [Application].[ApplicationUserLogHistory]
DBCC CHECKIDENT('Application.ApplicationUserLogHistory',RESEED,0)



SET IDENTITY_INSERT [Application].[ApplicationModule] ON

INSERT INTO [Application].[ApplicationModule]
	([No],[Schema],[Name],[Description],[IsEnabled],[IsAnonymous],[IsDeveloping],[memberCreate])
VALUES
	(1,'/Account/Login',N'登入',N'系統登入頁面',1,1,0,N'測試資料管理員'),
	(2,'/Account/ResetPassword',N'忘記密碼',N'重設指定使用者的登入密碼',1,1,0,N'測試資料管理員'),
	(3,'/Account/Logout',N'使用者登出',N'登出系統 - 歡迎下次光臨',1,0,0,N'測試資料管理員'),
	(4,'/Account/ChangePassword',N'變更密碼',N'修改您的登入密碼',1,0,0,N'測試資料管理員'),
	(5,'/Account',N'編輯個人資料',N'修改您的個人資訊',1,0,0,N'測試資料管理員'),
	(6,'/ApplicationModule',N'應用程式模組管理',N'對應用程式模組的設定',1,0,0,N'測試資料管理員'),
	(7,'/ApplicationUser',N'應用程式使用者管理',N'對應用程式使用者進行設定',1,0,0,N'測試資料管理員'),
	(8,'/ApplicationGroup',N'應用程式群組管理',N'對應用程式群組進行設定',1,0,1,N'測試資料管理員')

INSERT INTO [Application].[ApplicationModuleLink] (
	[ModuleNo],[Index],[Link]
) VALUES 
	(1,0,'/Account/Login'),
	(2,0,'/Account/ResetPassword'),
	(3,0,'/Account/Logout'),
	(4,0,'/Account/ChangePassword'),
	(5,0,'/Account'),
	(5,1,'/Account/Edit'),
	(6,0,'/ApplicationModule'),
	(6,1,'/ApplicationModule/Create'),
	(6,2,'/ApplicationModule/Edit'),
	(6,3,'/ApplicationModuleGroup'),
	(7,0,'/ApplicationUser'),
	(7,1,'/ApplicationUser/Create'),
	(7,2,'/ApplicationUser/Edit'),
	(7,3,'/ApplicationUser/ChangePassword'),
	(7,4,'/ApplicationUser/ResetPassword'),
	(8,0,'/ApplicationGroup'),
	(8,1,'/ApplicationGroup/Create'),
	(8,2,'/ApplicationGroup/Edit')

SET IDENTITY_INSERT [Application].[ApplicationModule] OFF


--建立測試使用的應用程式模組清單
SET IDENTITY_INSERT [Application].[ApplicationModuleGroup] ON

INSERT INTO [Application].[ApplicationModuleGroup] (
	[No],[Name],[Description],[Sort],[memberCreate]
) VALUES 
	(1,N'應用程式管理',N'應用程式管理',1,N'測試資料管理員'),
	(2,N'個人資料管理',N'個人資料管理',2,N'測試資料管理員')

SET IDENTITY_INSERT [Application].[ApplicationModuleGroup] OFF

INSERT INTO [Application].[ApplicationModuleGroupInModule](
	[ModuleGroupNo],[ModuleNo]
) VALUES 
	(1,5),
	(2,6),
	(2,7),
	(2,8)



SET IDENTITY_INSERT [Application].[ApplicationSubscriber] ON

INSERT INTO [Application].[ApplicationSubscriber]
	([No],[Schema],[Name],[Description],[IsEnabled],[memberCreate])
VALUES
	(-32768,'ADMINISTRATOR',N'系統開發商',N'此為應用程式開發商的訂閱',1,N'測試資料管理員'),
	(1,'COMPANY001',N'公司001',N'此為公司001的訂閱',1,N'測試資料管理員'),
	(2,'COMPANY002',N'公司002',N'此為公司002的訂閱',0,N'測試資料管理員'),
	(3,'COMPANY003',N'公司003',N'此為公司003的訂閱',0,N'測試資料管理員'),
	(4,'COMPANY004',N'公司004',N'此為公司004的訂閱',1,N'測試資料管理員'),
	(5,'COMPANY005',N'公司005',N'此為公司005的訂閱',1,N'測試資料管理員')

SET IDENTITY_INSERT [Application].[ApplicationSubscriber] OFF

INSERT INTO [Application].[ApplicationSubscriberInModule] (
	[ModuleNo],[SubscriberNo]
) SELECT [No]
	,CONVERT(SMALLINT,'-32768') [SubscriberNo]
FROM [Application].[ApplicationModule]

INSERT INTO [Application].[ApplicationSubscriberInModule](
	[ModuleNo],[SubscriberNo]
) VALUES 
	(3,1),(4,1),(5,1),(7,1),(8,1)



SET IDENTITY_INSERT [Application].[ApplicationUser] ON

INSERT INTO [Application].[ApplicationUser]
	([No],[Schema],[Account],[Name],[IsEnabled],[IsLocked]
	,[ResetPasswordQuestion],[ResetPasswordAnswer],[memberCreate])
VALUES 
	(1,'administrator','administrator',N'系統管理員',1,0,NULL,NULL,N'測試資料管理員')
	,(2,'user001','user001',N'使用者001',1,0,NULL,NULL,N'測試資料管理員')
	,(3,'user002','user002',N'使用者002',1,0,NULL,NULL,N'測試資料管理員')

INSERT INTO [Application].[ApplicationUserProfile](
	[UserNo],[Birthday],[FirstName],[LastName]
) VALUES 
	(1,'1987-01-30',N'管理員',N'系統'),
	(2,'1988-01-18',N'使用者001',NULL),
	(3,'1970-12-15',N'使用者002',NULL)
	
SET IDENTITY_INSERT [Application].[ApplicationUser] OFF

INSERT INTO [Application].[ApplicationUserLogHistory] (
	[UserNo],[IsSuccess],[IPAddress]
) VALUES 
	(1,1,'localhost'),
	(1,0,'localhost'),
	(2,0,'localhost'),
	(2,0,'localhost'),
	(1,1,'localhost')

INSERT INTO [Application].[ApplicationUserPassword](
	[UserNo],[Index],[PasswordHash],[PasswordSalt]
) VALUES 
	(1,0,'abcdefg','00000000-0000-0000-000000000000'),
	(1,1,'abcdefg','00000000-0000-0000-000000000000'),
	(1,2,'abcdefg','00000000-0000-0000-000000000000'),
	(2,0,'abcdefg','00000000-0000-0000-000000000000'),
	(3,0,'abcdefg','00000000-0000-0000-000000000000')


/*
SELECT * FROM [Application].[ApplicationModuleGroup] a with (nolock)
SELECT * FROM [Application].[ApplicationModuleGroupInModule]
SELECT * FROM [Application].[ApplicationModule] a with (nolock)
SELECT * FROM [Application].[ApplicationModuleLink] a with (nolock)
SELECT * FROM [Application].[ApplicationSubscriber] a with (nolock)
SELECT * FROM [Application].[ApplicationSubscriberInModule] a with (nolock)
SELECT * FROM [Application].[ApplicationUser] a with (nolock)
SELECT * FROM [Application].[ApplicationUserProfile] a with (nolock)
SELECT * FROM [Application].[ApplicationUserLogHistory] a with (nolock)
SELECT * FROM [Application].[ApplicationUserPassword] a with (nolock)
*/