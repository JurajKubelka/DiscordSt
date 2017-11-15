tests
testAddContributorAt
	| wrapper user time |
	wrapper := self newInstanceToBeTested.
	user := self coreModelJsonMapping read: DSUser withMapping: #userMappingFor: on: self coreModelJsonMapping jsonUser readStream.
	user restApi: self newRestApi.
	time := DateAndTime now.
	wrapper addContributor: user at: time.
	self assert: wrapper contributorsWithDateAndTimes asArray equals: { user -> time }