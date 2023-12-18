/*
 Navicat Premium Data Transfer

 Source Server         : SQL Server
 Source Server Type    : SQL Server
 Source Server Version : 16004095 (16.00.4095)
 Source Host           : g.cn:37777
 Source Catalog        : db_student
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 16004095 (16.00.4095)
 File Encoding         : 65001

 Date: 18/12/2023 15:14:57
*/


-- ----------------------------
-- Table structure for kc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[kc]') AND type IN ('U'))
	DROP TABLE [dbo].[kc]
GO

CREATE TABLE [dbo].[kc] (
  [kcmc] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [id_ls] int  NULL,
  [xf] int  NULL,
  [dd] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [kclx] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [bfb_ps] decimal(18)  NULL,
  [bfb_qm] decimal(18)  NULL,
  [kcdm] int  IDENTITY(1,1) NOT NULL,
  [status] int DEFAULT 0 NOT NULL
)
GO

ALTER TABLE [dbo].[kc] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'课程名称',
'SCHEMA', N'dbo',
'TABLE', N'kc',
'COLUMN', N'kcmc'
GO

EXEC sp_addextendedproperty
'MS_Description', N'教师ID',
'SCHEMA', N'dbo',
'TABLE', N'kc',
'COLUMN', N'id_ls'
GO

EXEC sp_addextendedproperty
'MS_Description', N'学分',
'SCHEMA', N'dbo',
'TABLE', N'kc',
'COLUMN', N'xf'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地点',
'SCHEMA', N'dbo',
'TABLE', N'kc',
'COLUMN', N'dd'
GO

EXEC sp_addextendedproperty
'MS_Description', N'课程类型',
'SCHEMA', N'dbo',
'TABLE', N'kc',
'COLUMN', N'kclx'
GO

EXEC sp_addextendedproperty
'MS_Description', N'平时成绩百分比',
'SCHEMA', N'dbo',
'TABLE', N'kc',
'COLUMN', N'bfb_ps'
GO

EXEC sp_addextendedproperty
'MS_Description', N'期末成绩百分比',
'SCHEMA', N'dbo',
'TABLE', N'kc',
'COLUMN', N'bfb_qm'
GO

EXEC sp_addextendedproperty
'MS_Description', N'课程代码',
'SCHEMA', N'dbo',
'TABLE', N'kc',
'COLUMN', N'kcdm'
GO

EXEC sp_addextendedproperty
'MS_Description', N'课程状态 0=不开放 1=开放',
'SCHEMA', N'dbo',
'TABLE', N'kc',
'COLUMN', N'status'
GO


-- ----------------------------
-- Records of kc
-- ----------------------------
SET IDENTITY_INSERT [dbo].[kc] ON
GO

INSERT INTO [dbo].[kc] ([kcmc], [id_ls], [xf], [dd], [kclx], [bfb_ps], [bfb_qm], [kcdm], [status]) VALUES (N'软件工程概论', N'1', N'3', N'3教', N'必修课', N'49', N'51', N'1', N'1')
GO

INSERT INTO [dbo].[kc] ([kcmc], [id_ls], [xf], [dd], [kclx], [bfb_ps], [bfb_qm], [kcdm], [status]) VALUES (N'Python实战', N'2', N'2', N'4教', N'选修课', N'50', N'50', N'2', N'1')
GO

INSERT INTO [dbo].[kc] ([kcmc], [id_ls], [xf], [dd], [kclx], [bfb_ps], [bfb_qm], [kcdm], [status]) VALUES (N'数据库应用', N'3', N'2', N'5教', N'必修课', N'50', N'50', N'3', N'1')
GO

INSERT INTO [dbo].[kc] ([kcmc], [id_ls], [xf], [dd], [kclx], [bfb_ps], [bfb_qm], [kcdm], [status]) VALUES (N'APEX', N'1', N'2', N'5教', N'必修课', N'12', N'88', N'5', N'1')
GO

INSERT INTO [dbo].[kc] ([kcmc], [id_ls], [xf], [dd], [kclx], [bfb_ps], [bfb_qm], [kcdm], [status]) VALUES (N'APEXA', N'1', N'11', N'100教', N'必修课', N'90', N'10', N'7', N'1')
GO

INSERT INTO [dbo].[kc] ([kcmc], [id_ls], [xf], [dd], [kclx], [bfb_ps], [bfb_qm], [kcdm], [status]) VALUES (N'APEX B', N'1', N'200', N'诸王峡谷', N'必修课', N'0', N'100', N'8', N'0')
GO

SET IDENTITY_INSERT [dbo].[kc] OFF
GO


