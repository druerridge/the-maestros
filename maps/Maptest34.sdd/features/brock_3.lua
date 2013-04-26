local objectname= "brock_3" 
local featureDef	=	{
	name			= "brock_3",
	world				="All Worlds",
	description				="Rock",
	category				="Vegetation",
	object				="brock_3.s3o",
	footprintx				=2,
	footprintz				=2,
	height				=30,
	blocking				=true,
	upright				=false,
	hitdensity				=1,
	energy				=0,
	metal				=20,
	damage				=3000,
	flammable				=false,
	reclaimable				=true,
	autoreclaimable				=true,
} 
return lowerkeys({[objectname] = featureDef}) 
