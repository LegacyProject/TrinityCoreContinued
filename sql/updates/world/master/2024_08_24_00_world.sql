-- add scripts to scene & quest templates

UPDATE `scene_template` SET `ScriptName` = 'scene_dark_portal_run_away' WHERE `SceneId`=621;

DELETE FROM `quest_template_addon` WHERE `ID`=34420;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES
(34420, 0, 0, 0, 34393, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'quest_the_cost_of_war');