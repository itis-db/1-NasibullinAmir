create table if not exists ActivityType (
    ActivityTypeId integer primary key,
    name varchar not null,
    sysname varchar not null
);

create table if not exists area (
    AreaId integer primary key,
    name varchar not null
);

create table if not exists activity (
    ActivityId integer primary key,
    ActivityTypeId integer references ActivityType (ActivityTypeId) not null,
    code varchar not null,
    name varchar not null,
    parentid integer references activity (ActivityId)
);

create table if not exists contract (
    contractid integer primary key references activity (ActivityId),
    areaid integer references area (areaid)
);

create table if not exists program (
    programid integer primary key references activity (ActivityId),
    indexnum integer,
    yearstart integer,
    yearfinish integer
);

create table if not exists point (
    pointid integer primary key references activity (ActivityId),
    plandate date not null,
    factdate date
);


create table if not exist subprogram (
    subprogramid integer primary key references activity (activityid),
    indexnum integer
);

create table if not exist project (
    projectid integer primary key references activity (activityid),
    targetdescr varchar
);