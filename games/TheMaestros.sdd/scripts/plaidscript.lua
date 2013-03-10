local building, platform, nanopoint = piece "saw", piece "saw", piece "saw"
-- declares all the pieces we'll be using.

function script.Create(unitID)

end

function script.QueryBuildInfo() return platform end
-- When building a unit in this building, put it on the "platform" piece.

function script.QueryNanoPiece() return nanopoint end
-- If using nanospray, make the nanospray appear from the "nanopoint" piece (the sphere). This won't be used here, but meh.


--Actually, I'm not sure if Activate() is called when the base is finished, rather than when it starts building anything. I'll need to check that.

function script.Killed(recentDamage, maxHealth)

end

--This is neccesary to fire. Can use to implement cooldown, etc.
function script.AimWeapon1( heading, pitch )
	return true
end