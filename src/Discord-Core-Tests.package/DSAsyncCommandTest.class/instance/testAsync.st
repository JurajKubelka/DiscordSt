tests
testAsync
	command := self classToTest new async.
	self assert: command == command.