-- Alliance Garrison Level 1 Terrainswap Condition

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=25 AND `SourceEntry`=1158;
INSERT INTO `conditions` VALUES
(25, 0, 1158, 0, 0, 28, 0, 34586, 0, 0, 0, 0, 0, '', 'Terrainwap: Establish Your Garrison when rewarded quest 34586'),
(25, 0, 1158, 0, 0, 8, 0, 34586, 0, 0, 0, 0, 0, '', 'Terrainwap: Establish Your Garrison when complete quest 34586');