SET @CGUID := 400000;

-- Update existing spawn
UPDATE `creature` SET `guid`=@CGUID+0, `PhaseId`=1687 WHERE `guid`=10645558;

UPDATE `creature_template` SET `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=55789; -- Rell Nightwind

-- Phasing
DELETE FROM `phase_area` WHERE `AreaId` = 1519 AND `PhaseId` = 1687;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(1519, 1687, 'Cosmetic - See Rell Nightwind');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 1687 AND `SourceEntry` = 1519);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 1687, 1519, 0, 0, 47, 0, 29547, 2 | 64, 0, 0, 'Allow Phase 1687 if Quest (29547) IS Completed | Rewarded');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 130805);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(17, 0, 130805, 0, 0, 47, 0, 29547, 2, 0, 1, 'Cast Spell 130805 if Quest (29547) IS NOT Completed');

-- Quest
DELETE FROM `quest_template_addon` WHERE `ID` = 29548;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES
(29548, 0, 0, 0, 29547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `quest_offer_reward` WHERE `ID`=29547;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(29547, 396, 0, 0, 0, 0, 0, 0, 0, 'Greetings, $n.', 43345); -- Mists of Pandaria: To Pandaria!

DELETE FROM `creature_questender` WHERE (`id`=55789 AND `quest`=29547);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(55789, 29547); -- The King's Command

DELETE FROM `creature_queststarter` WHERE (`id`=55789 AND `quest`=29548);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(55789, 29548); -- The Mission

-- Spell Area (Scene)
DELETE FROM `spell_area` WHERE `spell`=130805 AND `area`=6292 AND `quest_start`=29547;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(130805, 6292, 29547, 0, 0, 18875469, 2, 1, 8, 1); -- MoP: Alliance Intro Movie PLAY (MoveID 119)

