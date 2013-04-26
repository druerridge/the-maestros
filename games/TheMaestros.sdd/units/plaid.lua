local unitName = "plaid"

local unitDef =
{
-- Internal settings
    BuildPic = "PlaidThumbnail.png",
    Category = "BUILDING TANK SMALL NOTAIR NOTSUB",
    ObjectName = "plaid.s3o",
    Name = "PLAID_V1.0",
    Side = "TANK",
    TEDClass = "TANK",
    script = "plaidscript.lua",
    
    customParams = {transform = "edward", buildpermit = "t1", edward = "0", copter = "0"},
    --"edward" and "copter" refer to the cost for transformation to that unit

-- Unit limitations and properties
    ActivateWhenBuilt = true,
    BuildTime = 175,
    commander = false,
    Description = "A tiny arkanium gathering robot with fast, weak machine-gun. Powerful in numbers",
    MaxDamage = 375,
    RadarDistance = 0,
    SightDistance = 4000,
    SoundCategory = "TANK",
    Upright = 1,
    WorkerTime = 80,

    
--Energy and metal related
    BuildCostEnergy = 0,
    BuildCostMetal = 100,
    
--Pathfinding and related
    Acceleration = 0.8,
    BrakeRate = 1.5,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 15,
    MaxVelocity = 7,
    MaxWaterDepth = 20,
    MovementClass = "Default2x2",
    TurnRate = 10000,
    
--Abilities
    Builder = 1,
    CanReclaim = 1,
    ReclaimSpeed = 1000,
    CanRepair = 0,
    ShowNanoSpray = 1,
    CanAttack = 1,
    CanFight = 1,
    CanGuard = 0,
    CanMove = 1,
    CanPatrol = 0,
    CanStop = 1,
    LeaveTracks = 1,
    Reclaimable = 0,

    CanRepeat = 0,
    CanAssist = 0,
    CanRestore = 0,
    CanGuard = 0,
    
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
    impulseFactor = 0,
    
    noselfdamage = true,
    size = 4,
    targetborder = -1,
    tolerence = 4000,
--        soundstart = "tank_fire",
--        soundhit = "explo01",
    range = 325,
    weaponvelocity = 500,
    reloadtime = 0.1,
    rgbcolor = "1.0 1.0 1.0",
    turret = false,
    texture1 = "flame",
--      explosiongenerator = "custom:TANKGUN_FX",
    damage =
    {
        default = 5,
    },
    },
}
unitDef.weaponDefs = weaponDefs
return lowerkeys({ [unitName]  =  unitDef })
