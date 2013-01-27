local archiveCache = {

	internalver = 9,

<<<<<<< HEAD
	archives = {  -- count = 10
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
=======
	archives = {  -- count = 6
>>>>>>> 0065847a1dcfa8d9311f7ef3aba9f9a86bd7bf52
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
<<<<<<< HEAD
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\base\spring\]],
			modified = "1359173935",
=======
			path = [[C:\workspace\Spring\the-maestros\base\spring\]],
			modified = "1346357261",
>>>>>>> 0065847a1dcfa8d9311f7ef3aba9f9a86bd7bf52
			checksum = "2343186445",
			archivedata = {
				description = "Various bitmaps used by spring",
				modtype = 0,
				name = "Spring Bitmaps",
			},
		},
		{
			name = "cursors.sdz",
<<<<<<< HEAD
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\base\]],
			modified = "1359173935",
=======
			path = [[C:\workspace\Spring\the-maestros\base\]],
			modified = "1346357261",
>>>>>>> 0065847a1dcfa8d9311f7ef3aba9f9a86bd7bf52
			checksum = "2940605174",
			archivedata = {
				description = "Cursor pack by Erom",
				modtype = 0,
				name = "Spring Cursors",
			},
		},
		{
<<<<<<< HEAD
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
=======
			name = "maphelper.sdz",
			path = [[C:\workspace\Spring\the-maestros\base\]],
			modified = "1346357261",
>>>>>>> 0065847a1dcfa8d9311f7ef3aba9f9a86bd7bf52
			checksum = "3099124429",
			archivedata = {
				description = "Maps can use this archive for its lua tdf parser",
				modtype = 0,
				name = "Map Helper v1",
			},
		},
		{
			name = "Maptest10.sd7",
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\maps\]],
			modified = "1359244957",
			checksum = "1961467165",
			archivedata = {
				mapfile = "maps/Maptest10.smf",
				modtype = 3,
				name = "Maptest10",
			},
		},
		{
			name = "Small_Supreme_Battlefield_V2.sd7",
<<<<<<< HEAD
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\maps\]],
			modified = "1359193418",
=======
			path = [[C:\workspace\Spring\the-maestros\maps\]],
			modified = "1359179646",
>>>>>>> 0065847a1dcfa8d9311f7ef3aba9f9a86bd7bf52
			checksum = "2658974177",
			archivedata = {
				mapfile = "maps/Small Supreme Battlefield V2.smf",
				modtype = 3,
				name = "Small Supreme Battlefield V2",
			},
		},
		{
			name = "springcontent.sdz",
<<<<<<< HEAD
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\base\]],
			modified = "1359173935",
=======
			path = [[C:\workspace\Spring\the-maestros\base\]],
			modified = "1346357261",
>>>>>>> 0065847a1dcfa8d9311f7ef3aba9f9a86bd7bf52
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
<<<<<<< HEAD
			path = [[C:\Users\Jean\Documents\GitHub\the-maestros\games\]],
			modified = "1359180050",
=======
			path = [[C:\workspace\Spring\the-maestros\games\]],
			modified = "1359173242",
>>>>>>> 0065847a1dcfa8d9311f7ef3aba9f9a86bd7bf52
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
