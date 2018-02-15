execute
execute
	| decodedData |
	self informAboutStartingLoading.
	decodedData := self decodedData.
	self downloadContents: decodedData.
	self displayToUser: decodedData.
	self informAboutFinishedLoading.