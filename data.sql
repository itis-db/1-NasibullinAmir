INSERT INTO ActivityType (ActivityTypeId, Name)
VALUES (1, 'Concert'),
       (2, 'Masterclass'),
       (3, 'Sports');

INSERT INTO Activity (ActivityId, ParentId, ActivityTypeId, Name, AreaId)
VALUES (1, NULL, 1, 'Snurov Concert', 1),
       (2, 1, 2, 'Football Match', 2),
       (3, 1, 2, 'Hockey match', 3),
       (4, 2, 1, 'Tupac Concert', 1),
       (5, 2, 3, 'Mike Tyson training', 3),
       (6, NULL, 3, 'Modern painting at street', 2);

INSERT INTO Program (ActivityId)
VALUES (1),
       (2),
       (3),
       (6);

INSERT INTO SubProgram (ActivityId)
VALUES (4),
       (5);

INSERT INTO Project (ActivityId)
VALUES (2),
       (3),
       (4),
       (5);

INSERT INTO Contract (ActivityId, AreaId)
VALUES (3, 1),
       (4, 2),
       (6, 3);

INSERT INTO Point (ActivityId)
VALUES (1),
       (2),
       (3),
       (4),
       (5),
       (6);