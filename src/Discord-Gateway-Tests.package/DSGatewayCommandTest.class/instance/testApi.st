tests
testApi
	command := self newCommand.
	command api: self.
	self assert: command api equals: self.