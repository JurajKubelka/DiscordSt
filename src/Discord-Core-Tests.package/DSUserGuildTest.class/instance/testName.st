tests
testName
	guild := self newUserGuild.
	guild name: self anyString.
	self assert: guild name equals: self anyString.