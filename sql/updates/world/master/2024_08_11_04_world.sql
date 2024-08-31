-- Add missing creature text for Thrall at dark portal

DELETE FROM `creature_text` WHERE `CreatureID`=78553;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(78553, 0, 0, 'FURY OF STORMS, HEAR MY PLEA!', 14, 0, 100, 15, 0, 46404, 0, 0, 'Thrall to Khadgar Shield Target'),
(78553, 1, 1, 'I will not be able to defend the front for much longer. My power here is greatly diminished. $p must succeed or Azeroth will fall.', 12, 0, 100, 0, 0, 46405, 0, 0, 'Thrall to Khadgar Shield Target'),
(78553, 2, 2, 'FURY OF EARTH, GRANT ME YOUR STRENGTH!', 14, 0, 100, 0, 0, 46399, 0, 0, 'Thrall to Khadgar Shield Target'),
(78553, 3, 3, 'Fury of Fire, ignite our fists and weapons!', 14, 0, 100, 0, 0, 46410, 0, 0, 'Thrall'),
(78553, 4, 4, 'Fury of Wind, honor these soldiers with your presence!', 14, 0, 100, 0, 0, 46411, 0, 0, 'Thrall');