-- Spell Summon Orderhall Follower Mage

DELETE FROM `spell_area` WHERE `spell`=195356;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(195356, 7502, 44663, 41035, 0, 0, 2, 3, 66, 1),
(195356, 7502, 44184, 41035, 0, 0, 2, 3, 66, 1);
