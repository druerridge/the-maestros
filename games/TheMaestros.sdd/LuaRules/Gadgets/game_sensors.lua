function gadget:GetInfo()
	return {
		name = "Game Sensors",
		desc = "Units in radar range become visible",
		author = "FLOZi (C. Lawrence)",
		date = "02/02/2011",
		license = "GNU GPL v2",
		layer = 1,
		enabled = true
	}
end

if (gadgetHandler:IsSyncedCode()) then
--SYNCED

function gadget:UnitEnteredRadar(unitID, unitTeam, allyTeam, unitDefID)
	Spring.Echo(UnitDefs[unitDefID].name .. " entered radar " .. allyTeam)
end

function gadget:UnitLeftRadar(unitID, unitTeam, allyTeam, unitDefID)
	Spring.Echo(UnitDefs[unitDefID].name .. " left radar" .. allyTeam)
end

-- UNSYNCED

end
