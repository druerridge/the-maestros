local objectname= "brock_9" 
local featureDef	=	{
	name			= "brock_9",
	world				="All Worlds",
	description				="Rock",
	category				="Vegetation",
	object				="brock_9.s3o",
	footprintx				=5,
	footprintz				=5,
	height				=30,
	blocking				=true,
	upright				=false,
	hitdensity				=1,
	energy				=0,
	metal				=200,
	damage				=3000,
	flammable				=false,
	reclaimable				=true,
	autoreclaimable				=true,
} 
return lowerkeys({[objectname] = featureDef}) 
