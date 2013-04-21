function gadget:GetInfo()
        return {
                name = "spawnResources",
                desc = " Spawns resources every turn",
                author = "Sean", 
                date = "2013-03-20",
                license = "Public Domain",
                layer = -7,
                enabled = false
        }
end

if (gadgetHandler:IsSyncedCode()) then

--SYNCED

function gadget:GameFrame(f)
        if f%30 < .1 then
			Xra=math.random(0,4000)
			Zra = math.random(0,4000)
            local flagID = Spring.CreateFeature("arkanium", Xra, Spring.GetGroundHeight(Xra,Zra)+5, Zra)
        end
end

else
--UNSYNCED
end
