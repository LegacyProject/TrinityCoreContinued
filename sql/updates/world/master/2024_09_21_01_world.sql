-- Add correct phase to npc spawns in mage orderhall

-- Update Spawn PhaseId
UPDATE `creature` SET `phaseid`=5929 WHERE `id`=103153 AND `map`=1513;

-- Phase area
DELETE FROM `phase_area` WHERE `AreaId`=7879 AND `PhaseId`=5929;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(7879, 5929, 'Mage Orderhall - Arcane Protector');

-- Conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 5852 AND `SourceEntry` = 7502);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 5929, 7879, 0, 1, 47, 0, 42479, 2|64, 0, 0, 'Allow phase 5929 if Quest (42479) in completed, rewarded');





