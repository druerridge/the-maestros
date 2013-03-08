local body = piece "body"

function script.Create(unitID)

end


--Actually, I'm not sure if Activate() is called when the base is finished, rather than when it starts building anything. I'll need to check that.

function script.Killed(recentDamage, maxHealth)

end

function script.AimWeapon1( heading, pitch )
	return true
end

----aimining & fire weapon
--returns from which piece the unit aims
function script.AimFromWeapon1() 
	return body 
end

--returns where the weapon projectile will be created
function script.QueryWeapon1() 
	return body
end
