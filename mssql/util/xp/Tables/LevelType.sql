use util
go
set nocount, xact_abort on
go

/**************************
select top 100 * from xp.LevelType
**************************/
drop table if exists xp.LevelType
create table xp.LevelType
(
    LevelTypeSK int identity(0,1),
    Level tinyint not null 
        constraint CHK__xp_LevelType__Level check (Level <= 2),
    Value varchar(128) not null,
    InsertDateUtc datetime2(0) not null 
        constraint DF__xp_LevelType__InsertDateUtc default sysutcdatetime(),
    UpdateDateUtc datetime2(0) not null 
        constraint DF__xp_LevelType__UpdateDateUtc default sysutcdatetime(),
    
    constraint PKC_xp_LevelType__LevelTypeSK primary key clustered (LevelTypeSK)
)
drop index if exists IXNU__xp_LevelType__Value_Level on xp.LevelType
create unique nonclustered index IXNU__xp_LevelType__Value_Level on xp.LevelType (Value, Level)
go

