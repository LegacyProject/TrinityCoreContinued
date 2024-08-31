-- Fix conditions

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 3763, 7025, 0, 0, 47, 0, 34392, 2 | 64, 0, 1, 'Apply Phase 3763 if Quest 34392 is not complete | rewarded'),
(26, 3764, 7025, 0, 0, 47, 0, 34392, 2 | 64, 0, 1, 'Apply Phase 3764 if Quest 34392 is not complete | rewarded');