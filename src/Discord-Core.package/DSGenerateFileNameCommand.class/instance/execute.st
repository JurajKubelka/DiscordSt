execute
execute
	| index |
	index := 0.
	[ 
		self fileName: (String streamContents: [ :aStream |
			aStream << self identityHash << '-' << (existingFileNames size + 1 + index) << extension ]).
		index := index + 1.
		self existingFileNames anySatisfy: [ :eachFileName | eachFileName = self fileName ]
	] whileTrue