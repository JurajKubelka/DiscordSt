tests
testPrintString
	guild := self newUserGuild.
	guild name: self anyString.
	self assert: guild printString equals: 'User Guild: ', self anyString.