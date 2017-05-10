tests
testExecute
	self startZnServer.
	results := OrderedCollection new.
	command := self newCommand.
	command api: self.
	command execute.
	self assert: results size equals: 1. 