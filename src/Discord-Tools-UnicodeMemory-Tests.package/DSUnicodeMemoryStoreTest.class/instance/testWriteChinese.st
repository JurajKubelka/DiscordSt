tests
testWriteChinese
	| store file |
	store := FileSystem discordUnicodeMemory.
	file := store root / 'file.txt'.
	file writeStreamDo: [ :aStream | aStream nextPutAll: '你好' ].
	self assert: file exists description: 'File should exists'.
	self assert: file size equals: 6.
	self assert: file contents equals: '你好'.