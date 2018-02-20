actions
nextAction
	bytes ifNotNil: [ 
		self isRecording ifFalse: [ ^ self show ] ].
	self isRecording ifFalse: [ ^ self start ] ifTrue: [ ^ self stop ].