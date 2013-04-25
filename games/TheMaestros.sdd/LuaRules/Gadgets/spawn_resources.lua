function gadget:GetInfo()
        return {
                name = "spawnResources",
                desc = " Spawns resources every so often",
                author = "Sean", 
                date = "2013-03-20",
                license = "Public Domain",
                layer = -7,
                enabled = true
        }
end

if (gadgetHandler:IsSyncedCode()) then

--SYNCED

local spawnLocations = {}
local first = true
local radius = 100

function gadget:GameFrame(f)
    --Spawns arkanium every once in a while
    if (first) then
        Spring.Echo("in frist if")
        local allUnits = Spring.GetAllUnits()
        for i = 1, #allUnits do
            local u = allUnits[i]
            local ud = Spring.GetUnitDefID(u)
            -- id 1 == arkaniumspawner
            if ud == 1 then
                local x, y, z = Spring.GetUnitPosition(u)
                spawnLocations[#spawnLocations + 1] = {x, y, z}

                Spring.DestroyUnit(u, false, true)
            end
        end
        -- make sure this only runs the first time
        first = false
    end

    -- 30 frames / second, 900 = 30 seconds
    if f%900 < .1 then
        Spring.Echo("In second if")
        Spring.Echo(#spawnLocations)
        for j = 1, #spawnLocations do
            local x = spawnLocations[j][1]
            local y = spawnLocations[j][2]
            local z = spawnLocations[j][3]
            Spring.CreateFeature("arkanium", x+radius, Spring.GetGroundHeight(x,z)+5, z)
            Spring.CreateFeature("arkanium", x-radius, Spring.GetGroundHeight(x,z)+5, z)
            Spring.CreateFeature("arkanium", x, Spring.GetGroundHeight(x,z)+5, z+radius)
            Spring.CreateFeature("arkanium", x, Spring.GetGroundHeight(x,z)+5, z-radius)
        end

    end
end

else

--UNSYNCED

end
