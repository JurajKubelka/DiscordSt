printing
printOn: aStream
	"Print channel name if available"
	aStream << 'DM Channel: '.
	self recipients 
		do: [ :eachRecipient | aStream << eachRecipient username ]
		separatedBy: [ aStream << ', ' ]