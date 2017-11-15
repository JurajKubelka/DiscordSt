accessing
pharoFieldValue
	"Return a string that represents Pharo version."
	^ SystemVersion current version asString, 
		' - ', SystemVersion current highestUpdate asString, 
		' (', (Smalltalk wordSize = 4 ifTrue: [ '32' ] ifFalse: [ '64' ]), 'bits)'