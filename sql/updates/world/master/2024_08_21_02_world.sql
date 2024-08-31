-- Condition spell

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=17 AND `SourceEntry` IN (200023, 195356));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(17, 0, 200023, 0, 0, 15, 0, 32, 0, 0, 0, 'Cast Spell if player is Death Knight'),
(17, 0, 195356, 0, 0, 15, 0, 128, 0, 0, 0, 'Cast Spell if player is Mage');

