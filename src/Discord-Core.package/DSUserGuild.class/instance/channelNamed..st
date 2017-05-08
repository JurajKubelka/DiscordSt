accessing
channelNamed: aString 
	"Return channel of a particular name."
	^ self channels detect: [ :eachChannel | eachChannel name = aString ]