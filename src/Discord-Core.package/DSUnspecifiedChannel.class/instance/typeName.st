accessing - convenience
typeName
	^ self type
		ifNil: [ 'Unknown' ]
		ifNotNil: #name