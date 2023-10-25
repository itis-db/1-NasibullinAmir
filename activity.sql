-- рекурсия 
with recursive RecursiveActivity as (
    select
        ActivityId,
        ParentId,
        ActivityTypeId,
        Name,
        AreaId
    from
        Activity
    where
        ParentId is null
    union all
    select
        a.ActivityId,
        a.ParentId,
        a.ActivityTypeId,
        a.Name,
        a.AreaId
    from
        Activity a
            inner join
        RecursiveActivity ra on a.ParentId = ra.ActivityId
)
select * from RecursiveActivity;