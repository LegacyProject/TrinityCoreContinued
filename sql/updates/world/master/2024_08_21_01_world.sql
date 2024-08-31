-- Spell An Audience With The King

DELETE FROM `spell_area` WHERE `spell`=200023;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(200023, 7502, 44663, 40714, 0, 0, 2, 3, 64, 1),
(200023, 7502, 44184, 40714, 0, 0, 2, 3, 64, 1);