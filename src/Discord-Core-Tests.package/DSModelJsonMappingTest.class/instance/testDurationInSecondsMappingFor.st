tests - basic
testDurationInSecondsMappingFor
	| result jsonResult jsonString |
	jsonString := '300234'.
	result := self read: jsonString as: #DurationInSeconds mappedTo: #durationInSecondsMappingFor:.
	self assert: result class equals: Duration.
	self assert: result equals: 300234 seconds.
	jsonResult := self write: result as: #DurationInSeconds mappedTo: #durationInSecondsMappingFor:.
	self assert: jsonResult equals: jsonString.