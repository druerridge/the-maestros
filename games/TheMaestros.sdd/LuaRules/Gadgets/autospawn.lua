--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    unit_class_change.lua
--  brief:   changes class of unit
--  author:  Ruben Zhang
--  referencing Mine Clearance 2010 by FLOZi
--
--  Copyright (C) 2012.
--  Licensed under the terms of the GNU GPL, v2 or later.
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function gadget:GetInfo()
	return {
		name      = "Auto Spawn",
		desc      = "Automatically spawns base units from the commander",
		author    = "Dru Erridge",
		date      = "Apr, 2013",
		license   = "GNU GPL, v2 or later",
		layer     = -10,
		enabled   = true  --  loaded by default?
	}
end

VFS.Include("LuaRules/Gadgets/cmd_index.lua",nil)

local herpderp = {
	{2000, 5, 2000, 700},
}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--Synced Code
if (gadgetHandler:IsSyncedCode()) then

	local cost = 100

	function gadget:GameFrame(f)
		--Spawns a PLAID every once in a while
		if f%450 < .1 then
			local allUnits = Spring.GetAllUnits()
			for i = 1, #allUnits do
				local u = allUnits[i]
				local ud = Spring.GetUnitDefID(u)
				local team = Spring.GetUnitTeam(u)
				-- id 3 == Garage
				if ud == 3 then
					local x, y, z = Spring.GetUnitPosition(u)

					local hadEnough = Spring.UseTeamResource(team, "metal", cost)

					if (hadEnough == true) then
						-- Create a PLAID
						Spring.CreateUnit("plaid", x, y, z+5, 1, team)
						-- Make him follow your commander

					else
						Spring.Echo("Insufficient Resources to spawn a PLAID")
					end

				end
			end
		end
	end
else
	--async initialization, no idea what this does at all
	function gadget:Initialize()
		
		--get the unit's cost from the unitdef
		-- id 2 == PLAID			
		--cost = UnitDefs[2]["BuildCostMetal"] 
	end

end