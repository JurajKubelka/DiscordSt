tests
testIcon
	guild := self newUserGuild.
	guild icon: self anyString.
	self assert: guild icon equals: self anyString.