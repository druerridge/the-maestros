local objectname= "brock_10" 
local featureDef	=	{
	name			= "brock_10",
	world				="All Worlds",
	description				="Rock",
	category				="Vegetation",
	object				="brock_10.s3o",
	footprintx				=6,
	footprintz				=6,
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
