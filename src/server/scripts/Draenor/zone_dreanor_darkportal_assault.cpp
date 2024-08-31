/*
* This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
*
* This program is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License as published by the
* Free Software Foundation; either version 2 of the License, or (at your
* option) any later version.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
* more details.
*
* You should have received a copy of the GNU General Public License along
* with this program. If not, see <http://www.gnu.org/licenses/>.
*/

#include "GameObject.h"
#include "GameObjectAI.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "PhasingHandler.h"
#include "QuestDef.h"
#include "ScriptedCreature.h"
#include "ScriptMgr.h"
#include "SceneMgr.h"
#include "Chat.h"
#include "Unit.h"

enum Creatures
{
    // Dark Portal
    NPC_ARCHMAGE_KHADGAR_1              = 78558,
    NPC_THAELIN_DARKANVIL               = 78568,
    NPC_HANSEL_HEAVYHANDS               = 78569,
    NPC_TERONGOR                        = 81696,
    NPC_CHOGALL                         = 81695,
    NPC_KHADGAR_SHIELD_TARGET_DUMMY     = 82305,
    NPC_GULDAN                          = 78333,
};

enum KillCredits
{
    CREDIT_ENTER_GULDAN_PRISON          = 82573,
};

enum CreatureText
{
    // Dark Portal
    SAY_KHADGAR_FIRST_LINE              = 0,
    SAY_KHADGAR_SECOND_LINE             = 1,
    SAY_KHADGAR_THIRD_LINE              = 2,
    SAY_KHADGAR_FOURTH_LINE             = 3,
    SAY_KHADGAR_FIFTH_LINE              = 4,

    SAY_THAELIN_FIRST_LINE              = 0,
    SAY_HANSEL_FIRST_LINE               = 0,
};

enum Quests
{
    // Dark Portal
    QUEST_THE_DARK_PORTAL               = 34398,
    QUEST_ONSLAUGHTS_END                = 34392,
    QUEST_THE_PORTALS_POWER             = 34393,
    QUEST_AZEROTHS_LAST_STAND           = 35933,
};

enum Objectives
{
    OBJ_SOUTHERN_SPIRE_DISABLED         = 273946,
    OBJ_NORTHERN_SPIRE_DISABLED         = 272621,
};

enum Scenes
{
    // Dark Portal
    SCENE_CHOGALL_FREED                 = 961,
    SCENE_TERONGOR_FREED                = 962,
    SCENE_DETONATION                    = 937,
    SCENE_GULDAN_REVEAL                 = 925,
    SCENE_GULDAN_FREED                  = 808,
};

enum Spells
{
    // Dark Portal
    SPELL_ARCANE_AEGIS                  = 165667,
    SPELL_INCOMING_CAPSULE              = 165666,
    SPELL_DARK_PORTAL_RUN_AWAY          = 158985,

    // Scene Auras
    SPELL_THAELIN_EVENT_AURA            = 164677,
    SPELL_HANSEL_EVENT_AURA             = 167689,

};

enum Etc
{
    MAP_TANAAN_JUNGLE = 1265,
};

class npc_archmage_khadgar_78558 : public CreatureScript
{
public:
    npc_archmage_khadgar_78558() : CreatureScript("npc_archmage_khadgar_78558") {}

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest) override
    {
        switch (quest->GetQuestId())
        {
        case QUEST_AZEROTHS_LAST_STAND:
            if (creature->IsAIEnabled)
                creature->AI()->Talk(SAY_KHADGAR_FIRST_LINE, player);
            break;

        case QUEST_THE_PORTALS_POWER:
            if (creature->IsAIEnabled)
                creature->AI()->Talk(SAY_KHADGAR_FIFTH_LINE, player);
            break;

        default:
            break;
        }
        return true;
    }

    struct npc_archmage_khadgar_78558AI : public ScriptedAI
    {
        npc_archmage_khadgar_78558AI(Creature* creature) : ScriptedAI(creature) {}

        uint32 BarrierTimer = 0;
        Creature* PrevIter = nullptr;
        std::list<Creature*> NpcList;

        void UpdateAI(uint32 const diff) override
        {
            if (BarrierTimer <= diff)
            {
                if (NpcList.empty())
                {
                    me->GetCreatureListWithEntryInGrid(NpcList, NPC_KHADGAR_SHIELD_TARGET_DUMMY, 80.0f);
                    BarrierTimer = 10 * IN_MILLISECONDS;
                }
                else
                {
                    for (Creature* creature : NpcList)
                    {
                        if (creature->GetDistance2d(me) <= 20.0f)
                        {
                            me->CastSpell(creature, SPELL_ARCANE_AEGIS, true);
                            PrevIter = creature;
                        }
                        else
                        {
                            if (PrevIter)
                                creature->CastSpell(PrevIter, SPELL_INCOMING_CAPSULE, true);
                        }
                    }
                    BarrierTimer = 60 * IN_MILLISECONDS;
                }
            }
            else BarrierTimer -= diff;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_archmage_khadgar_78558AI(creature);
    }
};

