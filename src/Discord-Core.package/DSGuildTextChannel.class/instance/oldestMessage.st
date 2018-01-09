accessing - convenience
oldestMessage
	"Return the oldest message that is kept by the channel."
	^ self hasMessages 
		ifTrue: [ self messages detectMin: #id ]
		ifFalse: nil