local versionNumber = "0.7"
local widgetName = "LOS"

function widget:GetInfo()
	return {
		name = widgetName,
		layer = 0,
		enabled = true
	}
end

function widget:Initialize()	
	if (CheckSpecState() == true) then
		RemoveItself()
	end
end

function widget:GameStart()	
	Spring.SendCommands("togglelos")
	Spring.SendCommands("toggleradarandjammer")
	
	RemoveItself()
end

function RemoveItself()
	widgetHandler:RemoveWidget()
end

function CheckSpecState()
	local playerID = Spring.GetMyPlayerID()
	local _, _, spec, _, _, _, _, _ = Spring.GetPlayerInfo(playerID)
	
	return spec
end