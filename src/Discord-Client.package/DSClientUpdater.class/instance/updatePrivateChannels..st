private - updating
updatePrivateChannels: aDSChannels 
	aDSChannels allChannelsDo: [ :eachChannel | 
		eachChannel restApi: self client ].
	self client privateChannels: aDSChannels.