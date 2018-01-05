printing
printOn: aStream
	aStream nextPutAll: 'Member: '.
	self user ifNotNil: [ :aUser | 
		aStream print: aUser username ].
	self nick ifNotNil: [ :nickString | 
		aStream 
			nextPutAll: ' with nick ';
			print: nickString ].
	