local archiveCache = {

	internalver = 9,

	archives = {  -- count = 11
		{
			name = "b74fb917131a359c06ff49eee54fe5c8.sdp",
			path = [[C:\Users\Jean\Documents\My Games\Spring\packages\]],
			modified = "1359161028",
			checksum = "437765387",
			archivedata = {
				description = "Zero-K",
				modtype = 1,
				mutator = "1",
				name = "Zero-K v1.1.1.1",
				shortname = "ZK",
				version = "v1.1.1.1",
			},
		},
		{
			name = "bec3feb6303d68c556fc05837dbb6a5d.sdp",
			path = [[C:\Users\Jean\Documents\My Games\Spring\packages\]],
			modified = "1356062789",
			checksum = "3949427109",
			archivedata = {
				description = "Zero-K",
				modtype = 1,
				mutator = "1",
				name = "Zero-K v1.0.12.2",
				shortname = "ZK",
				version = "v1.0.12.2",
			},
		},
		{
			name = "bitmaps.sdz",
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\base\spring\]],
			modified = "1359173935",
			checksum = "2343186445",
			archivedata = {
				description = "Various bitmaps used by spring",
				modtype = 0,
				name = "Spring Bitmaps",
			},
		},
		{
			name = "cursors.sdz",
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\base\]],
			modified = "1359173935",
			checksum = "2940605174",
			archivedata = {
				description = "Cursor pack by Erom",
				modtype = 0,
				name = "Spring Cursors",
			},
		},
		{
			name = "drumap.sd7",
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\maps\]],
			modified = "1359258579",
			checksum = "3941799158",
			archivedata = {
				mapfile = "drumap/maps/drumap.smf",
				modtype = 3,
				name = "drumap",
			},
		},
		{
			name = "IsisDelta_v02.sd7",
			path = [[C:\Users\Jean\Documents\My Games\Spring\maps\]],
			modified = "1356062813",
			checksum = "2753290659",
			archivedata = {
				mapfile = "maps/IsisDelta_v02.smf",
				modtype = 3,
				name = "IsisDelta_v02",
			},
		},
		{
			name = "maphelper.sdz",
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\base\]],
			modified = "1359173935",
			checksum = "3099124429",
			archivedata = {
				description = "Maps can use this archive for its lua tdf parser",
				modtype = 0,
				name = "Map Helper v1",
			},
		},
		{
			name = "Maptest29.sd7",
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\maps\]],
			modified = "1359253199",
			checksum = "2101828618",
			archivedata = {
				mapfile = "maps/Maptest29.smf",
				modtype = 3,
				name = "Maptest29",
			},
		},
		{
			name = "Small_Supreme_Battlefield_V2.sd7",
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\maps\]],
			modified = "1359193418",
			checksum = "2658974177",
			archivedata = {
				mapfile = "maps/Small Supreme Battlefield V2.smf",
				modtype = 3,
				name = "Small Supreme Battlefield V2",
			},
		},
		{
			name = "springcontent.sdz",
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\base\]],
			modified = "1359173935",
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
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\games\]],
			modified = "1359180050",
			checksum = "4018562640",
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
