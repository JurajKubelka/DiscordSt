tests-accessing
testUrls
	command := self newObject.
	command urls: self anyString.
	self assert: command urls equals: self anyString.