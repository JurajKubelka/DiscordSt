tests - basic
testDateAndTimeMappingForNil
	| result jsonResult jsonString |
	jsonString := 'null'.
	result := self read: jsonString as: DateAndTime mappedTo: #dateAndTimeMappingFor:.
	self assert: result isNil.
	jsonResult := self write: result mappedTo: #dateAndTimeMappingFor:.
	self assert: jsonResult equals: jsonString.