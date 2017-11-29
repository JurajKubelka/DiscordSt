tests
testZipFile
	| command fileSystem dir file1 file2 result |
	command := self classToTest new.
	fileSystem := FileSystem memory.
	dir := (fileSystem root / 'dir1') createDirectory.
	file1 := dir / 'file1.txt'.
	file1 writeStreamDo: [ :stream | stream << 'file 1 contents' ].
	file2 := dir / 'file2.txt'.
	file2 writeStreamDo: [ :stream | stream << 'file 2 contents' ].
	command directory: dir.
	command zipFile: FileLocator temp / 'archive.zip'.
	result := command execute; zipFile.
	self assert: result isFile.
	self assert: result exists.
	self deny: result size isZero.
	result ensureDelete.