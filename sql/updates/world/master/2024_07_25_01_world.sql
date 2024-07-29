-- Add script to khadgar
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_archmage_khadgar_78423' WHERE `entry`=78423; -- 78423 (Archmage Khadgar)
DELETE FROM `smart_scripts` WHERE `entryorguid`=78423;
