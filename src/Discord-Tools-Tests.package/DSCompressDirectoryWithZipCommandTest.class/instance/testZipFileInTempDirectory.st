tests
testZipFileInTempDirectory
	| command dir result |
	command := self classToTest new.
	dir := self createDirectoryWithTwoFiles.
	command directory: dir.
	command zipFileInTempDirectory.
	result := command execute; zipFile.
	self assert: result isFile.
	self assert: result exists.
	self deny: result size isZero.
	result ensureDelete.