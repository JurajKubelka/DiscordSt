tests-accessing - wrapper
testDescription
	command := self newObject.
	command description: self anyString.
	self assert: command description equals: self anyString.