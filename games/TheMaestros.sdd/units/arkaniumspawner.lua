local unitName = "arkaniumspawner"

local unitDef =
{
-- Internal settings
	BuildPic = "Hangarthumbnail.png",
	Category = "BUILDING NOTSCOUT NOTHEAVY NOTAIR NOTEPIC NOTSHIP NOTSTEALTHY ALL",
	ObjectName = "ad0_bush_2_s.s3o",
	Side = "TANK",
	TEDClass = "PLANT",
	script = "genericunitscript.lua",
	
	--customParams = {modify = "copter", buildreq = "t1",},
	--modify refers to the target output of the possible modifications
	
-- Unit limitations and properties
	ActivateWhenBuilt = true,
	BuildTime = 800,
    commander = true,
	Description = "Arkanium is Spawned Periodically here",
	MaxDamage = 1500,
	Name = "Arkanium Spawner",
	RadarDistance = 0,
	SightDistance = 400,
	SoundCategory = "BUILDING",
	Upright = 1,
	WorkerTime = 80,
	
-- Energy and metal related
	BuildCostEnergy = 0,
	BuildCostMetal = 400,
	EnergyStorage = 0,
	EnergyUse = 0,
	MetalStorage = 0,
	EnergyMake = 0, 
	MakesMetal = 0, 
	MetalMake = 0,
	
-- Pathfinding and related
	Acceleration = 0.15,
    BrakeRate = 0.1,
    FootprintX = 4,
    FootprintZ = 4,
    MaxSlope = 15,
    MaxVelocity = 2.0,
    MaxWaterDepth = 20,
    MovementClass = "Default2x2",
    TurnRate = 3600,

-- Abilities
	Builder = 0,
    Reclaimable = 0,
    reclaimSpeed = 1000.0;
	ShowNanoSpray = 0,
	CanMove = 0,
	CanStop = 1,
	LeaveTracks = 0,
	CanBeAssisted = 0,

	CanRepeat = 0,
    CanAssist = 0,
    CanRestore = 0,
    CanGuard = 0,
    CanPatrol = 0,
--	buildoptions = 
--	{
--		"copter",
--	},
	
-- Abilities new to Spring
	
-- Weapons and related

	ExplodeAs = "BUILDINGLARGEDEATH",
	SelfDestructAs = "BUILDINGLARGEDEATH",
	SelfDestructCountdown = 5,
}

return lowerkeys({ [unitName] = unitDef })
