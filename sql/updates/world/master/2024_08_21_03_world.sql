-- Meryl Felstorm

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=102700;

DELETE FROM `waypoints` WHERE `entry`=102700;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(102700, 1, -841.963, 4420.91, 741.662, 'Meryl Felstorm The Dreadlords Prize'),
(102700, 2, -841.572, 4417.43, 739.887, 'Meryl Felstorm The Dreadlords Prize'),
(102700, 3, -839.719, 4401.15, 740.37, 'Meryl Felstorm The Dreadlords Prize'),
(102700, 4, -839.428, 4396.96, 737.881, 'Meryl Felstorm The Dreadlords Prize'),
(102700, 5, -840.859, 4393.02, 737.726, 'Meryl Felstorm The Dreadlords Prize'),
(102700, 6, -845.711, 4393.79, 737.671, 'Meryl Felstorm The Dreadlords Prize'),
(102700, 7, -882.769, 4412.04, 737.16, 'Meryl Felstorm The Dreadlords Prize'),
(102700, 8, -892.493, 4409.16, 737.059, 'Meryl Felstorm The Dreadlords Prize'),
(102700, 9, -901.394, 4397.9, 738.516, 'Meryl Felstorm The Dreadlords Prize'),
(102700, 10, -930.212, 4362.38, 740.761, 'Meryl Felstorm The Dreadlords Prize'),
(102700, 11, -936.362, 4354.74, 737.288, 'Meryl Felstorm The Dreadlords Prize'),
(102700, 12, -946.26, 4342.49, 737.288, 'Meryl Felstorm The Dreadlords Prize'),
(102700, 13, -952.206, 4335.16, 740.53, 'Meryl Felstorm The Dreadlords Prize');

-- SAI The Dreadlords Prize
DELETE FROM `smart_scripts` WHERE `entryorguid`=102700;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(102700, 0, 0, 0, 19, 0, 100, 0, 41036, 0, 0, 0, 0, '', 80, 10270000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Quest Accept - Actionlist'),
(102700, 0, 1, 2, 58, 0, 100, 0, 13, 102700, 0, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Waypoint Reached - Say Second Line'),
(102700, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -960.655, 4329.47, 740.185, 0.042179, 'Link - Move To Pos');


-- Action List
DELETE FROM `smart_scripts` WHERE `entryorguid`=10270000 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(10270000, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Meryl Felstorm - Close Gossip'),
(10270000, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, '', 91, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Meryl Felstorm - Remove Kneeling'),
(10270000, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 143, 3364, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Meryl Felstorm - Invoke Conversation to Player'),
(10270000, 9, 3, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, '', 53, 1, 102700, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Meryl Felstorm - Start Waypoints to Violet Hold');

