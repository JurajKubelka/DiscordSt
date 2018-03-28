accessing
isEnabled: aBoolean
	isEnabled = aBoolean ifTrue: [ ^ self ].
	isEnabled := aBoolean.
	self announceEnabledChanged: aBoolean.