use util
go
set nocount, xact_abort on
go
/**************************
select top 100 * from xp.ObjectType
**************************/
drop table if exists xp.ObjectType
create table xp.ObjectType
(
    ObjectTypeSK int identity(0,1),
    Type char(2) collate Latin1_General_CI_AS_KS_WS not null,
    TypeDesc nvarchar(60) collate Latin1_General_CI_AS_KS_WS null,
    Comment nvarchar(128) null,
    MinVersion tinyint not null 
        constraint DF__xp_ObjectType__MinVersion default 0,
    InsertDateUtc datetime2(0) not null 
        constraint DF__xp_ObjectType__InsertDateUtc default sysutcdatetime(),
    UpdateDateUtc datetime2(0) not null 
        constraint DF__xp_ObjectType__UpdateDateUtc default sysutcdatetime(),
    
    constraint PKC_xp_ObjectType__ObjectTypeSK primary key clustered (ObjectTypeSK)
)
drop index if exists IXNU__xp_ObjectType__Type on xp.ObjectType
create unique nonclustered index IXNU__xp_ObjectType__Type on xp.ObjectType (Type)
go
GO
