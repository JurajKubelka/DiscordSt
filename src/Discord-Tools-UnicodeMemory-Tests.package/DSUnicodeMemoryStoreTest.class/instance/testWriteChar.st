tests
testWriteChar
	| store file |
	store := FileSystem discordUnicodeMemory.
	file := store root / 'file.txt'.
	file writeStreamDo: [ :aStream | aStream nextPut: $a ].
	self assert: file exists description: 'File should exists'.
	self assert: file size equals: 1.
	self assert: file contents equals: 'a'.