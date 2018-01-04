accessing
pharoFieldValue
	^ SystemVersion current version asString, 
		' [', Smalltalk lastUpdateString asString, 
		' (', (Smalltalk wordSize = 4 ifTrue: [ '32' ] ifFalse: [ '64' ]), 'bits)]'