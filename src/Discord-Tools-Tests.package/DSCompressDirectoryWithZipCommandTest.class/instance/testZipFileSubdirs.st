tests
testZipFileSubdirs
	| command dir |
	command := self classToTest new.
	dir := self createDirectoryWithSubDirectories.
	command directory: dir.
	command zipFile: FileLocator temp / 'archive.zip'.
	zipFile := command execute; zipFile.
	self assertSubDirectories.