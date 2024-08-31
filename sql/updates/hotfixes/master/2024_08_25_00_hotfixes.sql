CREATE TABLE IF NOT EXISTS `adventure_map_p_o_i` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Title` text,
  `Description` text,
  `WorldPosition1` float NOT NULL DEFAULT '0',
  `WorldPosition2` float NOT NULL DEFAULT '0',
  `RewardItemID` int(11) NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int(11) NOT NULL DEFAULT '0',
  `QuestID` int(11) NOT NULL DEFAULT '0',
  `LfgDungeonID` int(11) NOT NULL DEFAULT '0',
  `UiTextureAtlasMemberID` int(11) NOT NULL DEFAULT '0',
  `UiTextureKitID` int(11) NOT NULL DEFAULT '0',
  `WorldMapAreaID` int(11) NOT NULL DEFAULT '0',
  `DungeonMapID` int(11) NOT NULL DEFAULT '0',
  `AreaTableID` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `adventure_map_p_o_i_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Title_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;