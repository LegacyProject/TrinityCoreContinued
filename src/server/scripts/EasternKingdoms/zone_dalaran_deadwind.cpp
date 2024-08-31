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

#include "ScriptMgr.h"
#include "PhasingHandler.h"
#include "Player.h"

enum BlinkOfAnEye
{
    MAP_BROKEN_ISLES                = 1220,
    KILL_CREDIT_TELEPORT_DALARAN    = 114506,
};

class scene_dalaran_teleport : public SceneScript
{
public:
    scene_dalaran_teleport() : SceneScript("scene_dalaran_teleport") { }

    // Called when a scene is canceled
    void OnSceneCancel(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* /*sceneTemplate*/) override
    {
        player->TeleportTo(MAP_BROKEN_ISLES, -827.82f, 4369.25f, 738.64f, 1.893364f);
        player->KilledMonsterCredit(KILL_CREDIT_TELEPORT_DALARAN);
        PhasingHandler::OnConditionChange(player);
    }

    // Called when a scene is completed
    void OnSceneComplete(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* /*sceneTemplate*/) override
    {
        player->TeleportTo(MAP_BROKEN_ISLES, -827.82f, 4369.25f, 738.64f, 1.893364f);
        player->KilledMonsterCredit(KILL_CREDIT_TELEPORT_DALARAN);
        PhasingHandler::OnConditionChange(player);
    }
};

void AddSC_dalaran_deadwind()
{
    // new scene_dalaran_teleport();
}
