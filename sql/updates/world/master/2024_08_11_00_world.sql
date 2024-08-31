-- guldan under dark portal

SET @CGUID := 500009;

UPDATE `creature` SET `guid`=@CGUID+0, `PhaseId`=3251 WHERE `guid`=1383274;
UPDATE `creature_addon` SET `guid`=@CGUID+0 WHERE `guid`=1383274;

DELETE FROM `phase_area` WHERE `AreaId`=7037 AND `PhaseId`=3251;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7037, 3251, 'Gul\'Dan under the Dark Portal (Assault on the Dark Portal)');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=26 AND `SourceGroup` = 3251 AND `SourceEntry` = 7037);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 3251, 7037, 0, 0, 47, 0, 34393, 2 | 64, 0, 1, 'Apply Phase 3251 if Quest 34393 is not complete | rewarded');