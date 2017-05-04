accessing
private: boolean
	"Set true if the channel is private, false otherwise.
	It should always be false for guild channels."
	boolean ifTrue: [ DSIncorrectValuesError signal: 'Guild channel should be always false.' ].
	^ self fieldsAt: 'is_private' put: boolean