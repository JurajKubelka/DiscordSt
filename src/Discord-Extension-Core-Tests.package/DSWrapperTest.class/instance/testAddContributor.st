tests
testAddContributor
	| wrapper user time |
	wrapper := self newInstanceToBeTested.
	user := self coreModelJsonMapping read: DSUser withMapping: #userMappingFor: on: self coreModelJsonMapping jsonUser readStream.
	user restApi: self newRestApi.
	time := DateAndTime now.
	wrapper addContributor: user.
	self assert: wrapper contributorsWithDateAndTimes first key equals: user.
	self assert: wrapper contributorsWithDateAndTimes first value class equals: DateAndTime.
	