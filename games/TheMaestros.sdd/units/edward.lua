local unitName  =  "edward"

local unitDef  =  {
--Internal settings
    BuildPic = "filename.bmp",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "edward.s3o",
    name = "EDWARD",
    Side = "TANKS",
    TEDClass = "TANK",
    UnitName = "edward",
	--animation script
    script = "edwardScript.lua",

    
--Unit limitations and properties
    BuildTime = 1000,
    Description = "A single target melee robot.",
    MaxDamage = 800,
    RadarDistance = 0,
    SightDistance = 4000,
    SoundCategory = "TANK",
    Upright = 0,
    
--Energy and metal related
    BuildCostEnergy = 0,
    BuildCostMetal = 100,
    
--Pathfinding and related
    Acceleration = 0.15,
    BrakeRate = 0.5,
    FootprintX = 3,
    FootprintZ = 3,
    MaxSlope = 15,
    MaxVelocity = 10,
    MaxWaterDepth = 20,
    MovementClass = "Default2x2",
    TurnRate = 3600,
    
    
--Abilities
    Builder = 0,
    CanAttack = 1,
    CanGuard = 1,
    CanMove = 1,
    CanPatrol = 1,
    CanStop = 1,
    LeaveTracks = 1,
    Reclaimable = 0,
    
--Hitbox
--    collisionVolumeOffsets    =  "0 0 0",
--    collisionVolumeScales     =  "20 20 20",
--    collisionVolumeTest       =  1,
--    collisionVolumeType       =  "box",
    
--Weapons and related

    BadTargetCategory = "NOTAIR",
    ExplodeAs = "TANKDEATH",
    NoChaseCategory = "AIR",
	weapons = {
        [1] = {
            def = "arms",
        },
    },

}
local weaponDefs = {
    arms = {
    name = "ScisorHands",
    weapontype = "Cannon",
    accuracy = 10,
    areaofeffect = 100,
    avoidfeature = false,
    avoidfriendly = false,
    canattackground = false,
    collidefriendly = false,
    collisionsize = 8,
    commandfire = false,
    craterboost = 0,
    cratermult = 0,
    edgeeffectiveness = 0.1,
    explosionspeed = 128,
    impulseboost = 0,
    impulsefactor = 0,
    intensity = 1,
    noselfdamage = true,
    size = 4,
	targetborder = -1,
	tolerence = 4000,
--        soundstart = "tank_fire",
--        soundhit = "explo01",
    range = 250,
	weaponvelocity = 500,
    reloadtime = 0.5,
    rgbcolor = "1.0 1.0 1.0",
    turret = false,
    texture1 = "flame",
    weaponvelocity = 400,
--		explosiongenerator = "custom:TANKGUN_FX",
    damage =
    {
        default = 55,
    },
    },
}
unitDef.weaponDefs = weaponDefs
return lowerkeys({ [unitName]  =  unitDef })