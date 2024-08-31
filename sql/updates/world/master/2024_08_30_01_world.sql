-- Archmage Khadgar - Down to Azsuna

SET @CGUID := 600181;
-- Update Existing Spawn
UPDATE `creature` SET `guid`=@CGUID+0, `PhaseId`=5610 WHERE `guid`=20544383;

-- Update creature template
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=86563;

-- SmartAI Archmage Khadgar
DELETE FROM `smart_scripts` WHERE `entryorguid`=86563;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(86563, 0, 0, 3, 10, 0, 100, 0, 1, 20, 1000, 1000, 33, 97377, 0, 0, 0, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, 'OOC LOS - KillCredit (Condition Quest Improgress)'),
(86563, 0, 1, 2, 62, 0, 100, 0, 17085, 0, 0, 0, 85, 205204, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'OnGossip Cast Summon Khadgar Raven Form'),
(86563, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 85, 205098, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Link Cast Taxi Azsuna Alliance (Condition Player Is Alliance)'),
(86563, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 85, 205203, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Link Cast Taxi Azsuna Horde (Condition Player Is Horde)'),
(86563, 0, 4, 0, 10, 0, 100, 0, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'OOC LOS - Say First Line To Player'),
(86563, 0, 5, 0, 19, 0, 100, 0, 41220, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, 'Quest Taken - Say Second Line To Player');

-- Conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=17 AND `SourceEntry` IN (205098, 205203));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(17, 0, 205098, 0, 0, 6, 0, 469, 0, 0, 0, 'Cast Spell if player is Alliance'),
(17, 0, 205203, 0, 0, 6, 0, 67, 0, 0, 0, 'Cast Spell if player is Horde');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=17 AND `SourceEntry`=205206);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(17, 0, 205206, 0, 0, 47, 0, 41220, 8, 0, 0, 'Cast Spell if player has quest (41220) Inprogress');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=26 AND `SourceGroup`=5610 AND `SourceEntry`=7502);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 5610, 7502, 0, 0, 47, 0, 39718, 2 | 8 | 64, 0, 0, 'Allow phase 5610 if quest (39718) Inprogress | Completed | Rewarded'),
(26, 5610, 7502, 0, 0, 47, 0, 41220, 2 | 64, 0, 1, 'Allow phase 5610 if quest NOT completed | rewarded');

-- Phase Area
DELETE FROM `phase_area` WHERE `AreaId` = 7502 AND `PhaseId` = 5610;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7502, 5610, 'See Archmage Khadgar at Krassus Landing (Paradise Lost)');

-- Spell Area (Naga Scene)
DELETE FROM `spell_area` WHERE `spell`=205206 AND `area`=7334;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES
(205206, 7334, 0, 0, 0, 0, 2, 3, 1, 1);


