private
iconFor: aDSMessage 
	"Return icon that identifies the message in a list."
	aDSMessage isFuelStack ifTrue: [ ^ #smallDebugIt asIcon ].
	aDSMessage isFuelObject ifTrue: [ ^ #smallInspectIt asIcon ].
	^ #empty asIcon