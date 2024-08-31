-- Creature text for archmage khadgar, Paradise Lost/Down to Azusna.
DELETE FROM `creature_text` WHERE `CreatureID`=86563;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(86563, 0, 0, 'Here you are. $n, over here, Azsuna awaits.', 12, 0, 100, 3, 0, 57419, 0, 0, 'Archmage Khadgar to Player'),
(86563, 1, 0, 'Let me know when you are ready, champion.', 12, 0, 100, 1, 0, 58371, 0, 0, 'Archmage Khadgar to Player');
