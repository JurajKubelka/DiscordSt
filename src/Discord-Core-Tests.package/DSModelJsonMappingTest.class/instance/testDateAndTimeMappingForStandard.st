tests - basic
testDateAndTimeMappingForStandard
	"This JSON is the one returned by Discord."
	| result jsonResult jsonString |
	jsonString := '"2017-11-03T15:21:38.579000+00:00"'.
	result := self read: jsonString as: DateAndTime mappedTo: #dateAndTimeMappingFor:.
	self assert: result class equals: DateAndTime.
	self assert: result year equals: 2017.
	self assert: result month equals: 11.
	self assert: result dayOfMonth equals: 3.
	jsonResult := self write: result mappedTo: #dateAndTimeMappingFor:.
	self assert: jsonResult equals: '"2017-11-03T15:21:38.579+00:00"'.