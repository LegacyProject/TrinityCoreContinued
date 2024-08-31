-- Archmage Khadgar - The Tranquil Forest

SET @CGUID := 600183;
-- Update Existing Spawn
UPDATE `creature` SET `guid`=@CGUID+0, `PhaseId`=6098 WHERE `guid`=21010577;

-- Conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=26 AND `SourceGroup`=6098 AND `SourceEntry`=7502);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 6098, 7502, 0, 0, 47, 0, 39731, 2 | 8 | 64, 0, 0, 'Allow phase 6098 if quest Inprogress | completed | rewarded'),
(26, 6098, 7502, 0, 0, 47, 0, 39861, 2 | 64, 0, 1, 'Allow phase 6098 if quest NOT completed | rewarded');

-- Phase Area
DELETE FROM `phase_area` WHERE `AreaId` = 7502 AND `PhaseId` = 6098;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7502, 6098, 'See Archmage Khadgar at Krassus Landing (The Tranquil Forest)');

-- Quests
DELETE FROM `creature_queststarter` WHERE (`id`=91172 AND `quest`=39861);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(91172, 39861); -- Tying UP Loose Ends

DELETE FROM `creature_questender` WHERE (`id`=91172 AND `quest`=39731);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(91172, 39731); -- The Tranquil Forest
