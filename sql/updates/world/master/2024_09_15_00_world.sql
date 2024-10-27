-- azsuna update part 1

SET @CGUID := 600185;

DELETE FROM `creature` WHERE `guid`=@CGUID+1;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 90308, 1220, 7334, 7364, '0', '4462', 0, 0, 0, -90.923614501953125, 6983.765625, 12.53627777099609375, 4.52641153335571289, 7200, 0, 0, 3923, 0, 0, 0, 0, 0, 26972);

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+0, 0, 0, 0, 1, 64, 0, 0, 0, 0, '');

-- Phase
DELETE FROM `phase_area` WHERE `AreaId` IN (7362, 7364) AND `PhaseId` = 4462;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7362, 4462, 'See Allari the Souleater and Demon captured in Illidari Stand'),
(7364, 4462, 'See Allari the Souleater and Demon captured in Illidari Stand');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup` = 4462  AND `SourceEntry` IN (7362, 7364);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 4462, 7362, 0, 0, 47, 0, 37660, 8 | 2, 0, 1, 'Apply Phase 4462 if Quest 37660 is not in progress | completed'),
(26, 4462, 7362, 0, 1, 48, 0, 277159, 0, 1, 0, 'Apply Phase 4462 if player has quest objective done: Arev\'naal compelled'),

(26, 4462, 7364, 0, 0, 47, 0, 37660, 8 | 2, 0, 1, 'Apply Phase 4462 if Quest 37660 is not in progress | completed'),
(26, 4462, 7364, 0, 1, 48, 0, 277159, 0, 1, 0, 'Apply Phase 4462 if player has quest objective done: Arev\'naal compelled');
