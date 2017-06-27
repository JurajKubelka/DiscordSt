tests-accessing - wrapper
testScreenshot
	command := self newCommand.
	command screenshot: self anyString.
	self assert: command screenshot equals: self anyString.