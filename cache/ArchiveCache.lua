local archiveCache = {

	internalver = 9,

	archives = {  -- count = 4
		{
			name = "bitmaps.sdz",
			path = [[C:\Program Files (x86)\Spring\base\spring\]],
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
			path = [[C:\Program Files (x86)\Spring\base\]],
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
			path = [[C:\Program Files (x86)\Spring\base\]],
			modified = "1346357261",
			checksum = "3099124429",
			archivedata = {
				description = "Maps can use this archive for its lua tdf parser",
				modtype = 0,
				name = "Map Helper v1",
			},
		},
		{
			name = "springcontent.sdz",
			path = [[C:\Program Files (x86)\Spring\base\]],
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
	},

	brokenArchives = {  -- count = 0
	},
}

return archiveCache
