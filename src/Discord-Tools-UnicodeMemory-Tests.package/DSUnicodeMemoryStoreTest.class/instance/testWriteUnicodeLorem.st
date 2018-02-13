tests
testWriteUnicodeLorem
	| store file |
	store := FileSystem discordUnicodeMemory.
	file := store root / 'file.txt'.
	file writeStreamDo: [ :aStream | aStream nextPutAll: (String loremIpsum: 800) ].
	self assert: file exists description: 'File should exists'.
	self assert: file contents size equals: 800.
	self assert: file size equals: 800.