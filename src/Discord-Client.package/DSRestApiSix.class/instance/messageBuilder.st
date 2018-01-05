public - channel
messageBuilder
	^ DSClientPostBuilder new
		restApi: self;
		yourself