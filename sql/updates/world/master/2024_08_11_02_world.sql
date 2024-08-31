-- Add missing creature text for Gul'dan under dark portal

DELETE FROM `creature_text` WHERE `CreatureID`=78333;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(78333, 0, 0, 'Sever my bonds... and the portal falls...', 12, 0, 100, 0, 0, 45331, 0, 0, 'Gul\'dan to Player'),
(78333, 1, 1, 'Yes... Yes!', 12, 0, 100, 0, 0, 45332, 0, 0, 'Gul\'dan to Player'),
(78333, 2, 2, 'Grommash will pay for his arrogance.', 12, 0, 100, 0, 0, 45334, 0, 0, 'Gul\'dan to Player'),
(78333, 3, 3, 'The bonds weaken. Freedom will be mine!', 12, 0, 100, 0, 0, 45333, 0, 0, 'Gul\'dan to Player');