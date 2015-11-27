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
	(1,'/Account/Login',N'�n�J',N'�t�εn�J����',1,1,0,N'���ո�ƺ޲z��'),
	(2,'/Account/ResetPassword',N'�ѰO�K�X',N'���]���w�ϥΪ̪��n�J�K�X',1,1,0,N'���ո�ƺ޲z��'),
	(3,'/Account/Logout',N'�ϥΪ̵n�X',N'�n�X�t�� - �w��U�����{',1,0,0,N'���ո�ƺ޲z��'),
	(4,'/Account/ChangePassword',N'�ܧ�K�X',N'�ק�z���n�J�K�X',1,0,0,N'���ո�ƺ޲z��'),
	(5,'/Account',N'�s��ӤH���',N'�ק�z���ӤH��T',1,0,0,N'���ո�ƺ޲z��'),
	(6,'/ApplicationModule',N'���ε{���Ҳպ޲z',N'�����ε{���Ҳժ��]�w',1,0,0,N'���ո�ƺ޲z��'),
	(7,'/ApplicationUser',N'���ε{���ϥΪ̺޲z',N'�����ε{���ϥΪ̶i��]�w',1,0,0,N'���ո�ƺ޲z��'),
	(8,'/ApplicationGroup',N'���ε{���s�պ޲z',N'�����ε{���s�նi��]�w',1,0,1,N'���ո�ƺ޲z��')

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


--�إߴ��ըϥΪ����ε{���ҲղM��
SET IDENTITY_INSERT [Application].[ApplicationModuleGroup] ON

INSERT INTO [Application].[ApplicationModuleGroup] (
	[No],[Name],[Description],[Sort],[memberCreate]
) VALUES 
	(1,N'���ε{���޲z',N'���ε{���޲z',1,N'���ո�ƺ޲z��'),
	(2,N'�ӤH��ƺ޲z',N'�ӤH��ƺ޲z',2,N'���ո�ƺ޲z��')

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
	(-32768,'ADMINISTRATOR',N'�t�ζ}�o��',N'�������ε{���}�o�Ӫ��q�\',1,N'���ո�ƺ޲z��'),
	(1,'COMPANY001',N'���q001',N'�������q001���q�\',1,N'���ո�ƺ޲z��'),
	(2,'COMPANY002',N'���q002',N'�������q002���q�\',0,N'���ո�ƺ޲z��'),
	(3,'COMPANY003',N'���q003',N'�������q003���q�\',0,N'���ո�ƺ޲z��'),
	(4,'COMPANY004',N'���q004',N'�������q004���q�\',1,N'���ո�ƺ޲z��'),
	(5,'COMPANY005',N'���q005',N'�������q005���q�\',1,N'���ո�ƺ޲z��')

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
	(1,'administrator','administrator',N'�t�κ޲z��',1,0,NULL,NULL,N'���ո�ƺ޲z��')
	,(2,'user001','user001',N'�ϥΪ�001',1,0,NULL,NULL,N'���ո�ƺ޲z��')
	,(3,'user002','user002',N'�ϥΪ�002',1,0,NULL,NULL,N'���ո�ƺ޲z��')

INSERT INTO [Application].[ApplicationUserProfile](
	[UserNo],[Birthday],[FirstName],[LastName]
) VALUES 
	(1,'1987-01-30',N'�޲z��',N'�t��'),
	(2,'1988-01-18',N'�ϥΪ�001',NULL),
	(3,'1970-12-15',N'�ϥΪ�002',NULL)
	
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