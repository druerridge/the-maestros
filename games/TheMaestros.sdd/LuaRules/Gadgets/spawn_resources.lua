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
local radius = 100

function gadget:GameFrame(f)
    if f%900 < .1 then
        for j = 1, #spawnLocations do
            local x = spawnLocations[j][1]
            local y = spawnLocations[j][2]
            local z = spawnLocations[j][3]
            Spring.CreateFeature("arkanium", x, Spring.GetGroundHeight(x,z)+5, z)
            --Spring.Echo("Creating Arkanium")
        end
    end
    --Spring.Echo("GameFrame")
end

function gadget:Initialize()
    local allFeatures = Spring.GetAllFeatures()
    --Spring.Echo("IN INITIALIZE")
    for i = 1, #allFeatures do
        local ff = allFeatures[i]
        local fd = Spring.GetFeatureDefID(ff)
        -- arkanium
        if fd == FeatureDefNames["arkanium"].id then
            local x, y, z = Spring.GetFeaturePosition(ff)
            spawnLocations[#spawnLocations + 1] = {x, y, z}
        end
    end
    --Spring.Echo(#spawnLocations)
end

else

--UNSYNCED

end
