tests
testAddContributorAt2
	| wrapper user time user2 time2 |
	wrapper := self newInstanceToBeTested.
	user := self coreModelJsonMapping read: DSUser withMapping: #userMappingFor: on: self coreModelJsonMapping jsonUser readStream.
	user restApi: self newApi.
	time := DateAndTime now.
	user2 := self coreModelJsonMapping read: DSUser withMapping: #userMappingFor: on: self coreModelJsonMapping jsonUser readStream.
	user2 restApi: self newApi.
	time2 := DateAndTime now.
	wrapper addContributor: user at: time.
	wrapper addContributor: user2 at: time2.
	self
		assert: wrapper contributorsWithDateAndTimes asArray
		equals:
			{(user -> time).
			(user2 -> time2)}