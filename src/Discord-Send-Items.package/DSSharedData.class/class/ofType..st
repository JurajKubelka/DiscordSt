instance creation
ofType: aString 
	self allSubclassesDo: [ :eachSubclass | 
		eachSubclass typeName = aString ifTrue: [ ^ eachSubclass new ] ].
	self error: 'Unknown type. It should not happen.'.