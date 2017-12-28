tests
testAddNameValue
	item := self classToTest new.
	item addName: 'test name' value: 'test value'.
	self assert: item infos size equals: 1.
	self assert: item infos first name equals: 'test name'.
	self assert: item infos first value equals: 'test value'.
	