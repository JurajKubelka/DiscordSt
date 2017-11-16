tests-accessing
testUrls
	command := self newObjectToTest.
	command urls: self anyString.
	self assert: command urls equals: self anyString.