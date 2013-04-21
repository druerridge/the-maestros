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
		layer     = -10,
		enabled   = true  --  loaded by default?
	}
end

VFS.Include("LuaRules/Gadgets/cmd_index.lua",nil)

local herpderp = {
	{2000, 5, 2000, 700},
}

local function SetBuildoptionDisabled(unitDefID, teamID, disable)
  local teamUnits = Spring.GetTeamUnits(teamID)
  for i = 1, #teamUnits do
    local unitID = teamUnits[i]
    local cmdDescID = Spring.FindUnitCmdDesc(unitID, -unitDefID)
    if cmdDescID then
      Spring.EditUnitCmdDesc(unitID, cmdDescID, {disabled = disable})
    end
  end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

-- synced only
if (not gadgetHandler:IsSyncedCode()) then	
	return false
end

--local merchantreqs = VFS.Include("LuaRules/Configs/merchant_defs.lua")

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--local modOptions = Spring.GetModOptions()

--define new icon
if (gadgetHandler:IsSyncedCode()) then

	--define new icon
	local desc = {
		name = "Transform",
		action = "dgun",
		id = CMD_CHANGECLASS,
		type = CMDTYPE.ICON_UNIT,
		tooltip = "Changes unit type",
		cursor = "Capture",
		hidden = false,
		disabled = false,
	}
	
	--adds icon to units upon unit creation
	function gadget:UnitCreated(u, ud, team)
		--Spring.Echo("ccUnitCreated()")
		--perform check to see if transformation is target is set for unit before adding icon
		if UnitDefs[Spring.GetUnitDefID(u)]["customParams"]["transform"] ~= nil then
			Spring.InsertUnitCmdDesc(u,desc)
		end
	end

	function gadget:AllowCommand(u, ud, team, cmd, param, opt)
		--Spring.Echo("ccAllowCommand()")
		--Spring.Echo(Spring.GetUnitDefID(u))
		--[[ TURNED OFF FOR PITCH-DOC BUILD, REINSTATE FOR FINAL PITCH BUILD 
			
		if ud == 3 then
			local merchx, merchy, merchz = Spring.GetUnitPosition(u)
			local merchdist = math.sqrt((herpderp[1][1] - merchx)*(herpderp[1][1] - merchx) + (herpderp[1][2] - merchy)*(herpderp[1][2] - merchy) + (herpderp[1][3] - merchz)*(herpderp[1][3] - merchz))
			
			if merchdist < herpderp[1][4] then
				--Spring.Echo("in area")
				SetBuildoptionDisabled(3, team, false)
			else
				--Spring.Echo(merchdist)
				SetBuildoptionDisabled(3, team, true)
			end
		end
		
		]]

		--parse command
		if cmd == CMD_CHANGECLASS then
			--validate target selection
			if param[1] and Spring.ValidUnitID(param[1]) then
				--check if target belongs to player
				if Spring.GetUnitTeam(param[1]) == team then
					--if transform and build requirements meet,
					if UnitDefs[Spring.GetUnitDefID(u)]["customParams"]["buildpermit"] == UnitDefs[Spring.GetUnitDefID(param[1])]["customParams"]["buildreq"] then
						--queue command to be executed
						return true
					end
				end
			end
			return false
		end
		return true
	end
	--perform command
	function gadget:CommandFallback(u,ud,team,cmd,param,opt)
		--Spring.Echo("ccCommandFallback()")
		if cmd == CMD_CHANGECLASS then
			--calculate location of target
			local x,y,z = Spring.GetUnitPosition(u)
			local targetx, targety, targetz
			targetx, targety, targetz = Spring.GetUnitPosition(param[1])
			local distance = math.sqrt((x - targetx)*(x - targetx) + (y - targety)*(y - targety) + (z - targetz)*(z - targetz))
			
			if distance > (Spring.GetUnitRadius(u) + 50) then
				--move to target
				Spring.SetUnitMoveGoal(u, targetx, targety, targetz)
				return true, false
			else
				--at target, swap out units
				
				--so the way transform cost works is that costs are defined in the unit being transformed
				--there is an entry in customparam with the index that is the defname of the target of the transformation
				--the value of that entry is cost
				--lack of such an entry makes transformation impossible
				if(Spring.UseTeamResource(team, "metal", UnitDefs[ud]["customParams"][UnitDefs[Spring.GetUnitDefID(param[1])]["customParams"]["modify"]])) then
					local newUnitID = Spring.CreateUnit(UnitDefs[Spring.GetUnitDefID(param[1])]["customParams"]["modify"], x, y, z, Spring.GetUnitBuildFacing(u), team)
					x,y,z = Spring.GetUnitDirection(u)
					Spring.SetUnitDirection(newUnitID, x, y, z)
					Spring.DestroyUnit(u, false, true)
					return true, true
				end
			end
		end
		return false
	end

else
	--async initialization, no idea what this does at all
	function gadget:Initialize()
		--Spring.Echo("ccInitialize()")
		Spring.SetCustomCommandDrawData(CMD_CHANGECLASS, "Capture",{1,.5,.5,.9})
	end

end