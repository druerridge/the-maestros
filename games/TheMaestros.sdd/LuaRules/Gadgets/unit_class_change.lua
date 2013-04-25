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
		--perform check to see if transformation is target is set for unit before adding icon
		if UnitDefs[Spring.GetUnitDefID(u)]["customParams"]["transform"] ~= nil then
			Spring.InsertUnitCmdDesc(u,desc)
		end
	end
	
	function gadget:GameFrame(f)
		local allUnits = Spring.GetAllUnits()
		for i = 1, #allUnits do
			local u = allUnits[i]
			local ud = Spring.GetUnitDefID(u)
			local team = Spring.GetUnitTeam(u)
			if ud == 4 then
				local merchx, merchy, merchz = Spring.GetUnitPosition(u)
				local merchdist = math.sqrt((herpderp[1][1] - merchx)*(herpderp[1][1] - merchx) + (herpderp[1][2] - merchy)*(herpderp[1][2] - merchy) + (herpderp[1][3] - merchz)*(herpderp[1][3] - merchz))
				--access unitdef table with unitDef.member
				if merchdist < herpderp[1][4] then
					--Spring.Echo("in area")
					SetBuildoptionDisabled(4, team, false)
				else
					--Spring.Echo(merchdist)
					SetBuildoptionDisabled(4, team, true)
				end
			end
		end
		
		local team1units = Spring.GetTeamUnitsByDefs(0, {5, 7})
		for i = 1, #team1units do
			local x, y, z = Spring.GetUnitPosition(team1units[i])
			local nearby = Spring.GetUnitsInSphere(x, y, z, 500)
			local t1count = 0
			local t2count = 0
			for j = 1, #nearby do
				if Spring.GetUnitDefID(nearby[j]) ~= 5 and Spring.GetUnitDefID(nearby[j]) ~= 7 then
					if Spring.GetUnitTeam(nearby[j]) == 0 then
						t1count = t1count + 1
					elseif Spring.GetUnitTeam(nearby[j]) == 1 then
						t2count = t2count + 1
					end
				end
			end
			Spring.Echo(t1count)
			Spring.Echo(t2count)
			if(t2count > t1count) then
				Spring.TransferUnit(team1units[i], 1)
			end
		end
		local team2units = Spring.GetTeamUnitsByDefs(1, {5, 7})
		for i = 1, #team2units do
			local x, y, z = Spring.GetUnitPosition(team2units[i])
			local nearby = Spring.GetUnitsInSphere(x, y, z, 500)
			local t1count = 0
			local t2count = 0
			for j = 1, #nearby do
				if Spring.GetUnitDefID(nearby[j]) ~= 5 and Spring.GetUnitDefID(nearby[j]) ~= 7 then
					if Spring.GetUnitTeam(nearby[j]) == 0 then
						t1count = t1count + 1
					elseif Spring.GetUnitTeam(nearby[j]) == 1 then
						t2count = t2count + 1
					end
				end
			end
			Spring.Echo(t1count)
			Spring.Echo(t2count)
			if(t1count > t2count) then
				Spring.TransferUnit(team2units[i], 0)
			end			
		end
	end

	function gadget:AllowCommand(u, ud, team, cmd, param, opt)
				--parse command
		if cmd == -3 then
			local merchdist = math.sqrt((herpderp[1][1] - param[1])*(herpderp[1][1] - param[1]) + (herpderp[1][2] - param[2])*(herpderp[1][2] - param[2]) + (herpderp[1][3] - param[3])*(herpderp[1][3] - param[3]))
			--access unitdef table with unitDef.member
			if merchdist < herpderp[1][4] then
				--Spring.Echo("in area")
				return true
			else
				--Spring.Echo(merchdist)
				return false
			end
		end
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
					local rx,ry,rz = Spring.GetUnitDirection(u)
					local heading = Spring.GetUnitBuildFacing(u)
					Spring.DestroyUnit(u, false, false)
					local newUnitID = Spring.CreateUnit(UnitDefs[Spring.GetUnitDefID(param[1])]["customParams"]["modify"], x, y, z, heading, team)
					Spring.SetUnitDirection(newUnitID, rx, ry, rz)
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