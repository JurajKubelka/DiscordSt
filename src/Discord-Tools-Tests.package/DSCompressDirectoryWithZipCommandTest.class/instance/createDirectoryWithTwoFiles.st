support
createDirectoryWithTwoFiles
	"Return a directory that includes two files."
	<return: #FileReference>
	| fileSystem dir file1 file2 |
	fileSystem := FileSystem memory.
	dir := (fileSystem root / 'dir1') createDirectory.
	file1 := dir / 'file1.txt'.
	file1 writeStreamDo: [ :stream | stream << 'file 1 contents' ].
	file2 := dir / 'file2.txt'.
	file2 writeStreamDo: [ :stream | stream << 'file 2 contents' ].
	^ dir