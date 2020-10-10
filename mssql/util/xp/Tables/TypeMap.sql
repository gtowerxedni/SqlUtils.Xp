drop table if exists xp.TypeMap
create table xp.TypeMap
(
    TypeMapSK int identity(1,1) 
        constraint PKC_xp_TypeMap__TypeMapSK primary key clustered,
    ObjectTypeSK int not null,
    Level0TypeSK int not null,
    Level1TypeSK int null,
    Level2TypeSK int null,
    MinorTypeSK int null,
    InsertDateUtc datetime2(0) not null 
        constraint DF__xp_TypeMap__InsertDateUtc default sysutcdatetime(),
    UpdateDateUtc datetime2(0) not null 
        constraint DF__xp_TypeMap__UpdateDateUtc default sysutcdatetime()
)
go