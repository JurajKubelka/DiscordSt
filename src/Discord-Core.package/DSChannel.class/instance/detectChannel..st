enumerating
detectChannel: conditionBlock 
	"Return a channel (itself) that satisfy the condition.
	Return nil, if there is no such channel.
	conditionBlock receives one argument, a channel, and return true if the channel satisfy the condition."
	^ (conditionBlock value: self) 
		ifTrue: [ self ]
		ifFalse: [nil ]