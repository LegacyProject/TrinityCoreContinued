-- Handle more gameobject spawns in phase 3251

SET @OGUID := 500005;

UPDATE `gameobject` SET `guid`=@OGUID+0, `PhaseId`=3251 WHERE `guid`=1460376;
UPDATE `gameobject_addon` SET `guid`=@OGUID+0 WHERE `guid`=1460376;