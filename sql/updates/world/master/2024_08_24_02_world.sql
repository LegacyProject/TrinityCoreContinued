-- creature text alodi

DELETE FROM `creature_text` WHERE `CreatureId`=102846;
INSERT INTO `creature_text` (`CreatureId`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES 
(102846, 0, 0, 'My staff... in the hands of the enemy! We must get it back!', 12, 0, 100, 0, 0, 0, 112318, 'Alodi to Player'),
(102846, 1, 1, 'That just might work. We will need information on this ritual and the power to pull it off. Let us get to it.', 12, 0, 100, 0, 0, 0, 112328, 'Alodi to Player'),
(102846, 2, 2, 'You will need to speak to the manager at the Bank of Dalaran to gain access. I have cast a sigil on you that should give you permission. Also there might still be personal wards up inside. They shouldn\'t harm you but be careful.', 12, 0, 100, 0, 0, 0, 112335, 'Alodi to Player'),
(102846, 3, 3, 'I trust the Baroness was still there? I don\'t know how old that elf is.', 12, 0, 100, 0, 0, 64238, 112458, 'Alodi to Player'),
(102846, 4, 4, 'I suppose even astral entities need a change of pace now and again. It\'s still a she though... right?', 12, 0, 100, 0, 0, 64240, 112461, 'Alodi to Player'),
(102846, 5, 5, 'While I do not have the same strength outside of Dalaran, I will be with you "in spirit," as it were.', 12, 0, 100, 0, 0, 64249, 112813, 'Alodi to Player');