-- ----------------------------
-- Table structure for kc_xs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[kc_xs]') AND type IN ('U'))
	DROP TABLE [dbo].[kc_xs]
GO

CREATE TABLE [dbo].[kc_xs] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [xh] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [kcdm] int  NULL,
  [cj] decimal(18)  NULL,
  [cj_ps] decimal(18)  NULL,
  [cj_qm] decimal(18)  NULL
)
GO

ALTER TABLE [dbo].[kc_xs] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of kc_xs
-- ----------------------------
SET IDENTITY_INSERT [dbo].[kc_xs] ON
GO

INSERT INTO [dbo].[kc_xs] ([id], [xh], [kcdm], [cj], [cj_ps], [cj_qm]) VALUES (N'3', N'002', N'3', N'100', N'40', N'55')
GO

INSERT INTO [dbo].[kc_xs] ([id], [xh], [kcdm], [cj], [cj_ps], [cj_qm]) VALUES (N'60', N'001', N'1', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[kc_xs] ([id], [xh], [kcdm], [cj], [cj_ps], [cj_qm]) VALUES (N'61', N'001', N'2', NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[kc_xs] OFF
GO


-- ----------------------------
-- Table structure for ls
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ls]') AND type IN ('U'))
	DROP TABLE [dbo].[ls]
GO

CREATE TABLE [dbo].[ls] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [xm] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [dm] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [xb] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [csrq] date  NULL,
  [dh] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [zh] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [mm] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ls] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'姓名',
'SCHEMA', N'dbo',
'TABLE', N'ls',
'COLUMN', N'xm'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'ls',
'COLUMN', N'xb'
GO

EXEC sp_addextendedproperty
'MS_Description', N'出生日期',
'SCHEMA', N'dbo',
'TABLE', N'ls',
'COLUMN', N'csrq'
GO

EXEC sp_addextendedproperty
'MS_Description', N'电话',
'SCHEMA', N'dbo',
'TABLE', N'ls',
'COLUMN', N'dh'
GO

EXEC sp_addextendedproperty
'MS_Description', N'账号',
'SCHEMA', N'dbo',
'TABLE', N'ls',
'COLUMN', N'zh'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'ls',
'COLUMN', N'mm'
GO


-- ----------------------------
-- Records of ls
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ls] ON
GO

INSERT INTO [dbo].[ls] ([id], [xm], [dm], [xb], [csrq], [dh], [zh], [mm]) VALUES (N'1', N'真好真好', N'111111', N'男', N'1994-02-25', N'10010', N'10084', N'10084')
GO

INSERT INTO [dbo].[ls] ([id], [xm], [dm], [xb], [csrq], [dh], [zh], [mm]) VALUES (N'2', N'李四', N'222', N'女', N'2000-11-25', N'18866969696', N'10083', N'10083')
GO

INSERT INTO [dbo].[ls] ([id], [xm], [dm], [xb], [csrq], [dh], [zh], [mm]) VALUES (N'3', N'老卢', N'333', N'男', N'1999-02-25', N'18827526123', N'10082', N'10082')
GO

SET IDENTITY_INSERT [dbo].[ls] OFF
GO


-- ----------------------------
-- Table structure for manager
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[manager]') AND type IN ('U'))
	DROP TABLE [dbo].[manager]
GO

