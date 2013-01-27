local archiveCache = {

	internalver = 9,

	archives = {  -- count = 6
		{
			name = "bitmaps.sdz",
			path = [[C:\workspace\Spring\the-maestros\base\spring\]],
			modified = "1346357261",
			checksum = "2343186445",
			archivedata = {
				description = "Various bitmaps used by spring",
				modtype = 0,
				name = "Spring Bitmaps",
			},
		},
		{
			name = "cursors.sdz",
			path = [[C:\workspace\Spring\the-maestros\base\]],
			modified = "1346357261",
			checksum = "2940605174",
			archivedata = {
				description = "Cursor pack by Erom",
				modtype = 0,
				name = "Spring Cursors",
			},
		},
		{
			name = "maphelper.sdz",
			path = [[C:\workspace\Spring\the-maestros\base\]],
			modified = "1346357261",
			checksum = "3099124429",
			archivedata = {
				description = "Maps can use this archive for its lua tdf parser",
				modtype = 0,
				name = "Map Helper v1",
			},
		},
		{
			name = "Small_Supreme_Battlefield_V2.sd7",
			path = [[C:\workspace\Spring\the-maestros\maps\]],
			modified = "1359179646",
			checksum = "2658974177",
			archivedata = {
				mapfile = "maps/Small Supreme Battlefield V2.smf",
				modtype = 3,
				name = "Small Supreme Battlefield V2",
			},
		},
		{
			name = "springcontent.sdz",
			path = [[C:\workspace\Spring\the-maestros\base\]],
			modified = "1346357261",
			checksum = "211251712",
			archivedata = {
				description = "Mods can depend on this archive to get all the spring content",
				modtype = 0,
				name = "Spring content v1",
				depend = {
					"Spring Bitmaps",
				},
			},
		},
		{
			name = "TheMaestros.sdd",
			path = [[C:\workspace\Spring\the-maestros\games\]],
			modified = "1359173242",
			checksum = "19271085",
			archivedata = {
				description = "Prototype for Maestro",
				game = "The Maestros Game",
				modtype = 1,
				name = "The Maestros",
				shortgame = "MaestrosGame",
				shortname = "Maestros",
				url = "http://www.somewebsite.com/",
				depend = {
					"cursors.sdz",
					"springcontent.sdz",
				},
			},
		},
	},

	brokenArchives = {  -- count = 0
	},
}

return archiveCache
