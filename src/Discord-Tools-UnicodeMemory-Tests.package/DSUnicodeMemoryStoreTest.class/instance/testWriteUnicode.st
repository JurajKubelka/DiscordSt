tests
testWriteUnicode
	| store file |
	store := FileSystem discordUnicodeMemory.
	file := store root / 'file.txt'.
	file writeStreamDo: [ :aStream | aStream nextPut: $™ ].
	self assert: file exists description: 'File should exists'.
	self assert: file contents equals: '™'.
	self assert: file size equals: 3.