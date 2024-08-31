-- demons among us scene script

UPDATE `creature_template` SET `gossip_menu_id`=19134, `AIName`='SmartAI' WHERE `entry`=100675;

UPDATE `scene_template` SET `ScriptName`='scene_demons_among_us_alliance' WHERE `SceneId`=1456;

DELETE FROM `smart_scripts` WHERE `entryorguid`=100675;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(100675, 0, 0, 0, 19, 0, 100, 0, 40593, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Quest Accept - Speech'),
(100675, 0, 1, 0, 62, 0, 100, 0, 19134, 0, 0, 0, 85, 225500, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Gossip Select - Invoke Summon Demon Attack Scene');





