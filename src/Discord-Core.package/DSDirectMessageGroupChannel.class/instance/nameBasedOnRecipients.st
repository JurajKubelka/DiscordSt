accessing - computed
nameBasedOnRecipients
	^ String streamContents: [ :aStream |
		self recipients 
			do: [ :eachRecipient | aStream << eachRecipient username ]
			separatedBy: [ aStream << ', ' ] ]