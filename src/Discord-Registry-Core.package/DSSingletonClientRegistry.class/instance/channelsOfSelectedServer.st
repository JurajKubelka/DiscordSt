accessing
channelsOfSelectedServer
	^ self selectedServer 
		ifNotNil: #textChannels
		ifNil: [ DSChannels empty ]