execute
execute
	| decodedData |
	decodedData := self decodedData.
	self downloadContents: decodedData.
	self displayToUser: decodedData.