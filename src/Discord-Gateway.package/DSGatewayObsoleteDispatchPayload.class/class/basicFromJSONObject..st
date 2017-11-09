private
basicFromJSONObject: json 
	"Find a corresponding subclass according to t key (event name),
	and create the instance."
	| eventName |
	eventName := (json at: #t ifAbsent: [ ^ self unsetEventName: json ]).
	self subclassesDo: [ :aClass | 
		aClass eventName = eventName ifTrue: [ ^ aClass new initializeUsingJsonObject: json ] ].
	^ self new initializeUsingJsonObject: json
	"^ self unknownEventName: json."