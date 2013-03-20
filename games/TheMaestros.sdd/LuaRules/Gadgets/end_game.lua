function gadget:GetInfo()
  return {
    name      = "EndGame",
    desc      = "Determines when the game ends",
    author    = "Dru",
    date      = "March 20 2013",
    license   = "GNU LGPL, v2.1 or later",
    layer     = -5,
    enabled   = true  --  loaded by default?
  }
end

--synced only

if not gadgetHandler:IsSyncedCode() then return end

--if a garage was killed, check if it was the last garage on 
-- the team.  If so, kill the team and end the game
function gadget:UnitDestroyed(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeamID)
	--Spring.Echo("In EndGame.UnitDestroyed")
	local unitDef = UnitDefs[unitDefID]
	if unitDef.name ~= "garage" then
		--Spring.Echo(unitDef.name)
		--Spring.Echo("Not a garage")
		return
	end
	--Spring.Echo("Unit was a garage")

	local teamUnits = Spring.GetTeamUnits(unitTeam)
	local lastGarage = true;
	for i = 1, #teamUnits do
		if (UnitDefs[Spring.GetUnitDefID(teamUnits[i])].name == "garage" and teamUnits[i] ~= unitID) then
			--Spring.Echo("There was another garage")
			lastGarage = false;
			break;
		end
	end

	if lastGarage == true then
		--Spring.Echo("There was no other garage")
		Spring.KillTeam(unitTeam)
		local teamList = Spring.GetTeamList()
		--Spring.Echo(teamList)
		--table.remove(teamList, 1)
		for i = #teamList, 1, -1 do
			--Spring.Echo(Spring.GetTeamInfo(teamList[i]))
			_, _, isDead, _, _, _, _, _  = Spring.GetTeamInfo(teamList[i])
			--Spring.Echo(isDead)
			if isDead ~= true then --I don't even know.
				table.remove(teamList, i)
			end
		end

		--Spring.Echo(teamList)
		Spring.GameOver(teamList)
	end
end