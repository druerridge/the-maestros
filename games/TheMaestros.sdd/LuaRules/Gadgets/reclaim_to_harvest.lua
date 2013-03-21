function gadget:GetInfo()
  return {
    name      = "ReclaimToHarvest",
    desc      = "Changes the word Reclaim to Harvest in the command",
    author    = "Dru",
    date      = "March 21 2013",
    license   = "GNU LGPL, v2.1 or later",
    layer     = -5,
    enabled   = true  --  loaded by default?
  }
end

--synced only

if not gadgetHandler:IsSyncedCode() then return end

function gadget:UnitCreated(unitID, unitDefID, teamID, builderID)
	--Spring.Echo("In UnitCreated")
	local ud = UnitDefs[unitDefID]
	
	if (ud.canReclaim) then
        --Spring.Echo("Unit Can Reclaim")
        local unitReclaimCmdDesc = Spring.FindUnitCmdDesc(unitID, CMD.RECLAIM)
        if (unitReclaimCmdDesc) then 
            Spring.EditUnitCmdDesc(unitID, unitReclaimCmdDesc, {name = "Harvest", tooltip = "Harvest: Gathers Arkanium rocks into Metal"}) 
        end
    end
end