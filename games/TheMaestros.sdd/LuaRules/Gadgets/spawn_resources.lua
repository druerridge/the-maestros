function gadget:GetInfo()
        return {
                name = "spawnResources",
                desc = " Spawns resources every turn",
                author = "Sean", 
                date = "2013-03-20",
                license = "Public Domain",
                layer = -7,
                enabled = true
        }
end

if (gadgetHandler:IsSyncedCode()) then

--SYNCED

function gadget:GameFrame(f)
        --Spawns arkanium every once in a while
        if f%1000 < .1 then
            local allUnits = Spring.GetAllUnits()
            for i = 1, #allUnits do
                local u = allUnits[i]
                local ud = Spring.GetUnitDefID(u)
                local team = Spring.GetUnitTeam(u)
                -- id 1 == arkaniumspawner
                if ud == 1 then
                    Spring.Echo("I'm an arkaniumspawner")
                    local x, y, z = Spring.GetUnitPosition(u)
                    local radius = 100
                    Spring.CreateFeature("arkanium", x+radius, Spring.GetGroundHeight(x,z)+5, z)
                    Spring.CreateFeature("arkanium", x-radius, Spring.GetGroundHeight(x,z)+5, z)
                    Spring.CreateFeature("arkanium", x, Spring.GetGroundHeight(x,z)+5, z+radius)
                    Spring.CreateFeature("arkanium", x, Spring.GetGroundHeight(x,z)+5, z-radius)
                end
            end
        end

    --[[
        if f%30 < .1 then
			Xra=math.random(0,4000)
			Zra = math.random(0,4000)
            local flagID = Spring.CreateFeature("arkanium", Xra, Spring.GetGroundHeight(Xra,Zra)+5, Zra)
        end
    ]]
end

else
--UNSYNCED
end
