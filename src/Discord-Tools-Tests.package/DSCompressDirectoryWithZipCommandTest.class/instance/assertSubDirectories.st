asserting
assertSubDirectories
	| members memory |
	self assert: zipFile isFile.
	self assert: zipFile exists.
	self deny: zipFile size isZero.
	self assert: (ZipArchive isZipArchive: zipFile).
	members :=  ZipArchive new 
						readFrom: zipFile;
						members.
	self assert: members size equals: 4.
	self assert: members first fileName equals: 'dir1/file1.txt'.
	self assert: members second fileName equals: 'dir1/file2.txt'.
	self assert: members third fileName equals: 'dir2/file3.txt'.
	self assert: members fourth fileName equals: 'dir2/file4.txt'.
	memory := FileSystem memory.
	ZipArchive new
		readFrom: zipFile;
		extractAllTo: memory root.
	self assert: memory root children size equals: 2.
	self assert: memory root allChildren size equals: 7.
	self assert: memory root children size equals: 2.
	self assert: memory root children first basename equals: 'dir1'.
	self assert: memory root children second basename equals: 'dir2'.
