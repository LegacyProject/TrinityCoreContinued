-- Add missing spawns in blasted lands dark portal draenor

SET @CGUID := 500000;

-- Creatures
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+5;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `VerifiedBuild`) VALUES
(@CGUID+0, 78423, 0, 4, 72, '0', 0, 0, 1190, 0, 1, -11812.2607421875, -3205.59716796875, -29.479166030883789, 3.093542814254760742, 120, 0, 0, 640000, 9573, 0, 0, 0, 26972), -- Archmage Khadgar (Area: The Dark Portal - Difficulty: 0) CreateObject1 (Auras: 128281 - Moonbeam Visual)
(@CGUID+1, 78553, 0, 4, 72, '0', 0, 0, 1190, 0, 1, -11811.513671875, -3207.8837890625, -29.5382575988769531, 3.295763015747070312, 120, 0, 0, 4800000, 320750, 0, 0, 0, 26972), -- Thrall (Area: The Dark Portal - Difficulty: 0) CreateObject1
(@CGUID+2, 79675, 0, 4, 72, '0', 0, 0, 1190, 0, 1, -11811.173828125, -3211.630126953125, -30.9784984588623046, 3.190636873245239257, 120, 0, 0, 400000, 0, 0, 0, 0, 26972), -- Lady Liadrin (Area: The Dark Portal - Difficulty: 0) CreateObject1
(@CGUID+3, 78554, 0, 4, 72, '0', 2801, 0, 1190, 0, 1, -11811.8818359375, -3203.59033203125, -29.5511932373046875, 3.358216285705566406, 120, 0, 0, 4800000, 128300, 0, 0, 0, 26972), -- Vindicator Maraad (Area: The Dark Portal - Difficulty: 0) CreateObject1 (Auras: 165746 - Retribution Aura)
(@CGUID+4, 78554, 0, 4, 72, '0', 3146, 0, 1190, 0, 1, -11811.8818359375, -3203.59033203125, -29.5511932373046875, 3.358216285705566406, 120, 0, 0, 4800000, 128300, 0, 0, 0, 26972), -- Vindicator Maraad (Area: The Dark Portal - Difficulty: 0) CreateObject1 (Auras: 165746 - Retribution Aura)
(@CGUID+5, 78430, 0, 4, 72, '0', 0, 0, 1190, 0, 1, -11811.48828125, -3201.296875, -29.9500179290771484, 3.295083284378051757, 120, 0, 0, 400000, 100, 0, 0, 0, 26972); -- Cordana Felsong (Area: The Dark Portal - Difficulty: 0) CreateObject1
-- Creature Equip Templates

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (78423, 78553, 79675, 78554, 78430);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(78423, 1, 28067, 0, 0, 0, 0, 0, 0, 0, 0, 26972), -- 78423
(78553, 1, 109674, 0, 0, 0, 0, 0, 0, 0, 0, 26972), -- 78553
(79675, 1, 163831, 0, 0, 163832, 0, 0, 0, 0, 0, 26972), -- 79675
(78554, 1, 30802, 0, 0, 0, 0, 0, 0, 0, 0, 26972), -- 78554
(78430, 1, 32425, 0, 0, 0, 0, 0, 0, 0, 0, 26972); -- 78430

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+4;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '128281'), -- Archmage Khadgar - 128281 - Moonbeam Visual
(@CGUID+2, 0, 19085, 0, 0, 0, 0, 0, 0, 0, ''), -- Lady Liadrin
(@CGUID+3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '165746'), -- Vindicator Maraad - 165746 - Retribution Aura
(@CGUID+4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '165746'); -- Vindicator Maraad - 165746 - Retribution Aura

UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=78430; -- Cordana Felsong
UPDATE `creature_template` SET `unit_flags3`=9437184 WHERE `entry`=78554; -- Vindicator Maraad
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=78553; -- Thrall

-- Phase
DELETE FROM `phase_area` WHERE `AreaId` = 72 AND `PhaseId` IN (2801, 3146);
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(72, 2801, '6.0 Invasion - Blasted Lands (A) Phase'),
(72, 3146, '6.0 Invasion - Blasted Lands (H) Phase');

-- Conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=26 AND `SourceGroup` = 2801 AND `SourceEntry` = 0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 2801, 0, 0, 0, 47, 0, 34398, 2 | 64, 0, 0, 'Apply Phase 2801 if Quest 34398 is complete | rewarded');

-- Conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=26 AND `SourceGroup` = 3146 AND `SourceEntry` = 0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 3146, 0, 0, 0, 47, 0, 36881, 2 | 64, 0, 0, 'Apply Phase 3146 if Quest 36881 is complete | rewarded');

-- Gossip Menu Option
UPDATE `gossip_menu_option` SET `OptionType`=1, `OptionNpcFlag`=1 WHERE `MenuId`=16863;