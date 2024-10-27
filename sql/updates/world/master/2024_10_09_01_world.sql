-- SAI In the blink of an eye

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=113986;

DELETE FROM `smart_scripts` WHERE `entryorguid`=113986 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(113986, 0, 0, 0, 62, 0, 100, 1, 20457, 0, 0, 0, 0, '', 129, 1449, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Select - Play Scene');