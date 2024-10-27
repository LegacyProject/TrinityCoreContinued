-- Add phase 8430 to spawns in mage orderhall part 2

-- Spawn
UPDATE `creature` SET `PhaseId`=8430 WHERE `guid` IN (600172, 600173, 600177, 600176, 600174, 600178, 600179, 600180,
600100, 600095, 600110, 600115);