CREATE TABLE [dbo].[manager] (
  [managerId] int  IDENTITY(1,1) NOT NULL,
  [managerUsername] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [managerPassword] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[manager] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of manager
-- ----------------------------
SET IDENTITY_INSERT [dbo].[manager] ON
GO

INSERT INTO [dbo].[manager] ([managerId], [managerUsername], [managerPassword]) VALUES (N'1', N'root', N'root')
GO

SET IDENTITY_INSERT [dbo].[manager] OFF
GO


-- ----------------------------
-- Table structure for xs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[xs]') AND type IN ('U'))
	DROP TABLE [dbo].[xs]
GO

CREATE TABLE [dbo].[xs] (
  [xh] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [xm] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [bj] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [xy] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [xb] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [zzmm] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [yx] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [csrq] date  NOT NULL,
  [zh] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [txdz] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [mz] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [zy] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sj] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [mm] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[xs] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'姓名',
'SCHEMA', N'dbo',
'TABLE', N'xs',
'COLUMN', N'xm'
GO

EXEC sp_addextendedproperty
'MS_Description', N'班级',
'SCHEMA', N'dbo',
'TABLE', N'xs',
'COLUMN', N'bj'
GO

EXEC sp_addextendedproperty
'MS_Description', N'学院',
'SCHEMA', N'dbo',
'TABLE', N'xs',
'COLUMN', N'xy'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'xs',
'COLUMN', N'xb'
GO

EXEC sp_addextendedproperty
'MS_Description', N'政治面貌',
'SCHEMA', N'dbo',
'TABLE', N'xs',
'COLUMN', N'zzmm'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮箱',
'SCHEMA', N'dbo',
'TABLE', N'xs',
'COLUMN', N'yx'
GO

EXEC sp_addextendedproperty
'MS_Description', N'出生日期',
'SCHEMA', N'dbo',
'TABLE', N'xs',
'COLUMN', N'csrq'
GO

EXEC sp_addextendedproperty
'MS_Description', N'账号',
'SCHEMA', N'dbo',
'TABLE', N'xs',
'COLUMN', N'zh'
GO

EXEC sp_addextendedproperty
'MS_Description', N'通信地址',
'SCHEMA', N'dbo',
'TABLE', N'xs',
'COLUMN', N'txdz'
GO

EXEC sp_addextendedproperty
'MS_Description', N'民族',
'SCHEMA', N'dbo',
'TABLE', N'xs',
'COLUMN', N'mz'
GO

EXEC sp_addextendedproperty
'MS_Description', N'专业',
'SCHEMA', N'dbo',
'TABLE', N'xs',
'COLUMN', N'zy'
GO

EXEC sp_addextendedproperty
'MS_Description', N'手机',
'SCHEMA', N'dbo',
'TABLE', N'xs',
'COLUMN', N'sj'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'xs',
'COLUMN', N'mm'
GO


-- ----------------------------
-- Records of xs
-- ----------------------------
INSERT INTO [dbo].[xs] ([xh], [xm], [bj], [xy], [xb], [zzmm], [yx], [csrq], [zh], [txdz], [mz], [zy], [sj], [mm]) VALUES (N'001', N'你你你', N'软件182', N'人工智障学院', N'你', N'共青团员', N'haha@666.com', N'2000-11-19', N'10086', N'兰伯特的改装铺', N'哈哈', N'软件工程', N'18888888888', N'10086')
GO

INSERT INTO [dbo].[xs] ([xh], [xm], [bj], [xy], [xb], [zzmm], [yx], [csrq], [zh], [txdz], [mz], [zy], [sj], [mm]) VALUES (N'002', N'王洗', N'化教182', N'人工智障学院', N'女', N'共青团员', N'qwe@qqqwe.com', N'2000-01-28', N'10085', N'万隆国际', N'汉', N'化学教育', N'13557594321', N'10085')
GO

INSERT INTO [dbo].[xs] ([xh], [xm], [bj], [xy], [xb], [zzmm], [yx], [csrq], [zh], [txdz], [mz], [zy], [sj], [mm]) VALUES (N'003', N'卢本伟', N'医学182', N'人工智障学院', N'男', N'党员', N'qwe@qqqwe.com', N'1999-11-23', N'10084', N'美国加利福利亚州', N'汉', N'护士专业', N'15177825678', N'10084')
GO


-- ----------------------------
-- procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Auto increment value for kc
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[kc]', RESEED, 8)
GO


-- ----------------------------
-- Primary Key structure for table kc
-- ----------------------------
ALTER TABLE [dbo].[kc] ADD CONSTRAINT [PK__kc__2C87567C7E7A2B01] PRIMARY KEY CLUSTERED ([kcdm])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for kc_xs
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[kc_xs]', RESEED, 61)
GO


-- ----------------------------
-- Primary Key structure for table kc_xs
-- ----------------------------
ALTER TABLE [dbo].[kc_xs] ADD CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ls
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ls]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table ls
-- ----------------------------
ALTER TABLE [dbo].[ls] ADD CONSTRAINT [PK_ls] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for manager
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[manager]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table manager
-- ----------------------------
ALTER TABLE [dbo].[manager] ADD CONSTRAINT [PK__manager__47E0141F611DE369] PRIMARY KEY CLUSTERED ([managerId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table xs
-- ----------------------------
ALTER TABLE [dbo].[xs] ADD CONSTRAINT [PK_xs] PRIMARY KEY CLUSTERED ([xh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table kc
-- ----------------------------
ALTER TABLE [dbo].[kc] ADD CONSTRAINT [FK_kc_ls] FOREIGN KEY ([id_ls]) REFERENCES [dbo].[ls] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table kc_xs
-- ----------------------------
ALTER TABLE [dbo].[kc_xs] ADD CONSTRAINT [FK_kc_xs_xs] FOREIGN KEY ([xh]) REFERENCES [dbo].[xs] ([xh]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[kc_xs] ADD CONSTRAINT [FK__kc_xs__kcdm__68487DD7] FOREIGN KEY ([kcdm]) REFERENCES [dbo].[kc] ([kcdm]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

