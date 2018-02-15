accessing
selectedChannel: aDSChannel 
	self selectedServer 
		ifNil: [ selectedChannels at: #noServer put: aDSChannel ]
		ifNotNil: [ :aServer | selectedChannels at: aServer id put: aDSChannel ]