--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    merchant.lua
--  brief:   merchant shop/build area restriction
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
		name      = "Merchant",
		desc      = "build area restriction",
		author    = "Ruben Zhang",
		date      = "March, 2012",
		license   = "GNU GPL, v2 or later",
		layer     = -7,
		enabled   = true  --  loaded by default?
	}
end

--VFS.Include("LuaRules/Gadgets/cmd_index.lua",nil)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

-- synced only
--if (not gadgetHandler:IsSyncedCode()) then
	--return false
--end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--local modOptions = Spring.GetModOptions()

if (gadgetHandler:IsSyncedCode()) then

	function gadget:Update()
		Spring.Echo("mtUpdate()")
	end
	
	function gadget:UnitEnteredLos(u, t)
		Spring.Echo("mtUnitEnteredLos()")
	end
	
	function gadget:UnitCreated(u, ud, team)
		Spring.Echo("mtUnitCreated()")
	end
	
	function gadget:AllowCommand(u, ud, team, cmd, param, opt)
		Spring.Echo("mtAllowCommand()")
	end

	function gadget:UnitEnteredRadar(u, team) --arguments unitID, unitTeam, allyTeam, unitDefID
		Spring.Echo("mtUnitEnteredRadar()")
		if UnitDefs[Spring.GetUnitDefID(u)]["customParams"]["buildpermit"] == "t0" then
			local neutrals = Spring.GetTeamUnits(Spring.GetGaiaTeamID())
			local i, v
			local x,y,z = Spring.GetUnitPosition(u)
			local tx, ty, tz
			for i,v in ipairs(neutrals) do
				tx, ty, tz = Spring.GetUnitPosition(v)
				--if other neutral objects get added, this could horribly break
				if Spring.GetUnitSensorRadius(v, "radar") > math.sqrt((x-tx) * (x-tx) + (y-ty) * (y-ty) + (z-tz) * (z-tz)) then
				--check and/or make flag unit
				else
				--well this is impossible under the unit entered radar
				--check and remove flag unit
				end
			end
		end
	end
	function gadget:UnitLeftRadar(u, team) --arguments unitID, unitTeam, allyTeam, unitDefID
		Spring.Echo("mtUnitLeftRadar()")
	end
end
else
		
	function gadget:Initialize()
		--Spring.SetCustomCommandDrawData(CMD_CHANGECLASS, "Capture",{1,.5,.5,.9})
	end

end