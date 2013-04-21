local objectname= "s44_b_house_4_3" 
local featureDef	=	{
	name			= "s44_b_house_4_3",
	world				="All Worlds",
	description				="House",
	category				="Buildings",
	object				="s44_b_house_4_3.s3o",
	footprintx				=18,
	footprintz				=6,
	height				=48,
	blocking				=true,
	upright				=true,
	hitdensity				=1,
	energy				=0,
	metal				=0,
	damage				=20000,
	flammable				=false,
	reclaimable				=false,
	autoreclaimable				=false,
	collisionvolumetype				="box",
	collisionvolumescales				={72, 36, 24},
	collisionvolumeoffsets				={0, 0, 0},
} 
return lowerkeys({[objectname] = featureDef}) 
