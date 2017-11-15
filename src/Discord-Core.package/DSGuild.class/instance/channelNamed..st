enumerating
channelNamed: aString 
	"Return channel of a particular name."
	^ self channelSatisfying: [ :eachChannel | eachChannel name = aString ]