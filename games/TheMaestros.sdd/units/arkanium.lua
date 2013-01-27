local unitName = "arkanium"

local unitDef =
{
-- Internal settings
	BuildPic = "base.bmp",
	Category = "BUILDING NOTSCOUT NOTHEAVY NOTAIR NOTEPIC NOTSHIP NOTSTEALTHY ALL",
	ObjectName = "arkanium.s3o",
	Side = "TANK",
	TEDClass = "PLANT",
--script = "basescript.lua",
	
-- Unit limitations and properties
	ActivateWhenBuilt = true,
	BuildTime = 1000,
    commander = true,
	Description = "A patch of the rare and valuable mineral, Arkanium",
	MaxDamage = 0,
	Name = "Arkanium",
	RadarDistance = 0,
	SightDistance = 400,
	SoundCategory = "BUILDING",
	Upright = 1,
	WorkerTime = 80,
	levelground = 1,
		
-- Energy and metal related
	BuildCostEnergy = 0,
	BuildCostMetal = 100,
	EnergyStorage = 0,
	EnergyUse = 0,
	MetalStorage = 0,
	EnergyMake = 0, 
	MakesMetal = 0, 
	MetalMake = 0,
	
-- Pathfinding and related
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 10,
	MaxWaterDepth = 0,
	YardMap = "cccc cccc cccc cccc",

-- Abilities
	Builder = 0,
    Reclaimable = 1,
	ShowNanoSpray = 0,
	CanBeAssisted = 0,
	CanMove = 0,
	CanWait = 0,
	CanStop = 0,
	
-- Abilities new to Spring
	
-- Weapons and related
	ExplodeAs = "BUILDINGLARGEDEATH",
	SelfDestructAs = "BUILDINGLARGEDEATH",
	SelfDestructCountdown = 5,
}

return lowerkeys({ [unitName] = unitDef })
