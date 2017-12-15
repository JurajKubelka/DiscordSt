accessing
channels
	^ self selectedServer
		ifNotNil: #channels
		ifNil: [ #() ]