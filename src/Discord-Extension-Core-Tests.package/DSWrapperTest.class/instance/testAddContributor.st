tests
testAddContributor
	| wrapper user time |
	wrapper := self newInstanceToBeTested.
	user := DSUser fromJsonObject: DSTestHelper fullUserJSONString api: self newApi.
	time := DateAndTime now.
	wrapper addContributor: user.
	self assert: wrapper contributorsWithDateAndTimes first key equals: user.
	self assert: wrapper contributorsWithDateAndTimes first value class equals: DateAndTime.
	