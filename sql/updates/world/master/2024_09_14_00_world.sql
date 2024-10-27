-- Spawn The Great Akazamzarak

SET @CGUID := 600184;

DELETE FROM `creature` WHERE `guid`=@CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 103092, 1220, 7502, 7592, '0', '5896', 0, 0, 0, -933.67364501953125, 4475.37158203125, 736.2452392578125, 0.489359050989151, 7200, 0, 0, 22590, 19005, 0, 0, 0, 0, 26972); -- 103092 (Area: 7592 - Difficulty: 0) CreateObject1

-- Phase Area
DELETE FROM `phase_area` WHERE `AreaId` = 7502 AND `PhaseId` = 5896;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7502, 5896, 'See The Great Akazamzarak In Dalaran');

-- Conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=26 AND `SourceGroup`=5896 AND `SourceEntry`=7502);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 5896, 7502, 0, 0, 47, 0, 41112, 2 | 64, 0, 1, 'Allow phase 5896 if quest (41112) NOT Completed | Rewarded');

-- Quest Data
DELETE FROM `creature_questender` WHERE (`id`=103092 AND `quest`=41112);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(103092, 41112); -- The Great Akazamzarak
