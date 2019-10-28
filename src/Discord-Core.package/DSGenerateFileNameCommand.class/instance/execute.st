execute
execute
	| index |
	index := 0.
	[ 
		self fileName: (String streamContents: [ :aStream |
			self identityHash printOn:aStream.
			aStream << '-'.
			(existingFileNames size + 1 + index) printOn: aStream. 
			extension printOn: aStream ]).
		index := index + 1.
		self existingFileNames anySatisfy: [ :eachFileName | eachFileName = self fileName ]
	] whileTrue