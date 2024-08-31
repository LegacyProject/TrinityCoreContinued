-- SmartAI Raven Form

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=103660;

DELETE FROM `smart_scripts` WHERE `entryorguid`=103660;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(103660, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 10366000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Just Summoned - Actionlist');

DELETE FROM `smart_scripts` WHERE `entryorguid`=10366000;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(10366000, 9, 0, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 29, 0, 0, 0, 0, 0, 0, 18, 1, 10, 0, 0, 0, 0, 0, 'Follow Player'),
(10366000, 9, 1, 0, 0, 0, 100, 0, 16000, 16000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Say First Line To Player'),
(10366000, 9, 2, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Say Second Line To Player'),
(10366000, 9, 3, 0, 0, 0, 100, 0, 29000, 29000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Say Third Line To Player'),
(10366000, 9, 4, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Say Fourth Line To Player'),
(10366000, 9, 5, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 41, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');