insert into xp.LevelType
(
    Level,
    Value
)
select *
from
(
    values
        (0, 'ASSEMBLY'),
        (0, 'CONTRACT'),
        (0, 'EVENT NOTIFICATION'),
        (0, 'FILEGROUP'),
        (0, 'MESSAGE TYPE'),
        (0, 'PARTITION FUNCTION'),
        (0, 'PARTITION SCHEME'),
        (0, 'REMOTE SERVICE BINDING'),
        (0, 'ROUTE'),
        (0, 'SCHEMA'),
        (0, 'SERVICE'),
        (0, 'USER'),
        (0, 'TRIGGER'),
        (0, 'TYPE'),
        (0, 'PLAN GUIDE'),
        (1, 'AGGREGATE'),
        (1, 'DEFAULT'),
        (1, 'FUNCTION'),
        (1, 'LOGICAL FILE NAME'),
        (1, 'PROCEDURE'),
        (1, 'QUEUE'),
        (1, 'RULE'),
        (1, 'SEQUENCE'),
        (1, 'SYNONYM'),
        (1, 'TABLE'),
        (1, 'TABLE_TYPE'),
        (1, 'TYPE'),
        (1, 'VIEW'),
        (1, 'XML SCHEMA COLLECTION'),
        (2, 'COLUMN'),
        (2, 'CONSTRAINT'),
        (2, 'EVENT NOTIFICATION'),
        (2, 'INDEX'),
        (2, 'PARAMETER'),
        (2, 'TRIGGER')
) a (Level, Type)

go