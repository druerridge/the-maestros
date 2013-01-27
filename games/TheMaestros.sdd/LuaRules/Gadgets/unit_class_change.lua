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
		name      = "Unit Change",
		desc      = "changes classes of units",
		author    = "Ruben Zhang",
		date      = "January, 2012",
		license   = "GNU GPL, v2 or later",
		layer     = 0,
		enabled   = true  --  loaded by default?
	}
end

VFS.Include("LuaRules/Gadgets/cmd_index.lua",nil)

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

	local desc = {
		name = "Change Class",
		action = "dgun",
		id = CMD_CHANGECLASS,
		type = CMDTYPE.ICON_UNIT,
		tooltip = "Changes unit class",
		cursor = "Capture",
		disabled = false
	}
		
	function gadget:UnitCreated(u, ud, team)
		if UnitDefs[Spring.GetUnitDefID(u)]["customParams"]["transform"] ~= nil then
			Spring.InsertUnitCmdDesc(u,desc)
		end
	end

	function gadget:AllowCommand(u, ud, team, cmd, param, opt)
		if cmd == CMD_CHANGECLASS then
			if param[1] and Spring.ValidUnitID(param[1]) then
				if Spring.GetUnitTeam(param[1]) == team then
					if UnitDefs[Spring.GetUnitDefID(u)]["customParams"]["transform"] == UnitDefs[Spring.GetUnitDefID(param[1])]["customParams"]["modify"] then
					--Spring.Echo("AllowCommand")
						return true
					end
				end
			end
			return false
		end
		return true
	end

	function gadget:CommandFallback(u,ud,team,cmd,param,opt)
		if cmd == CMD_CHANGECLASS then
			local x,y,z = Spring.GetUnitPosition(u)
			local targetx, targety, targetz
			targetx, targety, targetz = Spring.GetUnitPosition(param[1])
			local distance = math.sqrt((x - targetx)*(x - targetx) + (y - targety)*(y - targety) + (z - targetz)*(z - targetz))
			if distance > 200 then
				Spring.SetUnitMoveGoal(u, targetx, targety, targetz)
			--Spring.Echo("moving")
				return true, false
			else
				local newUnitID = Spring.CreateUnit(UnitDefs[Spring.GetUnitDefID(u)]["customParams"]["transform"], x, y, z, Spring.GetUnitBuildFacing(u), team)
				x,y,z = Spring.GetUnitDirection(u)
				Spring.SetUnitDirection(newUnitID, x, y, z)
				Spring.DestroyUnit(u, false, true)
			--Spring.Echo("action complete")
				return true, true
			end
		end
		return false
	end

else
		
	function gadget:Initialize()
		Spring.SetCustomCommandDrawData(CMD_CHANGECLASS, "Capture",{1,.5,.5,.9})
	end

end