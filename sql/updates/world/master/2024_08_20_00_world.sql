-- mage orderhall cleanup

SET @CGUID := 600169;

UPDATE `creature` SET `guid`=@CGUID+0 WHERE `guid`=20540812;
UPDATE `creature` SET `guid`=@CGUID+1 WHERE `guid`=20540820;
UPDATE `creature` SET `guid`=@CGUID+2 WHERE `guid`=20540828;
UPDATE `creature` SET `guid`=@CGUID+3 WHERE `guid`=20540837;
UPDATE `creature` SET `guid`=@CGUID+4 WHERE `guid`=20540821;
UPDATE `creature` SET `guid`=@CGUID+5 WHERE `guid`=20540840;
UPDATE `creature` SET `guid`=@CGUID+6 WHERE `guid`=20540835;
UPDATE `creature` SET `guid`=@CGUID+7 WHERE `guid`=20540832;
UPDATE `creature` SET `guid`=@CGUID+8 WHERE `guid`=20540827;
UPDATE `creature` SET `guid`=@CGUID+9 WHERE `guid`=20540816;
UPDATE `creature` SET `guid`=@CGUID+10 WHERE `guid`=20540836;
UPDATE `creature` SET `guid`=@CGUID+11 WHERE `guid`=20540842;

UPDATE `creature_addon` SET `guid`=@CGUID+0 WHERE `guid`=20540812;
UPDATE `creature_addon` SET `guid`=@CGUID+1 WHERE `guid`=20540820;
UPDATE `creature_addon` SET `guid`=@CGUID+2 WHERE `guid`=20540828;
UPDATE `creature_addon` SET `guid`=@CGUID+3 WHERE `guid`=20540837;
UPDATE `creature_addon` SET `guid`=@CGUID+4 WHERE `guid`=20540821;
UPDATE `creature_addon` SET `guid`=@CGUID+5 WHERE `guid`=20540840;
UPDATE `creature_addon` SET `guid`=@CGUID+6 WHERE `guid`=20540835;
UPDATE `creature_addon` SET `guid`=@CGUID+7 WHERE `guid`=20540832;
UPDATE `creature_addon` SET `guid`=@CGUID+8 WHERE `guid`=20540827;
UPDATE `creature_addon` SET `guid`=@CGUID+9 WHERE `guid`=20540816;
UPDATE `creature_addon` SET `guid`=@CGUID+10 WHERE `guid`=20540836;
UPDATE `creature_addon` SET `guid`=@CGUID+11 WHERE `guid`=20540842;
