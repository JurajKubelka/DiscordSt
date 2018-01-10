private - updating
updatePrivateChannels: aDSChannels 
	aDSChannels allChannelsDo: [ :eachChannel | 
		eachChannel restApi: self client restApi ].
	self client privateChannels: aDSChannels.