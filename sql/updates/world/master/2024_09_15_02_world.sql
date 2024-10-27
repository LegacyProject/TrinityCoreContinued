-- fix conditions from prev commit

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup` = 4462  AND `SourceEntry` IN (7362, 7364);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 4462, 7362, 0, 0, 47, 0, 37660, 8 | 2, 0, 1, 'Apply Phase 4462 if Quest 37660 is not in progress | completed'),
(26, 4462, 7362, 0, 1, 48, 0, 277159, 0, 0, 0, 'Apply Phase 4462 if player has quest objective done: Arev\'naal compelled'),

(26, 4462, 7364, 0, 0, 47, 0, 37660, 8 | 2, 0, 1, 'Apply Phase 4462 if Quest 37660 is not in progress | completed'),
(26, 4462, 7364, 0, 1, 48, 0, 277159, 0, 0, 0, 'Apply Phase 4462 if player has quest objective done: Arev\'naal compelled');