tests
testId
	guild := self newUserGuild.
	guild id: self anyString.
	self assert: guild id equals: self anyString.