tests - event
testResumeEventMappingFor
	| result jsonResult jsonString |
	jsonString := self classToTest jsonResumeEvent.
	result := self read: jsonString as: DSGatewayResumeEvent mappedTo: #resumeEventMappingFor:.
	self assert: result class equals: DSGatewayResumeEvent.
	self assert: result token equals: 'randomstring'.
	self assert: result sessionId equals: 'evenmorerandomstring'.
	self assert: result sequenceNumber equals: 1337.
	jsonResult := self write: result mappedTo: #resumeEventMappingFor:.
	self assert: jsonResult equals: jsonString.