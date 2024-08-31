-- Add thrall in phase 3568

SET @CGUID := 500010;

DELETE FROM `creature` WHERE `guid`=@CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(@CGUID+0, 78553, 1265, 7025, 7037, '0', 0, 3568, 0, -1, 0, 0, 4063.96, -2373.5, 94.6872, 1.82676, 120, 0, 0, 117424800, 0, 0, 0, 0, 0, 0, 0, '', 0); -- Thrall
