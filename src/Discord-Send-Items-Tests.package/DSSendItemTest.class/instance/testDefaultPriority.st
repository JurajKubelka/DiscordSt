tests
testDefaultPriority
	item := self classToTest new.
	self assert: item priority equals: item defaultPriority.