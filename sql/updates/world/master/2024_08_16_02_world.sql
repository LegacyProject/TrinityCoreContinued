-- fix errors added during last commit

SET @CGUID := 600147;

UPDATE `creature_addon` SET `guid`=@CGUID+3 WHERE `guid`=20540899;
UPDATE `creature_addon` SET `guid`=@CGUID+4 WHERE `guid`=20540902;
UPDATE `creature_addon` SET `guid`=@CGUID+5 WHERE `guid`=20540897;