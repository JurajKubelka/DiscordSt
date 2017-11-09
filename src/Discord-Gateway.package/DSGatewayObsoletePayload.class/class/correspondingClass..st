accessing
correspondingClass: anInteger 
	"Return a class according to the code number."
	self subclassesDo: [ :aClass |
		aClass code = anInteger ifTrue: [ ^ aClass ] ].
	^ self unknownPayloadCodeError: anInteger.