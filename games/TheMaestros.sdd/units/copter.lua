local unitName  =  "copter"

local unitDef  =  {
--Internal settings
    BuildPic = "HeliThumbnail.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "copter.s3o",
    name = "COPTER_2.4",
    Side = "TANKS",
    TEDClass = "TANK",
    UnitName = "copter",
	--animation script
    script = "copterscriptS.lua",

    customParams = {transform = "plaid", buildpermit = "t0",},
    --modify refers to the target output of the possible modifications

--Unit limitations and properties
    BuildTime = 1000,
    Description = "A multi-target melee robot.",
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
    MaxVelocity = 6,
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


    ExplodeAs = "TANKDEATH",

	weapons = {
        [1] = {
            def = "blades",
        },
    },

}
local weaponDefs = {
    blades = {
    name = "Spinning Blades",
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
	areaofeffect = 100,
    edgeeffectiveness = 0.5,
    explosionspeed = 128,
    impulseboost = 0,
    impulsefactor = 0,
    intensity = 1,
    noselfdamage = true,
    size = 4,
	targetborder = 0,
	tolerence = 4000,
--        soundstart = "tank_fire",
--        soundhit = "explo01",
    range = 150,
	weaponvelocity = 500,
    reloadtime = 0.5,
    rgbcolor = "1.0 1.0 1.0",
    turret = false,
    texture1 = "flame",
--		explosiongenerator = "custom:TANKGUN_FX",
    damage =
    {
        default = 40,
    },
    },
}
unitDef.weaponDefs = weaponDefs
return lowerkeys({ [unitName]  =  unitDef })