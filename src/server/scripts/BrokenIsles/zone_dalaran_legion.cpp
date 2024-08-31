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

enum OrderHallSpells
{
	SPELL_SUMMON_WARRIOR_HORDE    = 216443, 
    SPELL_SUMMON_WARRIOR_ALLIANCE = 216497, 
    SPELL_SUMMON_PALADIN          = 190886,
    SPELL_SUMMON_HUNTER           = 196908,
    SPELL_SUMMON_ROGUE            = 201208,
    SPELL_SUMMON_PRIEST_HORDE     = 226409,
    SPELL_SUMMON_PRIEST_ALLIANCE  = 226412,
    SPELL_SUMMON_SHAMAN           = 227324,
    SPELL_SUMMON_WARLOCK          = 204860,
    SPELL_SUMMON_MONK             = 193978,
    SPELL_SUMMON_DRUID            = 199277,
    SPELL_SUMMON_DH               = 195286
};

void AddSC_dalaran_legion()
{

}
