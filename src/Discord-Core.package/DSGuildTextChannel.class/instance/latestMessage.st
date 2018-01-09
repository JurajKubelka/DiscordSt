accessing - convenience
latestMessage
	"Return the latest message that is kept by the channel."
	^ self hasMessages 
		ifTrue: [ self messages detectMax: #id ]
		ifFalse: nil