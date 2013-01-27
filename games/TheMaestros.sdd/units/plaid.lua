local unitName  =  "plaid"

local unitDef  =  {
--Internal settings
    BuildPic = "plaid.bmp",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "plaid.s3o",
    name = "PLAID_V1.0",
    Side = "TANKS",
    TEDClass = "TANK",
    UnitName = "plaid",
	script = "plaidscriptS.lua",
    
    customParams = {transform = "edward",},
--Unit limitations and properties
    BuildTime = 500,
    Description = "A tiny melee robot and arkanium gatherer.",
    MaxDamage = 400,
    RadarDistance = 0,
    SightDistance = 4000,
    SoundCategory = "TANK",
    Upright = 0,
    
--Energy and metal related
    BuildCostEnergy = 0,
    BuildCostMetal = 100,
    
--Pathfinding and related
    Acceleration = 0.2,
    BrakeRate = 0.5,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 15,
    MaxVelocity = 8,
    MaxWaterDepth = 20,
    MovementClass = "Default2x2",
    TurnRate = 3600,
    
--Abilities
    Builder = 1,
    CanAttack = 1,
    CanGuard = 1,
    CanMove = 1,
    CanPatrol = 1,
    CanStop = 1,
    CanReclaim = 1,
    LeaveTracks = 1,
    Reclaimable = 1,
    
--Hitbox
--    collisionVolumeOffsets    =  "0 0 0",
--    collisionVolumeScales     =  "20 20 20",
--    collisionVolumeTest       =  1,
--    collisionVolumeType       =  "box",
    
--Weapons and related
    
    ExplodeAs = "TANKDEATH",
	weapons = {
        [1] = {
            def = "smallarms",
        },
    },
}
local weaponDefs = {
    smallarms = {
    name = "Clamps",
    weapontype = "Cannon",
    avoidfeature = false,
    avoidfriendly = false,
    canattackground = false,
    collidefriendly = false,
	collideground = false,
    collisionsize = 1,
    commandfire = false,
    craterboost = 0,
    cratermult = 0,
	areaofeffect = 0,
    
    noselfdamage = true,
    size = 4,
	targetborder = 0,
	tolerence = 4000,
--        soundstart = "tank_fire",
--        soundhit = "explo01",
    range = 100,
	weaponvelocity = 500,
    reloadtime = 0.5,
    rgbcolor = "1.0 1.0 1.0",
    turret = false,
    texture1 = "flame",
--		explosiongenerator = "custom:TANKGUN_FX",
    damage =
    {
        default = 55,
    },
    },
}
unitDef.weaponDefs = weaponDefs

return lowerkeys({ [unitName]  =  unitDef })