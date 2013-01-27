local archiveCache = {

	internalver = 9,

	archives = {  -- count = 10
		{
			name = "b74fb917131a359c06ff49eee54fe5c8.sdp",
			path = [[C:\Users\Ben\Documents\My Games\Spring\packages\]],
			modified = "1359168101",
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
			name = "bitmaps.sdz",
			path = [[C:\Workspace\Maestro\the-maestros\base\spring\]],
			modified = "1359176165",
			checksum = "2343186445",
			archivedata = {
				description = "Various bitmaps used by spring",
				modtype = 0,
				name = "Spring Bitmaps",
			},
		},
		{
			name = "cursors.sdz",
			path = [[C:\Workspace\Maestro\the-maestros\base\]],
			modified = "1359176165",
			checksum = "2940605174",
			archivedata = {
				description = "Cursor pack by Erom",
				modtype = 0,
				name = "Spring Cursors",
			},
		},
		{
			name = "Fields_Of_Isis.sd7",
			path = [[C:\Users\Ben\Documents\My Games\Spring\maps\]],
			modified = "1359168655",
			checksum = "254807271",
			archivedata = {
				mapfile = "maps/Fields_Of_Isis.smf",
				modtype = 3,
				name = "Fields_Of_Isis",
			},
		},
		{
			name = "maphelper.sdz",
			path = [[C:\Workspace\Maestro\the-maestros\base\]],
			modified = "1359176165",
			checksum = "3099124429",
			archivedata = {
				description = "Maps can use this archive for its lua tdf parser",
				modtype = 0,
				name = "Map Helper v1",
			},
		},
		{
			name = "Maptest10.sd7",
			path = [[C:\Workspace\Maestro\the-maestros\maps\]],
			modified = "1359246280",
			checksum = "1961467165",
			archivedata = {
				mapfile = "maps/Maptest10.smf",
				modtype = 3,
				name = "Maptest10",
			},
		},
		{
			name = "Small_Supreme_Battlefield_V2.sd7",
			path = [[C:\Workspace\Maestro\the-maestros\maps\]],
			modified = "1359246280",
			checksum = "2658974177",
			archivedata = {
				mapfile = "maps/Small Supreme Battlefield V2.smf",
				modtype = 3,
				name = "Small Supreme Battlefield V2",
			},
		},
		{
			name = "springcontent.sdz",
			path = [[C:\Workspace\Maestro\the-maestros\base\]],
			modified = "1359176165",
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
			path = [[C:\Workspace\Maestro\the-maestros\games\]],
			modified = "1359176229",
			checksum = "2358388784",
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
		{
			name = "Tutorial - Running Start r142.sdz",
			path = [[C:\Users\Ben\Documents\My Games\Spring\mods\]],
			modified = "1359168637",
			checksum = "551556308",
			archivedata = {
				description = "Mission Mutator",
				modtype = 1,
				name = "Tutorial - Running Start r142",
				shortname = "ZK",
				depend = {
					"Zero-K v1.1.1.1",
				},
			},
		},
	},

	brokenArchives = {  -- count = 0
	},
}

return archiveCache
