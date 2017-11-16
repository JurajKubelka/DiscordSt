tests-accessing - wrapper
testScreenshot
	command := self newObjectToTest.
	command screenshot: self anyString.
	self assert: command screenshot equals: self anyString.