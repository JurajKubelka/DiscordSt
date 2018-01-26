accessing
initialize
	super initialize.
	fileSystem := FileSystem disk.
	rootDirectory := self uniqueRootDirectory.
	rootDirectory ensureCreateDirectory.