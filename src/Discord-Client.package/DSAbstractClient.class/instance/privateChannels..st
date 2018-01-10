accessing
privateChannels: aDSChannels
	privateChannels := aDSChannels.
	aDSChannels allChannelsDo: [ :eachChannel | 
		eachChannel restApi: self restApi ].