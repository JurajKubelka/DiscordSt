visiting
visitDSSharedTonel: aDSSharedTonel 
	self playground monticelloPort 
		value: aDSSharedTonel.
	postExecutions add: [ 
		otherWindows add: (DSOpenTonelArchiveCommand new
			bytes: aDSSharedTonel bytes;
			execute;
			window) ].