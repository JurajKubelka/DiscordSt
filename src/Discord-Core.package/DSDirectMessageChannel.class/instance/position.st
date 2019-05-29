position
position
	"Complement protocol of other channels."
	^ self lastMessageId 
		ifNil: [ 0 ] 
		ifNotNil: [ :anId | anId asNumber negated ]