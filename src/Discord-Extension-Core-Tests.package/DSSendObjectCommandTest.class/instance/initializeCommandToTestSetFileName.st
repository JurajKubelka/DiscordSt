initialization
initializeCommandToTestSetFileName
	command object: (ByteArray streamContents: [ :aStream | 
		128 timesRepeat: [ aStream nextPut: 255 atRandom  ] ]).