accessing
selectedChannel
	^ selectedChannel ifNil: [ selectedChannel := self selectedServer ifNotNil: [ :server | server textChannels first ] ]