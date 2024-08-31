-- Handle phase 3568

SET @OGUID := 500004;

UPDATE `gameobject` SET `guid`=@OGUID+0, `PhaseId`=3568 WHERE `guid`=1249910 AND `id`=188215;
UPDATE `gameobject_addon` SET `guid`=@OGUID+0 WHERE `guid`=1249910;

-- Conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=26 AND `SourceGroup` = 3568 AND `SourceEntry` IN (7037, 7025));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 3568, 7037, 0, 0, 47, 0, 34393, 2 | 64, 0, 1, 'Apply Phase 3568 if Quest 34393 is not complete | rewarded'),
(26, 3568, 7025, 0, 0, 47, 0, 34393, 2 | 64, 0, 1, 'Apply Phase 3568 if Quest 34393 is not complete | rewarded');

-- Phases
DELETE FROM `phase_area` WHERE `AreaId` IN (7025, 7037) AND `PhaseId`IN (3568);
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7025, 3568, 'Battle for the Dark Portal (Assault on the Dark Portal)'),
(7037, 3568, 'Battle for the Dark Portal (Assault on the Dark Portal)');