tests
testAddContributorAt
	| wrapper user time |
	wrapper := self newInstanceToBeTested.
	user := DSUser fromJsonObject: DSTestHelper fullUserJSONString api: self newApi.
	time := DateAndTime now.
	wrapper addContributor: user at: time.
	self assert: wrapper contributorsWithDateAndTimes asArray equals: { user -> time }