class npc_thaelin_darkanvil_78568 : public CreatureScript
{
public:
    npc_thaelin_darkanvil_78568() : CreatureScript("npc_thaelin_darkanvil_78568") {}

    struct npc_thaelin_darkanvil_78568AI : public ScriptedAI
    {
        npc_thaelin_darkanvil_78568AI(Creature* creature) : ScriptedAI(creature)
        {
            trigger = false;
        }

        bool trigger;

        void MoveInLineOfSight(Unit* who) override
        {
            if (Player* player = who->ToPlayer())
            {
                if (!me->IsWithinDistInMap(player, 15.0f))
                    return;

                if (player->GetQuestStatus(QUEST_ONSLAUGHTS_END) == QUEST_STATUS_INCOMPLETE)
                {
                    if (!trigger)
                    {
                        Talk(SAY_THAELIN_FIRST_LINE, player);
                        player->GetSceneMgr().PlaySceneByPackageId(SCENE_DETONATION);
                        trigger = true;
                    }
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_thaelin_darkanvil_78568AI(creature);
    }
};

class npc_hansel_heavyhands_78569 : public CreatureScript
{
public:
    npc_hansel_heavyhands_78569() : CreatureScript("npc_hansel_heavyhands_78569") {}

    struct npc_hansel_heavyhands_78569AI : public ScriptedAI
    {
        npc_hansel_heavyhands_78569AI(Creature* creature) : ScriptedAI(creature)
        {
            trigger = false;
        }

        bool trigger;

        void MoveInLineOfSight(Unit* who) override
        {
            if (Player* player = who->ToPlayer())
            {
                if (!me->IsWithinDistInMap(player, 15.0f))
                    return;

                if (player->GetQuestStatus(QUEST_ONSLAUGHTS_END) == QUEST_STATUS_INCOMPLETE)
                {
                    if (!trigger)
                    {
                        Talk(SAY_HANSEL_FIRST_LINE, player);
                        player->GetSceneMgr().PlaySceneByPackageId(SCENE_DETONATION);
                        trigger = true;
                    } 
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_hansel_heavyhands_78569AI(creature);
    }
};

// Place Holder for Onslaught's End

// Place Holder End

class npc_gul_dan_78333 : public CreatureScript
{
public:
    npc_gul_dan_78333() : CreatureScript("npc_gul_dan_78333") {}

    struct npc_gul_dan_78333AI : public ScriptedAI
    {
        npc_gul_dan_78333AI(Creature* creature) : ScriptedAI(creature)
        {
            scene = false;
        }

        bool scene;

        void MoveInLineOfSight(Unit* who) override
        {
            Player* player = who->ToPlayer();
            if (!player)
                return;

            if (player->GetDistance2d(me) >= 40.0f)
                return;

            if (player->GetPositionZ() - 5.0f > me->GetPositionZ())
                return;

            if (!scene)
            {
                player->KilledMonsterCredit(CREDIT_ENTER_GULDAN_PRISON);
                player->GetSceneMgr().PlaySceneByPackageId(SCENE_GULDAN_REVEAL);
                scene = true;
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_gul_dan_78333AI(creature);
    }
};

// 237670 - Dark Portal
class go_dark_portal : public GameObjectScript
{
public:
    go_dark_portal() : GameObjectScript("go_dark_portal") { }

    struct go_dark_portalAI : public GameObjectAI
    {
        go_dark_portalAI(GameObject* p_Go) : GameObjectAI(p_Go) { }

        void Reset() override
        {
            go->SetGoState(GO_STATE_ACTIVE);
            go->SetLootState(GO_ACTIVATED);
        }

    };

    GameObjectAI* GetAI(GameObject* p_Go) const override
    {
        return new go_dark_portalAI(p_Go);
    }
};

class scene_dark_portal_run_away : public SceneScript
{
public:
    scene_dark_portal_run_away() : SceneScript("scene_dark_portal_run_away") { }

    void OnSceneComplete(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* /*sceneTemplate*/) override
    {
        player->RemoveAurasDueToSpell(SPELL_DARK_PORTAL_RUN_AWAY);
        PhasingHandler::OnConditionChange(player);
    }
};

void AddSC_zone_draenor_darkportal_assault()
{
    new npc_archmage_khadgar_78558();
    new npc_thaelin_darkanvil_78568();
    new npc_hansel_heavyhands_78569();
    new npc_gul_dan_78333();
    new go_dark_portal();
};
