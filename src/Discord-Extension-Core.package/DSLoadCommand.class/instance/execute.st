execute
execute
	| channel message server |
	self loginIfNecessary.
	server := self client servers detect: [ :eachServer | eachServer id = self guildId ] ifNone: [ nil ].
	server ifNil: [ ^ self inform: 'Cannot find corresponding server (guild).' ].
	channel := server channels detect: [ :eachChannel | eachChannel id = self channelId ] ifNone: [ nil ].
	channel ifNil: [ ^ self inform: 'Cannot find corresponding channel.' ].
	message := channel messages detect: [ :eachMessage | eachMessage includesFuelId: self fuelId ] ifNone: [ nil ].
	message ifNil: [ ^ self inform: 'Cannot find corresponding message.' ].
	message isFuelObject ifTrue: [ message materializeObjectInAWrapper inspect ].
	message isFuelStack ifTrue: [ message openInDebugger ].
	^ message