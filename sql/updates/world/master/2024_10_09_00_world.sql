-- rogue orderhall cleanup

SET @CGUID := 600246;

UPDATE `creature` SET `guid`=@CGUID+0 WHERE `guid`=20549873;
UPDATE `creature` SET `guid`=@CGUID+1 WHERE `guid`=20546635;
UPDATE `creature` SET `guid`=@CGUID+2 WHERE `guid`=20549874;
UPDATE `creature` SET `guid`=@CGUID+3 WHERE `guid`=20549875;
UPDATE `creature` SET `guid`=@CGUID+4 WHERE `guid`=20549882;
UPDATE `creature` SET `guid`=@CGUID+5 WHERE `guid`=20549877;
UPDATE `creature` SET `guid`=@CGUID+6 WHERE `guid`=20546692;
UPDATE `creature` SET `guid`=@CGUID+7 WHERE `guid`=20546644;
UPDATE `creature` SET `guid`=@CGUID+8 WHERE `guid`=20546693;
UPDATE `creature` SET `guid`=@CGUID+9 WHERE `guid`=20549881;
UPDATE `creature` SET `guid`=@CGUID+10 WHERE `guid`=20546649;
UPDATE `creature` SET `guid`=@CGUID+11 WHERE `guid`=20546653;
UPDATE `creature` SET `guid`=@CGUID+12 WHERE `guid`=20546659;
UPDATE `creature` SET `guid`=@CGUID+13 WHERE `guid`=20546661;
UPDATE `creature` SET `guid`=@CGUID+14 WHERE `guid`=20546665;
UPDATE `creature` SET `guid`=@CGUID+15 WHERE `guid`=20549885;
UPDATE `creature` SET `guid`=@CGUID+16 WHERE `guid`=20546676;
UPDATE `creature` SET `guid`=@CGUID+17 WHERE `guid`=20546639;
UPDATE `creature` SET `guid`=@CGUID+18 WHERE `guid`=20546624;
UPDATE `creature` SET `guid`=@CGUID+19 WHERE `guid`=20546651;
UPDATE `creature` SET `guid`=@CGUID+20 WHERE `guid`=20549908;
UPDATE `creature` SET `guid`=@CGUID+21 WHERE `guid`=20546652;
UPDATE `creature` SET `guid`=@CGUID+22 WHERE `guid`=20546668;

UPDATE `creature_addon` SET `guid`=@CGUID+0 WHERE `guid`=20549873;
UPDATE `creature_addon` SET `guid`=@CGUID+1 WHERE `guid`=20546635;
UPDATE `creature_addon` SET `guid`=@CGUID+2 WHERE `guid`=20549874;
UPDATE `creature_addon` SET `guid`=@CGUID+3 WHERE `guid`=20549875;
UPDATE `creature_addon` SET `guid`=@CGUID+4 WHERE `guid`=20549882;
UPDATE `creature_addon` SET `guid`=@CGUID+5 WHERE `guid`=20549877;
UPDATE `creature_addon` SET `guid`=@CGUID+6 WHERE `guid`=20546692;
UPDATE `creature_addon` SET `guid`=@CGUID+7 WHERE `guid`=20546644;
UPDATE `creature_addon` SET `guid`=@CGUID+8 WHERE `guid`=20546693;
UPDATE `creature_addon` SET `guid`=@CGUID+9 WHERE `guid`=20549881;
UPDATE `creature_addon` SET `guid`=@CGUID+10 WHERE `guid`=20546649;
UPDATE `creature_addon` SET `guid`=@CGUID+11 WHERE `guid`=20546653;
UPDATE `creature_addon` SET `guid`=@CGUID+12 WHERE `guid`=20546659;
UPDATE `creature_addon` SET `guid`=@CGUID+13 WHERE `guid`=20546661;
UPDATE `creature_addon` SET `guid`=@CGUID+14 WHERE `guid`=20546665;
UPDATE `creature_addon` SET `guid`=@CGUID+15 WHERE `guid`=20549885;
UPDATE `creature_addon` SET `guid`=@CGUID+16 WHERE `guid`=20546676;
UPDATE `creature_addon` SET `guid`=@CGUID+17 WHERE `guid`=20546639;
UPDATE `creature_addon` SET `guid`=@CGUID+18 WHERE `guid`=20546624;
UPDATE `creature_addon` SET `guid`=@CGUID+19 WHERE `guid`=20546651;
UPDATE `creature_addon` SET `guid`=@CGUID+20 WHERE `guid`=20549908;
UPDATE `creature_addon` SET `guid`=@CGUID+21 WHERE `guid`=20546652;
UPDATE `creature_addon` SET `guid`=@CGUID+22 WHERE `guid`=20546668;