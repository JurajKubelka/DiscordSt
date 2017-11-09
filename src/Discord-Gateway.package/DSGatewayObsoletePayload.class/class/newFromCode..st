instance creation
newFromCode: anInteger 
	"Return new instance according to the code number."
	self subclassesDo: [ :aClass |
		aClass code = anInteger ifTrue: [ ^ aClass new code: anInteger; yourself ] ].
	^ self new code: anInteger; yourself
	"TODO ^ self unknownPayloadCodeError: anInteger."