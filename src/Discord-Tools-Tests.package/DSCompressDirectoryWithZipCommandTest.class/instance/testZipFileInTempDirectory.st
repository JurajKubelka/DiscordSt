tests
testZipFileInTempDirectory
	| command dir |
	command := self classToTest new.
	dir := self createDirectoryWithTwoFiles.
	command directory: dir.
	command zipFileInTempDirectory.
	zipFile := command execute; zipFile.
	self assert: zipFile isFile.
	self assert: zipFile exists.
	self deny: zipFile size isZero.