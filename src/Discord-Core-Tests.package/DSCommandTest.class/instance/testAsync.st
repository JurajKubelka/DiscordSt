tests
testAsync
	command := self classToTest new async.
	self assert: command class equals: DSAsyncCommand.
	self assert: command command class equals: self classToTest.
	