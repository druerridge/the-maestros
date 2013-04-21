function gadget:GetInfo()
        return {
                name = "testGadget",
                desc = " Prints message every frame",
                author = "Sean", 
                date = "2013-03-20",
                license = "Public Domain",
                layer = 19,
                enabled = true
        }
end

if (gadgetHandler:IsSyncedCode()) then

--SYNCED

function gadget:GameFrame(f)
       --[[ if f%30 < .1 then
            Spring.Echo("test")
                
        end]]
end

else
--UNSYNCED
end
