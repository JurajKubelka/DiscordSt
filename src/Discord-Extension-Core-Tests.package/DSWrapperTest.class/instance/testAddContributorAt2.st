tests
testAddContributorAt2
	| wrapper user time user2 time2 |
	wrapper := self newInstanceToBeTested.
	user := DSUser fromJsonObject: DSTestHelper fullUserJSONString api: self newApi.
	time := DateAndTime now.
	user2 := DSUser fromJsonObject: DSTestHelper fullUserJSONString api: self newApi.
	time2 := DateAndTime now.
	wrapper addContributor: user at: time.
	wrapper addContributor: user2 at: time2.
	self
		assert: wrapper contributorsWithDateAndTimes asArray
		equals:
			{(user -> time).
			(user2 -> time2)}