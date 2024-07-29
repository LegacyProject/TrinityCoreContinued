-- missing creature text for Hansel Heavyhands & Thaelin Darkanvil

DELETE FROM `creature_text` WHERE `CreatureID` IN (78568, 78569);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(78568, 0, 0, 'Don\'t worry, $n. We\'ve got your back!', 12, 0, 100, 0, 0, 45747, 0, 0, 'Thaelin Darkanvil to Player'),
(78569, 0, 0, 'Get on in there, champ!', 12, 0, 100, 0, 0, 45699, 0, 0, 'Hansel Heavyhands to Player'),
(78569, 1, 1, 'There she goes...', 12, 0, 100, 0, 0, 45702, 0, 0, 'Hansel Heavyhands to Player'),
(78569, 2, 2, '...wait for it...', 12, 0, 100, 0, 0, 45703, 0, 0, 'Hansel Heavyhands to Player'),
(78569, 3, 3, 'KER-PLOW!', 12, 0, 100, 0, 0, 45704, 0, 0, 'Hansel Heavyhands to Player'),
(78569, 4, 4, 'Ohhh, weren\'t that the prettiest thing?', 12, 0, 100, 0, 0, 45705, 0, 0, 'Hansel Heavyhands to Player');