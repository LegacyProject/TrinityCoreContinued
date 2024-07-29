-- Archmage Khadgar Dark Portal Tanaan Jungle

SET @CGUID := 500006;
SET @ORG_GUID := 1383287;

-- Update existing spawn
UPDATE `creature` SET `guid`=@CGUID+0, `PhaseId`=3563 WHERE `guid`=@ORG_GUID AND `id`=78558;
UPDATE `creature_addon` SET `guid`=@CGUID+0 WHERE `guid`=@ORG_GUID;

-- Phase
DELETE FROM `phase_area` WHERE `AreaId` = 7037 AND `PhaseId` = 3563;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7037, 3563, 'See Khadgar at the Dark Portal (Assault on the Dark Portal)');

-- Conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=26 AND `SourceGroup` = 3563 AND `SourceEntry` = 0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 3563, 0, 0, 0, 47, 0, 34420, 8, 0, 1, 'Apply Phase 3563 if Quest 34420 is not in progress');