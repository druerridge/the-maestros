local unitName  =  "edward"

local unitDef  =  {
--Internal settings
    BuildPic = "EdwardThumbnail.png",
    Category = "BUILDING TANK SMALL NOTAIR NOTSUB",
    ObjectName = "edward.s3o",
    name = "EDWARD_2.6",
    Side = "TANKS",
    TEDClass = "TANK",
    UnitName = "edward",
	--animation script
    script = "genericunitscript.lua",

    customParams = {transform = "plaid", buildpermit = "t0", plaid = "0",},
    
--Unit limitations and properties
    BuildTime = 1000,
    Description = "An attack robot that shoots a powerful single-target laser with long range.",
    MaxDamage = 800,
    RadarDistance = 0,
    SightDistance = 4000,
    SoundCategory = "TANK",
    Upright = 0,
    targetborder = -1,
    
--Energy and metal related
    BuildCostEnergy = 0,
    BuildCostMetal = 100, --NOTE: not used to determine the class-change cost, see "plaid.customparams.edward"
    --NOTE: This does affect the DISPLAYED cost of the unit, so let's try to keep them in sync

--Pathfinding and related
    Acceleration = 0.8,
    BrakeRate = 1.5,
    FootprintX = 3,
    FootprintZ = 3,
    MaxSlope = 15,
    MaxVelocity = 5,
    MaxWaterDepth = 20,
    MovementClass = "Default2x2",
    TurnRate = 10000,
    
    
--Abilities
    Builder = 0,
    CanAttack = 1,
    CanGuard = 0,
    CanMove = 1,
    CanPatrol = 0,
    CanStop = 1,
    LeaveTracks = 1,
    Reclaimable = 0,
    
    CanRepeat = 0,
    CanAssist = 0,
    CanRestore = 0,
--Hitbox
--    collisionVolumeOffsets    =  "0 0 0",
--    collisionVolumeScales     =  "20 20 20",
--    collisionVolumeTest       =  1,
--    collisionVolumeType       =  "box",
    
--Weapons and related


    ExplodeAs = "BUILDINGLARGEDEATH",
	SelfDestructAs = "BUILDINGLARGEDEATH",

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
    impulseFactor = 0,
    
    noselfdamage = true,
    size = 4,
	targetborder = 0,
	tolerence = 4000,
--        soundstart = "tank_fire",
--        soundhit = "explo01",
    range = 450,
	weaponvelocity = 500,
    reloadtime = 0.33,
    rgbcolor = "1.0 1.0 1.0",
    turret = false,
    texture1 = "flame",
--		explosiongenerator = "custom:TANKGUN_FX",
    damage =
    {
        default = 25,
    },
    },
}
unitDef.weaponDefs = weaponDefs
return lowerkeys({ [unitName]  =  unitDef })
