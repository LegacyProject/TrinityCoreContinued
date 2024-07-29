-- Dark portal tanaan jungle

-- Spell Area
DELETE FROM `spell_area` WHERE `spell`=163341 AND `area`=7037;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES
(163341, 7037, 34398, 34393, 0, 0, 2, 3, 66, 9),
(163341, 7037, 36881, 34393, 0, 0, 2, 3, 66, 9);