-- fix new errors

SET @CGUID := 600030;

UPDATE `creature_addon` SET `guid`=@CGUID+2 WHERE `guid`=20508251;
UPDATE `creature_addon` SET `guid`=@CGUID+9 WHERE `guid`=20508429;
UPDATE `creature_addon` SET `guid`=@CGUID+12 WHERE `guid`=20508467;
UPDATE `creature_addon` SET `guid`=@CGUID+17 WHERE `guid`=20508482;
UPDATE `creature_addon` SET `guid`=@CGUID+18 WHERE `guid`=20508487;
UPDATE `creature_addon` SET `guid`=@CGUID+19 WHERE `guid`=20508515;
UPDATE `creature_addon` SET `guid`=@CGUID+23 WHERE `guid`=20508530;