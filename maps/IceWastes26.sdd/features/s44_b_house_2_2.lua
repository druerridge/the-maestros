local objectname= "s44_b_house_2_2" 
local featureDef	=	{
	name			= "s44_b_house_2_2",
	world				="All Worlds",
	description				="House",
	category				="Buildings",
	object				="s44_b_house_2_2.s3o",
	footprintx				=12,
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
	collisionvolumescales				={48, 36, 24},
	collisionvolumeoffsets				={0, 0, 0},
} 
return lowerkeys({[objectname] = featureDef}) 
