-- Add phase 8430 to spawns in mage orderhall

-- Spawn
UPDATE `creature` SET `PhaseId`=8430 WHERE `guid` IN (600154, 600148, 600149, 600150, 600151, 600152, 600153, 600155,
600156, 600157, 600158, 600161, 600162, 600163, 600164, 600165, 600166, 600167, 600168);

-- Conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=26 AND `SourceGroup` = 8430 AND `SourceEntry`=7879);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 8430, 7879, 0, 0, 47, 0, 41124, 2 | 64, 0, 0, 'Apply Phase 8430 if Quest 41124 is complete | rewarded');

-- Phases
DELETE FROM `phase_area` WHERE `AreaId`=7879 AND `PhaseId`=8430;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7879, 8430, 'Mage Orderhall Phase Post Tirisgarde Reborn');
