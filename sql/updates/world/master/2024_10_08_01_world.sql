-- dalaran deadwind pass cleanup

SET @CGUID := 600218;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=7714 AND `SourceEntry`=41;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 7714, 41, 0, 0, 47, 0, 44663, 2 | 8, 0, 0, 'Allow phase 7714 if quest Inprogress | Completed NOT Rewarded'), -- Blink of an Eye Alliance
(26, 7714, 41, 0, 0, 47, 0, 44184, 2 | 8, 0, 0, 'Allow phase 7714 if quest Inprogress | Completed NOT Rewarded'); -- Blink of an Eye Horde

-- Phase Area
DELETE FROM `phase_area` WHERE `AreaId` = 41 AND `PhaseId` = 7714;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(41, 7714, 'Blink of an eye phase');

-- Update creatures in phase 7714
UPDATE `creature` SET `guid`=@CGUID+0, `PhaseId`=7714 WHERE `guid`=20555434;
UPDATE `creature` SET `guid`=@CGUID+1, `PhaseId`=7714 WHERE `guid`=20555432;
UPDATE `creature` SET `guid`=@CGUID+2, `PhaseId`=7714 WHERE `guid`=20555431;
UPDATE `creature` SET `guid`=@CGUID+3, `PhaseId`=7714 WHERE `guid`=20555435;
UPDATE `creature` SET `guid`=@CGUID+4, `PhaseId`=7714 WHERE `guid`=20555433;
UPDATE `creature` SET `guid`=@CGUID+5, `PhaseId`=7714 WHERE `guid`=20555438;

UPDATE `creature` SET `guid`=@CGUID+6, `PhaseId`=7714 WHERE `guid`=20555546;
UPDATE `creature` SET `guid`=@CGUID+7, `PhaseId`=7714 WHERE `guid`=20555549;
UPDATE `creature` SET `guid`=@CGUID+8, `PhaseId`=7714 WHERE `guid`=20555525;
UPDATE `creature` SET `guid`=@CGUID+9, `PhaseId`=7714 WHERE `guid`=20555504;
UPDATE `creature` SET `guid`=@CGUID+10, `PhaseId`=7714 WHERE `guid`=20555538;
UPDATE `creature` SET `guid`=@CGUID+11, `PhaseId`=7714 WHERE `guid`=20555505;
UPDATE `creature` SET `guid`=@CGUID+12, `PhaseId`=7714 WHERE `guid`=20555533;
UPDATE `creature` SET `guid`=@CGUID+13, `PhaseId`=7714 WHERE `guid`=20555537;
UPDATE `creature` SET `guid`=@CGUID+14, `PhaseId`=7714 WHERE `guid`=20555536;
UPDATE `creature` SET `guid`=@CGUID+15, `PhaseId`=7714 WHERE `guid`=20555423;
UPDATE `creature` SET `guid`=@CGUID+16, `PhaseId`=7714 WHERE `guid`=20555412;
UPDATE `creature` SET `guid`=@CGUID+17, `PhaseId`=7714 WHERE `guid`=20555541;
UPDATE `creature` SET `guid`=@CGUID+18, `PhaseId`=7714 WHERE `guid`=20555425;
UPDATE `creature` SET `guid`=@CGUID+19, `PhaseId`=7714 WHERE `guid`=20555415;
UPDATE `creature` SET `guid`=@CGUID+20, `PhaseId`=7714 WHERE `guid`=20555421;
UPDATE `creature` SET `guid`=@CGUID+21, `PhaseId`=7714 WHERE `guid`=20555427;
UPDATE `creature` SET `guid`=@CGUID+22, `PhaseId`=7714 WHERE `guid`=20555548;
UPDATE `creature` SET `guid`=@CGUID+23, `PhaseId`=7714 WHERE `guid`=20555540;
UPDATE `creature` SET `guid`=@CGUID+24, `PhaseId`=7714 WHERE `guid`=20555544;
UPDATE `creature` SET `guid`=@CGUID+25, `PhaseId`=7714 WHERE `guid`=20555543;
UPDATE `creature` SET `guid`=@CGUID+26, `PhaseId`=7714 WHERE `guid`=20555542;
UPDATE `creature` SET `guid`=@CGUID+27, `PhaseId`=7714 WHERE `guid`=20555545;

UPDATE `creature_addon` SET `guid`=@CGUID+0 WHERE `guid`=20555434;
UPDATE `creature_addon` SET `guid`=@CGUID+1 WHERE `guid`=20555432;
UPDATE `creature_addon` SET `guid`=@CGUID+2 WHERE `guid`=20555431;
UPDATE `creature_addon` SET `guid`=@CGUID+3 WHERE `guid`=20555435;
UPDATE `creature_addon` SET `guid`=@CGUID+4 WHERE `guid`=20555433;
UPDATE `creature_addon` SET `guid`=@CGUID+5 WHERE `guid`=20555438;

UPDATE `creature_addon` SET `guid`=@CGUID+6 WHERE `guid`=20555546;
UPDATE `creature_addon` SET `guid`=@CGUID+7 WHERE `guid`=20555549;
UPDATE `creature_addon` SET `guid`=@CGUID+8 WHERE `guid`=20555525;
UPDATE `creature_addon` SET `guid`=@CGUID+9 WHERE `guid`=20555504;
UPDATE `creature_addon` SET `guid`=@CGUID+10 WHERE `guid`=20555538;
UPDATE `creature_addon` SET `guid`=@CGUID+11 WHERE `guid`=20555505;
UPDATE `creature_addon` SET `guid`=@CGUID+12 WHERE `guid`=20555533;
UPDATE `creature_addon` SET `guid`=@CGUID+13 WHERE `guid`=20555537;
UPDATE `creature_addon` SET `guid`=@CGUID+14 WHERE `guid`=20555536;
UPDATE `creature_addon` SET `guid`=@CGUID+15 WHERE `guid`=20555423;
UPDATE `creature_addon` SET `guid`=@CGUID+16 WHERE `guid`=20555412;
UPDATE `creature_addon` SET `guid`=@CGUID+17 WHERE `guid`=20555541;
UPDATE `creature_addon` SET `guid`=@CGUID+18 WHERE `guid`=20555425;
UPDATE `creature_addon` SET `guid`=@CGUID+19 WHERE `guid`=20555415;
UPDATE `creature_addon` SET `guid`=@CGUID+20 WHERE `guid`=20555421;
UPDATE `creature_addon` SET `guid`=@CGUID+21 WHERE `guid`=20555427;
UPDATE `creature_addon` SET `guid`=@CGUID+22 WHERE `guid`=20555548;
UPDATE `creature_addon` SET `guid`=@CGUID+23 WHERE `guid`=20555540;
UPDATE `creature_addon` SET `guid`=@CGUID+24 WHERE `guid`=20555544;
UPDATE `creature_addon` SET `guid`=@CGUID+25 WHERE `guid`=20555543;
UPDATE `creature_addon` SET `guid`=@CGUID+26 WHERE `guid`=20555542;
UPDATE `creature_addon` SET `guid`=@CGUID+27 WHERE `guid`=20555545;
