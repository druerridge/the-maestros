local objectname= "brock_7" 
local featureDef	=	{
	name			= "brock_7",
	world				="All Worlds",
	description				="Rock",
	category				="Vegetation",
	object				="brock_7.s3o",
	footprintx				=3,
	footprintz				=3,
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
