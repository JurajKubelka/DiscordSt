tests-accessing
testUrls
	command := self newCommand.
	command urls: self anyString.
	self assert: command urls equals: self anyString.