-- Duke Lankral SAI

UPDATE `creature_template` SET `gossip_menu_id`=19169, `AIName`='SmartAI', `npcflag`=`npcflag`|1 WHERE `entry`=101441;

DELETE FROM `smart_scripts` WHERE `entryorguid`=101441;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(101441, 0, 0, 0, 19, 0, 100, 0, 40715, 0, 0, 0, 85, 199985, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Quest Accept - Inv Cast Spell'),
(101441, 0, 1, 0, 62, 0, 100, 0, 19169, 0, 0, 0, 85, 199985, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gossip Select - Inv Cast Spell');

