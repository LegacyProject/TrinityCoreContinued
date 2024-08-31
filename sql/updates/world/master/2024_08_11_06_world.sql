-- Add creature template addon data

-- Creature Template Addon
DELETE FROM `creature_template_addon` WHERE `entry` IN (81695 /*81695 (Cho'gall) - Fel Prison*/, 81696 /*81696 (Teron'gor) - Fel Prison*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(81695, 0, 0, 0, 0, 0, 6591, 0, 0, 0, '166539'), -- 81695 (Cho'gall) - Fel Prison
(81696, 0, 0, 0, 0, 0, 6592, 0, 0, 0, '166539'); -- 81696 (Teron'gor) - Fel Prison