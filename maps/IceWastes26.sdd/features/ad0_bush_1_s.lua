local objectname= "ad0_bush_1_s" 
local featureDef	=	{
	name			= "ad0_bush_1_s",
	world				="All Worlds",
	description				="Bush",
	category				="Vegetation",
	object				="ad0_bush_1_s.s3o",
	footprintx				=1,
	footprintz				=1,
	height				=30,
	blocking				=true,
	upright				=true,
	hitdensity				=0,
	energy				=300,
	metal				=0,
	damage				=216,
	flammable				=true,
	reclaimable				=true,
	autoreclaimable				=true,
	featurereclamate				="smudge01",
	seqnamereclamate				="tree1reclamate",
} 
return lowerkeys({[objectname] = featureDef}) 
