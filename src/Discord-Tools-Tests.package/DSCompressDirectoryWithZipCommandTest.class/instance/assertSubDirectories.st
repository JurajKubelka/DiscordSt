asserting
assertSubDirectories
	| members extractedDir |
	self assert: zipFile exists description: 'ZIP file does NOT exist'.
	self assert: zipFile isFile description: 'ZIP file is NOT file'.
	self deny: zipFile size isZero description: 'ZIP file size is zero.'.
	self flag: 'ZipArchive isZipArchive: zipFile does not work on Pharo 7.0'.
	(Smalltalk version = 'Pharo7.0alpha') ifFalse: [ 
		self 
			assert: (ZipArchive isZipArchive: zipFile) 
			description: 'ZIP file is NOT ZIP Archive (', zipFile fullName, ', size=', zipFile size asString, ')' ].
	members :=  ZipArchive new 
						readFrom: zipFile;
						members.
	self assert: members size equals: 4.
	self assert: members first fileName equals: 'dir1/file1.txt'.
	self assert: members second fileName equals: 'dir1/file2.txt'.
	self assert: members third fileName equals: 'dir2/file3.txt'.
	self assert: members fourth fileName equals: 'dir2/file4.txt'.
	extractedDir := rootDir / 'extracted-zip'.
	extractedDir createDirectory.
	ZipArchive new
		readFrom: zipFile;
		extractAllTo: extractedDir.
	self assert: extractedDir children size equals: 2.
	self assert: extractedDir allChildren size equals: 7.
	self assert: extractedDir children size equals: 2.
	self assert: extractedDir children first basename equals: 'dir1'.
	self assert: extractedDir children second basename equals: 'dir2'.
	self assert: extractedDir children first children second basename equals: 'file2.txt'.
	self assert: extractedDir children first children second contents equals: 'file 2 contents'.
	self assert: extractedDir children first children first basename equals: 'file1.txt'.
	self assert: extractedDir children first children first contents equals: 'file 1 contents with ™'.