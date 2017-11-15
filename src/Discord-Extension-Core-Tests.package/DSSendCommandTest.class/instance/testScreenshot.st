tests-accessing - wrapper
testScreenshot
	command := self newObject.
	command screenshot: self anyString.
	self assert: command screenshot equals: self anyString.