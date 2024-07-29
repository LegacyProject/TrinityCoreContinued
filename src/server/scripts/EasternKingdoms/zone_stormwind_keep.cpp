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
#include "Player.h"
#include "PhasingHandler.h"

enum DemonsAmongUs
{
	KILL_CREDIT_GOSSIP_SELECTED = 111585,
};

class scene_demons_among_us_alliance : public SceneScript
{
public:
    scene_demons_among_us_alliance() : SceneScript("scene_demons_among_us_alliance") { }
	
	// Called when a scene is canceled
	void OnSceneCancel(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* /*sceneTemplate*/) override
    {
        player->KilledMonsterCredit(KILL_CREDIT_GOSSIP_SELECTED);
        PhasingHandler::OnConditionChange(player);
    }

    // Called when a scene is completed
    void OnSceneComplete(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* /*sceneTemplate*/) override
    {
        player->KilledMonsterCredit(KILL_CREDIT_GOSSIP_SELECTED);
        PhasingHandler::OnConditionChange(player);
    }
};

void AddSC_stormwind_keep()
{
	new scene_demons_among_us_alliance();
}
