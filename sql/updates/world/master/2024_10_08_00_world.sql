-- handle phase 6856

-- Update Spawns
UPDATE `creature` SET `PhaseId`=6856 WHERE `guid` IN (600112, 600113);

-- Phase Area
DELETE FROM `phase_area` WHERE `AreaId`=7879 AND `PhaseId` = 6856;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7879, 6856, 'Archmage Kalec - Archmage Modera - Rise Chanpion');

-- Conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=26 AND `SourceGroup`=6856 AND `SourceEntry`=7879);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 6856, 7879, 0, 0, 47, 0, 40122, 2 | 8 | 64, 0, 0, 'Allow phase 6856 if quest Inprogress | Completed | Rewarded');
