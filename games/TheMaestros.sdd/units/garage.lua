local unitName = "garage"

local unitDef =
{
-- Internal settings
	BuildPic = "GarageThumbnail.png",
	Category = "BUILDING NOTSCOUT NOTHEAVY NOTAIR NOTEPIC NOTSHIP NOTSTEALTHY ALL",
	ObjectName = "garage.s3o",
	Side = "TANK",
	TEDClass = "PLANT",
	script = "garagescript.lua",
	
	customParams = {modify = "plaid", buildreq = "t0",},
	--modify refers to the target output of the possible modifications

-- Unit limitations and properties
	ActivateWhenBuilt = true,
	BuildTime = 2000,
    	commander = true,
	Description = "Produces tinkerer base units and factories",
	MaxDamage = 3000,
	Name = "The Garage",
	RadarDistance = 0,
	SightDistance = 400,
	SoundCategory = "BUILDING",
	Upright = 1,
	WorkerTime = 80,
	
-- Energy and metal related
	BuildCostEnergy = 0,
	BuildCostMetal = 800,
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
	Builder = 1,
    Reclaimable = 0,
    ReclaimSpeed = 0,
    CanReclaim = 0,
    CanRepair = 0,
	ShowNanoSpray = 1,
	CanMove = 1,
	CanStop = 1,
	LeaveTracks = 1,
	CanBeAssisted = 0,
	buildoptions = 
	{
		"scissormaker",
		"hanger",
		"plaid",
		"garage",
	},
	
-- Abilities new to Spring
	
-- Weapons and related

	ExplodeAs = "BUILDINGLARGEDEATH",
	SelfDestructAs = "BUILDINGLARGEDEATH",
	SelfDestructCountdown = 5,
}

return lowerkeys({ [unitName] = unitDef })
