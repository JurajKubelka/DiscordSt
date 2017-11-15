converting
asSpecifiedChannel
	^ self type 
		ifNotNil: [ :aType | aType asSpecifiedChannel: self ]
		ifNil: #yourself