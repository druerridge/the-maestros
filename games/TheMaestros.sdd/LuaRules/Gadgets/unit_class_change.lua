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
		type = CMDTYPE.ICON_UNIT_FEATURE_OR_AREA,
		tooltip = "Changes unit type",
		cursor = "Capture",
		hidden = false,
		disabled = false,
	}
	
	--globals
	local transformLocations = {}
	local captureDistance = 350


	--adds icon to units upon unit creation
	function gadget:UnitCreated(u, ud, team)
		--perform check to see if transformation is target is set for unit before adding icon
		if UnitDefs[Spring.GetUnitDefID(u)]["customParams"]["transform"] ~= nil then
			Spring.InsertUnitCmdDesc(u,desc)
		end
	end
	
	function gadget:GameFrame(f)
		--Spring.Echo("In GameFrame")
		
		for i = 1, #transformLocations do
			local x, y, z = Spring.GetFeaturePosition(transformLocations[i])
			local nearby = Spring.GetUnitsInSphere(x, y, z, captureDistance)
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

			if(t2count > t1count) then
				Spring.TransferFeature(transformLocations[i], 1)
			elseif (t2count < t1count) then
				Spring.TransferFeature(transformLocations[i], 0)
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
			if param[1] ~= nil then
				local fID = param[1] - Game.maxUnits
				if (fID > 0) then
					-- Check if its one of our things
					Spring.Echo("ID: ", fID)
					return true
				end
			end
			return false
		end

--[[
		if cmd == CMD_CHANGECLASS then
			for i = 1, #param do
				Spring.Echo("param ",i," = ",param[i])
			end
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

]]
		return true
	end

	--perform command
	function gadget:CommandFallback(u,ud,team,cmd,param,opt)
		--Spring.Echo("ccCommandFallback()")
		
		if cmd == CMD_CHANGECLASS then
			local t = Spring.GetUnitTeam(u)
			
			local fID = param[1] - Game.maxUnits
			local x,y,z = Spring.GetUnitPosition(u)
			local targetx, targety, targetz
			targetx, targety, targetz = Spring.GetFeaturePosition(fID)
			local distance = math.sqrt((x - targetx)*(x - targetx) + (y - targety)*(y - targety) + (z - targetz)*(z - targetz))
			
			if distance > (Spring.GetUnitRadius(u) + 50) then
				--move to target
				Spring.SetUnitMoveGoal(u, targetx, targety, targetz)
				return true, false
			else
				local rx,ry,rz = Spring.GetUnitDirection(u)
				local heading = Spring.GetUnitBuildFacing(u)
				Spring.DestroyUnit(u, false, true)


				local fdID = Spring.GetFeatureDefID(fID)
				if fdID == FeatureDefNames["hangar"].id then
					-- make Copter
					local newUnitID = Spring.CreateUnit("copter", x, y, z, heading, t)
					Spring.SetUnitDirection(newUnitID, rx, ry, rz)
					return true, true

				elseif fdID == FeatureDefNames["scissormaker"].id then
					-- make an Edward
					local newUnitID = Spring.CreateUnit("edward", x, y, z, heading, t)
					Spring.SetUnitDirection(newUnitID, rx, ry, rz)
					return true, true
				end
			end
		end
		return false
	end

	function gadget:Initialize()
		Spring.SetCustomCommandDrawData(CMD_CHANGECLASS, "Capture",{1,.5,.5,.9})

	    local allFeatures = Spring.GetAllFeatures()
	    for i = 1, #allFeatures do
	        local ff = allFeatures[i]
	        local fd = Spring.GetFeatureDefID(ff)
	        if (fd == FeatureDefNames["hangar"].id or fd == FeatureDefNames["scissormaker"].id) then
	            transformLocations[#transformLocations + 1] = ff
	        end
	    end
	end
end