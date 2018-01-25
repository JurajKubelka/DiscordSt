tests
testWriteUnicodeText
	| store file |
	store := FileSystem discordUnicodeMemory.
	file := store root / 'file.txt'.
	file writeStreamDo: [ :aStream | aStream nextPutAll: 'Someone uses ™?' ].
	self assert: file exists description: 'File should exists'.
	self assert: file contents equals: 'Someone uses ™?'.
	self assert: file size equals: 17.