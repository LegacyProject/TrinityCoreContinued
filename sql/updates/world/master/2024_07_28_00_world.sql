-- Update gameobject & creature spawns

SET @CGUID := 500007;
SET @OGUID := 500000;

UPDATE `creature` SET `guid`=@CGUID+0, `PhaseId`=3763 WHERE `guid`=1385258 AND `id`=81695; -- Cho'gall
UPDATE `creature_addon` SET `guid`=@CGUID+0 WHERE `guid`=1385258; -- Cho'gall

UPDATE `gameobject` SET `guid`=@OGUID+0, `PhaseId`=3763 WHERE `guid`=1250124 AND `id`=236690; -- Doodad_6TJ_DARKPORTAL_Souls_FXWRAP_Right001
UPDATE `gameobject_addon` SET `guid`=@OGUID+0 WHERE `guid`=1250124; -- Doodad_6TJ_DARKPORTAL_Souls_FXWRAP_Right001

UPDATE `gameobject` SET `guid`=@OGUID+1, `PhaseId`=3763 WHERE `guid`=1250175 AND `id`=234622; -- Dark Portal Door
UPDATE `gameobject_addon` SET `guid`=@OGUID+1 WHERE `guid`=1250175; -- Dark Portal Door

UPDATE `creature` SET `guid`=@CGUID+1, `PhaseId`=3764 WHERE `guid`=10124220 AND `id`=81696; -- Teron'gor
UPDATE `creature_addon` SET `guid`=@CGUID+1 WHERE `guid`=10124220; -- Teron'gor

UPDATE `gameobject` SET `guid`=@OGUID+2, `PhaseId`=3764 WHERE `guid`=1250125 AND `id`=236691; -- Doodad_6TJ_DARKPORTAL_Souls_FXWRAP_Left001
UPDATE `gameobject_addon` SET `guid`=@OGUID+2 WHERE `guid`=1250125; -- Doodad_6TJ_DARKPORTAL_Souls_FXWRAP_Left001

UPDATE `gameobject` SET `guid`=@OGUID+3, `PhaseId`=3764 WHERE `guid`=1250119 AND `id`=233906; -- Doodad_6TJ_DarkPortal_FX_Wrap001
UPDATE `gameobject_addon` SET `guid`=@OGUID+3 WHERE `guid`=1250119; -- Doodad_6TJ_DarkPortal_FX_Wrap001

-- Phases
DELETE FROM `phase_area` WHERE `AreaId` = 7037 AND `PhaseId` IN (3763, 3764);
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7037, 3763, 'Cosmetic: Mark of the Shadowmoon'),
(7037, 3764, 'Cosmetic: Mark of the Bleeding Hollow');

-- Conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=26 AND `SourceGroup` = 3763 AND `SourceEntry` = 0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 3763, 0, 0, 0, 48, 0, 272621, 0, 0, 1, 'Apply Phase 3563 if Quest Objective Not Completed');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=26 AND `SourceGroup` = 3764 AND `SourceEntry` = 0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 3764, 0, 0, 0, 48, 0, 273946, 1, 0, 1, 'Apply Phase 3764 if Quest Objective Not Completed');