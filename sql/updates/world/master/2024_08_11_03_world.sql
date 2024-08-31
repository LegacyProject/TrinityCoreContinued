-- Add missing creature text for Vindicator Maraad at dark portal

DELETE FROM `creature_text` WHERE `CreatureID`=78554;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(78554, 0, 0, 'MUSTER YOUR STRENGTH! ANOTHER IRON HORDE BATTALION APPROACHES!', 14, 0, 100, 0, 0, 44773, 0, 0, 'Vindicator Maraad to Khadgar Shield Target'),
(78554, 1, 1, 'Fight on, brothers and sisters! $p will see us through this war!', 14, 0, 100, 71, 0, 44776, 0, 0, 'Vindicator Maraad to Khadgar Shield Target'),
(78554, 2, 2, 'Stay alive, $n.', 12, 0, 100, 0, 0, 44771, 0, 0, 'Vindicator Maraad to Player');