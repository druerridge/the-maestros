local unitName = "scissormaker"

local unitDef =
{
-- Internal settings
	BuildPic = "base.bmp",
	Category = "BUILDING NOTSCOUT NOTHEAVY NOTAIR NOTEPIC NOTSHIP NOTSTEALTHY ALL",
	ObjectName = "building.s3o",
	Side = "TANK",
	TEDClass = "PLANT",
	script = "scissormakerscript.lua",
	
	customParams = {modify = "edward",},
	
-- Unit limitations and properties
	ActivateWhenBuilt = true,
	BuildTime = 800,
    commander = true,
	Description = "Produces tinkerer base units and factories",
	MaxDamage = 1500,
	Name = "The Scissor Maker",
	RadarDistance = 0,
	SightDistance = 400,
	SoundCategory = "BUILDING",
	Upright = 1,
	WorkerTime = 80,
	levelground = 1,
	
-- Energy and metal related
	BuildCostEnergy = 0,
	BuildCostMetal = 400,
	EnergyStorage = 0,
	EnergyUse = 0,
	MetalStorage = 0,
	EnergyMake = 1, 
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
	Builder = 1,
        Reclaimable = 0,
	ShowNanoSpray = 0,
	CanMove = 1,
	CanStop = 1,
	LeaveTracks = 1,
	CanBeAssisted = 0,
	buildoptions = 
	{
		"edward",
	},
	
-- Abilities new to Spring
	
-- Weapons and related

	ExplodeAs = "BUILDINGLARGEDEATH",
	SelfDestructAs = "BUILDINGLARGEDEATH",
	SelfDestructCountdown = 5,
}

return lowerkeys({ [unitName] = unitDef })
