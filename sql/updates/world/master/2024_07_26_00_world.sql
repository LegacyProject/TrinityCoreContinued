-- Add missing creature text for archmage khadgar

DELETE FROM `creature_text` WHERE `CreatureID`=78558;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(78558, 0, 0, 'We\'re all counting on you, $n.', 12, 0, 100, 1, 0, 44868, 0, 0, 'Archmage Khadgar to Player'),
(78558, 1, 1, 'Look! The portal grows weaker!', 14, 0, 100, 0, 0, 44883, 0, 0, 'Archmage Khadgar to Player'),
(78558, 2, 2, 'Hold that front! Our work is nearly done!', 14, 0, 100, 0, 0, 44884, 0, 0, 'Archmage Khadgar to Player'),
(78558, 3, 3, 'Please, don\'t wander too far. We need you here, champion.', 12, 0, 100, 0, 0, 44879, 0, 0, 'Archmage Khadgar to Player'),
(78558, 4, 4, 'Use whatever means are necessary, champion. Azeroth\'s final hope lies with you.', 12, 0, 100, 1, 0, 44873, 0, 0, 'Archmage Khadgar to Player');